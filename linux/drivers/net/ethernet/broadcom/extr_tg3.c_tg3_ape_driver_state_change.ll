; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_ape_driver_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_ape_driver_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENABLE_APE = common dso_local global i32 0, align 4
@TG3_APE_HOST_HEARTBEAT_COUNT = common dso_local global i32 0, align 4
@TG3_APE_HOST_SEG_SIG = common dso_local global i32 0, align 4
@APE_HOST_SEG_SIG_MAGIC = common dso_local global i32 0, align 4
@TG3_APE_HOST_SEG_LEN = common dso_local global i32 0, align 4
@APE_HOST_SEG_LEN_MAGIC = common dso_local global i32 0, align 4
@TG3_APE_HOST_INIT_COUNT = common dso_local global i32 0, align 4
@TG3_APE_HOST_DRIVER_ID = common dso_local global i32 0, align 4
@TG3_MAJ_NUM = common dso_local global i32 0, align 4
@TG3_MIN_NUM = common dso_local global i32 0, align 4
@TG3_APE_HOST_BEHAVIOR = common dso_local global i32 0, align 4
@APE_HOST_BEHAV_NO_PHYLOCK = common dso_local global i32 0, align 4
@TG3_APE_HOST_DRVR_STATE = common dso_local global i32 0, align 4
@TG3_APE_HOST_DRVR_STATE_START = common dso_local global i32 0, align 4
@APE_EVENT_STATUS_STATE_START = common dso_local global i32 0, align 4
@WOL_ENABLE = common dso_local global i32 0, align 4
@TG3_APE_HOST_WOL_SPEED = common dso_local global i32 0, align 4
@TG3_APE_HOST_WOL_SPEED_AUTO = common dso_local global i32 0, align 4
@TG3_APE_HOST_DRVR_STATE_WOL = common dso_local global i32 0, align 4
@TG3_APE_HOST_DRVR_STATE_UNLOAD = common dso_local global i32 0, align 4
@APE_EVENT_STATUS_STATE_UNLOAD = common dso_local global i32 0, align 4
@APE_EVENT_STATUS_DRIVER_EVNT = common dso_local global i32 0, align 4
@APE_EVENT_STATUS_STATE_CHNGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_ape_driver_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_ape_driver_state_change(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = load i32, i32* @ENABLE_APE, align 4
  %9 = call i64 @tg3_flag(%struct.tg3* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %89

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %79 [
    i32 129, label %14
    i32 128, label %53
  ]

14:                                               ; preds = %12
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = load i32, i32* @TG3_APE_HOST_HEARTBEAT_COUNT, align 4
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = getelementptr inbounds %struct.tg3, %struct.tg3* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = call i32 @tg3_ape_write32(%struct.tg3* %15, i32 %16, i32 %19)
  %22 = load %struct.tg3*, %struct.tg3** %3, align 8
  %23 = load i32, i32* @TG3_APE_HOST_SEG_SIG, align 4
  %24 = load i32, i32* @APE_HOST_SEG_SIG_MAGIC, align 4
  %25 = call i32 @tg3_ape_write32(%struct.tg3* %22, i32 %23, i32 %24)
  %26 = load %struct.tg3*, %struct.tg3** %3, align 8
  %27 = load i32, i32* @TG3_APE_HOST_SEG_LEN, align 4
  %28 = load i32, i32* @APE_HOST_SEG_LEN_MAGIC, align 4
  %29 = call i32 @tg3_ape_write32(%struct.tg3* %26, i32 %27, i32 %28)
  %30 = load %struct.tg3*, %struct.tg3** %3, align 8
  %31 = load i32, i32* @TG3_APE_HOST_INIT_COUNT, align 4
  %32 = call i32 @tg3_ape_read32(%struct.tg3* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.tg3*, %struct.tg3** %3, align 8
  %34 = load i32, i32* @TG3_APE_HOST_INIT_COUNT, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = call i32 @tg3_ape_write32(%struct.tg3* %33, i32 %34, i32 %36)
  %38 = load %struct.tg3*, %struct.tg3** %3, align 8
  %39 = load i32, i32* @TG3_APE_HOST_DRIVER_ID, align 4
  %40 = load i32, i32* @TG3_MAJ_NUM, align 4
  %41 = load i32, i32* @TG3_MIN_NUM, align 4
  %42 = call i32 @APE_HOST_DRIVER_ID_MAGIC(i32 %40, i32 %41)
  %43 = call i32 @tg3_ape_write32(%struct.tg3* %38, i32 %39, i32 %42)
  %44 = load %struct.tg3*, %struct.tg3** %3, align 8
  %45 = load i32, i32* @TG3_APE_HOST_BEHAVIOR, align 4
  %46 = load i32, i32* @APE_HOST_BEHAV_NO_PHYLOCK, align 4
  %47 = call i32 @tg3_ape_write32(%struct.tg3* %44, i32 %45, i32 %46)
  %48 = load %struct.tg3*, %struct.tg3** %3, align 8
  %49 = load i32, i32* @TG3_APE_HOST_DRVR_STATE, align 4
  %50 = load i32, i32* @TG3_APE_HOST_DRVR_STATE_START, align 4
  %51 = call i32 @tg3_ape_write32(%struct.tg3* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @APE_EVENT_STATUS_STATE_START, align 4
  store i32 %52, i32* %5, align 4
  br label %80

53:                                               ; preds = %12
  %54 = load %struct.tg3*, %struct.tg3** %3, align 8
  %55 = getelementptr inbounds %struct.tg3, %struct.tg3* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @device_may_wakeup(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load %struct.tg3*, %struct.tg3** %3, align 8
  %62 = load i32, i32* @WOL_ENABLE, align 4
  %63 = call i64 @tg3_flag(%struct.tg3* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.tg3*, %struct.tg3** %3, align 8
  %67 = load i32, i32* @TG3_APE_HOST_WOL_SPEED, align 4
  %68 = load i32, i32* @TG3_APE_HOST_WOL_SPEED_AUTO, align 4
  %69 = call i32 @tg3_ape_write32(%struct.tg3* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @TG3_APE_HOST_DRVR_STATE_WOL, align 4
  store i32 %70, i32* %6, align 4
  br label %73

71:                                               ; preds = %60, %53
  %72 = load i32, i32* @TG3_APE_HOST_DRVR_STATE_UNLOAD, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %65
  %74 = load %struct.tg3*, %struct.tg3** %3, align 8
  %75 = load i32, i32* @TG3_APE_HOST_DRVR_STATE, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @tg3_ape_write32(%struct.tg3* %74, i32 %75, i32 %76)
  %78 = load i32, i32* @APE_EVENT_STATUS_STATE_UNLOAD, align 4
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %12
  br label %89

80:                                               ; preds = %73, %14
  %81 = load i32, i32* @APE_EVENT_STATUS_DRIVER_EVNT, align 4
  %82 = load i32, i32* @APE_EVENT_STATUS_STATE_CHNGE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load %struct.tg3*, %struct.tg3** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @tg3_ape_send_event(%struct.tg3* %86, i32 %87)
  br label %89

89:                                               ; preds = %80, %79, %11
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_ape_write32(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_ape_read32(%struct.tg3*, i32) #1

declare dso_local i32 @APE_HOST_DRIVER_ID_MAGIC(i32, i32) #1

declare dso_local i32 @device_may_wakeup(i32*) #1

declare dso_local i32 @tg3_ape_send_event(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
