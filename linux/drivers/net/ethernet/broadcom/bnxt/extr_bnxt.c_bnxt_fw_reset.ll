; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BNXT_STATE_OPEN = common dso_local global i32 0, align 4
@BNXT_STATE_IN_FW_RESET = common dso_local global i32 0, align 4
@BNXT_STATE_FW_FATAL_COND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Firmware reset aborted, rc = %d\0A\00", align 1
@BNXT_FW_RESET_STATE_POLL_VF = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BNXT_FW_CAP_ERR_RECOVER_RELOAD = common dso_local global i32 0, align 4
@BNXT_FW_RESET_STATE_POLL_FW_DOWN = common dso_local global i32 0, align 4
@BNXT_FW_RESET_STATE_ENABLE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_fw_reset(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %7 = call i32 @bnxt_rtnl_lock_sp(%struct.bnxt* %6)
  %8 = load i32, i32* @BNXT_STATE_OPEN, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 5
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %109

13:                                               ; preds = %1
  %14 = load i32, i32* @BNXT_STATE_IN_FW_RESET, align 4
  %15 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 5
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %109, label %19

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  %20 = load i32, i32* @BNXT_STATE_IN_FW_RESET, align 4
  %21 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 5
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %25 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load i32, i32* @BNXT_STATE_FW_FATAL_COND, align 4
  %31 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 5
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %37 = call i32 @bnxt_get_registered_vfs(%struct.bnxt* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %29, %19
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %43 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @netdev_err(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @BNXT_STATE_IN_FW_RESET, align 4
  %48 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %49 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %48, i32 0, i32 5
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %52 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_close(i32 %53)
  br label %110

55:                                               ; preds = %38
  %56 = load i32, i32* %3, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = mul nsw i32 %59, 10
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %5, align 8
  %62 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %63 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %70 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %58
  %72 = load i32, i32* @BNXT_FW_RESET_STATE_POLL_VF, align 4
  %73 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %74 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %76 = load i32, i32* @HZ, align 4
  %77 = sdiv i32 %76, 10
  %78 = call i32 @bnxt_queue_fw_reset_work(%struct.bnxt* %75, i32 %77)
  br label %110

79:                                               ; preds = %55
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %82 = call i32 @bnxt_fw_reset_close(%struct.bnxt* %81)
  %83 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %84 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @BNXT_FW_CAP_ERR_RECOVER_RELOAD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load i32, i32* @BNXT_FW_RESET_STATE_POLL_FW_DOWN, align 4
  %91 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %92 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @HZ, align 4
  %94 = sdiv i32 %93, 10
  store i32 %94, i32* %4, align 4
  br label %105

95:                                               ; preds = %80
  %96 = load i32, i32* @BNXT_FW_RESET_STATE_ENABLE_DEV, align 4
  %97 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %98 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %100 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @HZ, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sdiv i32 %103, 10
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %95, %89
  %106 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @bnxt_queue_fw_reset_work(%struct.bnxt* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %13, %1
  br label %110

110:                                              ; preds = %109, %71, %41
  %111 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %112 = call i32 @bnxt_rtnl_unlock_sp(%struct.bnxt* %111)
  ret void
}

declare dso_local i32 @bnxt_rtnl_lock_sp(%struct.bnxt*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnxt_get_registered_vfs(%struct.bnxt*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @bnxt_queue_fw_reset_work(%struct.bnxt*, i32) #1

declare dso_local i32 @bnxt_fw_reset_close(%struct.bnxt*) #1

declare dso_local i32 @bnxt_rtnl_unlock_sp(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
