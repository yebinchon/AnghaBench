; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_pf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_pf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }

@GLGEN_RSTAT = common dso_local global i32 0, align 4
@GLGEN_RSTAT_DEVSTATE_M = common dso_local global i64 0, align 8
@GLNVM_ULD = common dso_local global i32 0, align 4
@ICE_RESET_DONE_MASK = common dso_local global i64 0, align 8
@ICE_ERR_RESET_FAILED = common dso_local global i32 0, align 4
@PFGEN_CTRL = common dso_local global i32 0, align 4
@PFGEN_CTRL_PFSWR_M = common dso_local global i64 0, align 8
@ICE_PF_RESET_WAIT_COUNT = common dso_local global i64 0, align 8
@ICE_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PF reset polling failed to complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*)* @ice_pf_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_pf_reset(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  %6 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %7 = load i32, i32* @GLGEN_RSTAT, align 4
  %8 = call i64 @rd32(%struct.ice_hw* %6, i32 %7)
  %9 = load i64, i64* @GLGEN_RSTAT_DEVSTATE_M, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %14 = load i32, i32* @GLNVM_ULD, align 4
  %15 = call i64 @rd32(%struct.ice_hw* %13, i32 %14)
  %16 = load i64, i64* @ICE_RESET_DONE_MASK, align 8
  %17 = and i64 %15, %16
  %18 = load i64, i64* @ICE_RESET_DONE_MASK, align 8
  %19 = xor i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %12, %1
  %22 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %23 = call i64 @ice_check_reset(%struct.ice_hw* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ICE_ERR_RESET_FAILED, align 4
  store i32 %26, i32* %2, align 4
  br label %66

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %66

28:                                               ; preds = %12
  %29 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %30 = load i32, i32* @PFGEN_CTRL, align 4
  %31 = call i64 @rd32(%struct.ice_hw* %29, i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %33 = load i32, i32* @PFGEN_CTRL, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @PFGEN_CTRL_PFSWR_M, align 8
  %36 = or i64 %34, %35
  %37 = call i32 @wr32(%struct.ice_hw* %32, i32 %33, i64 %36)
  store i64 0, i64* %4, align 8
  br label %38

38:                                               ; preds = %53, %28
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @ICE_PF_RESET_WAIT_COUNT, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %44 = load i32, i32* @PFGEN_CTRL, align 4
  %45 = call i64 @rd32(%struct.ice_hw* %43, i32 %44)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @PFGEN_CTRL_PFSWR_M, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %56

51:                                               ; preds = %42
  %52 = call i32 @mdelay(i32 1)
  br label %53

53:                                               ; preds = %51
  %54 = load i64, i64* %4, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %38

56:                                               ; preds = %50, %38
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @ICE_PF_RESET_WAIT_COUNT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %62 = load i32, i32* @ICE_DBG_INIT, align 4
  %63 = call i32 @ice_debug(%struct.ice_hw* %61, i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ICE_ERR_RESET_FAILED, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %60, %27, %25
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i64 @ice_check_reset(%struct.ice_hw*) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
