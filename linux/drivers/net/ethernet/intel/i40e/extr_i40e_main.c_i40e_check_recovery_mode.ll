; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_check_recovery_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_check_recovery_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@I40E_GL_FWSTS = common dso_local global i32 0, align 4
@I40E_GL_FWSTS_FWS1B_MASK = common dso_local global i64 0, align 8
@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK = common dso_local global i64 0, align 8
@I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK = common dso_local global i64 0, align 8
@I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_TRANSITION_MASK = common dso_local global i64 0, align 8
@I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_NVM_MASK = common dso_local global i64 0, align 8
@I40E_MAC_X722 = common dso_local global i64 0, align 8
@I40E_X722_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK = common dso_local global i64 0, align 8
@I40E_X722_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Firmware recovery mode detected. Limiting functionality.\0A\00", align 1
@.str.1 = private unnamed_addr constant [103 x i8] c"Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\0A\00", align 1
@__I40E_RECOVERY_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Reinitializing in normal mode with full functionality.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*)* @i40e_check_recovery_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_check_recovery_mode(%struct.i40e_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %6, i32 0, i32 2
  %8 = load i32, i32* @I40E_GL_FWSTS, align 4
  %9 = call i64 @rd32(%struct.TYPE_6__* %7, i32 %8)
  %10 = load i64, i64* @I40E_GL_FWSTS_FWS1B_MASK, align 8
  %11 = and i64 %9, %10
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @I40E_MAC_XL710, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_TRANSITION_MASK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_NVM_MASK, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %31, %27, %23, %19
  %36 = phi i1 [ true, %27 ], [ true, %23 ], [ true, %19 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @I40E_MAC_X722, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @I40E_X722_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @I40E_X722_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i1 [ true, %46 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %38
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %62 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @dev_notice(i32* %64, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %67 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = call i32 @dev_notice(i32* %69, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @__I40E_RECOVERY_MODE, align 4
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @set_bit(i32 %71, i32 %74)
  store i32 1, i32* %2, align 4
  br label %90

76:                                               ; preds = %57
  %77 = load i32, i32* @__I40E_RECOVERY_MODE, align 4
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @test_and_clear_bit(i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %85 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i32 @dev_info(i32* %87, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %83, %76
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %60
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @rd32(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
