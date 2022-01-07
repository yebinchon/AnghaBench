; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ptp.c_e1000e_ptp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ptp.c_e1000e_ptp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.e1000_adapter = type { i32, i32*, %struct.TYPE_8__*, %struct.TYPE_9__, i32, %struct.TYPE_6__*, %struct.e1000_hw }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FLAG_HAS_HW_TIMESTAMP = common dso_local global i32 0, align 4
@e1000e_ptp_clock_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%pm\00", align 1
@TSYNCRXCTL = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_SYSCFI = common dso_local global i32 0, align 4
@e1000e_systim_overflow_work = common dso_local global i32 0, align 4
@E1000_SYSTIM_OVERFLOW_PERIOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"registered PHC clock\0A\00", align 1
@X86_FEATURE_ART = common dso_local global i32 0, align 4
@e1000e_phc_getcrosststamp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_ptp_init(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %4 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %4, i32 0, i32 6
  store %struct.e1000_hw* %5, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 1
  store i32* null, i32** %7, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @FLAG_HAS_HW_TIMESTAMP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %90

15:                                               ; preds = %1
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 3
  %18 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 bitcast (%struct.TYPE_9__* @e1000e_ptp_clock_info to i8*), i64 12, i1 false)
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 5
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snprintf(i32 %22, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %54 [
    i32 131, label %33
    i32 129, label %33
    i32 128, label %33
    i32 130, label %33
    i32 133, label %50
    i32 132, label %50
  ]

33:                                               ; preds = %15, %15, %15, %15
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 129
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @TSYNCRXCTL, align 4
  %41 = call i32 @er32(i32 %40)
  %42 = load i32, i32* @E1000_TSYNCRXCTL_SYSCFI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39, %33
  %46 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 23999999, i32* %48, align 8
  br label %55

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %15, %15, %49
  %51 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 599999999, i32* %53, align 8
  br label %55

54:                                               ; preds = %15
  br label %55

55:                                               ; preds = %54, %50, %45
  %56 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %56, i32 0, i32 4
  %58 = load i32, i32* @e1000e_systim_overflow_work, align 4
  %59 = call i32 @INIT_DELAYED_WORK(i32* %57, i32 %58)
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 4
  %62 = load i32, i32* @E1000_SYSTIM_OVERFLOW_PERIOD, align 4
  %63 = call i32 @schedule_delayed_work(i32* %61, i32 %62)
  %64 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %64, i32 0, i32 3
  %66 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = call i32* @ptp_clock_register(%struct.TYPE_9__* %65, i32* %69)
  %71 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @IS_ERR(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %55
  %79 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = call i32 @e_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %90

82:                                               ; preds = %55
  %83 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @e_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %14, %89, %78
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #2

declare dso_local i32 @er32(i32) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @schedule_delayed_work(i32*, i32) #2

declare dso_local i32* @ptp_clock_register(%struct.TYPE_9__*, i32*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @e_err(i8*) #2

declare dso_local i32 @e_info(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
