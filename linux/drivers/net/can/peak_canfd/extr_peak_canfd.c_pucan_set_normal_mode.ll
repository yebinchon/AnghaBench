; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_set_normal_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_set_normal_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PUCAN_CMD_NORMAL_MODE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_canfd_priv*)* @pucan_set_normal_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pucan_set_normal_mode(%struct.peak_canfd_priv* %0) #0 {
  %2 = alloca %struct.peak_canfd_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %2, align 8
  %4 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %2, align 8
  %5 = call i32 @pucan_init_cmd(%struct.peak_canfd_priv* %4)
  %6 = load i32, i32* @PUCAN_CMD_NORMAL_MODE, align 4
  %7 = call i32 @pucan_add_cmd(i32 %5, i32 %6)
  %8 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %2, align 8
  %9 = call i32 @pucan_write_cmd(%struct.peak_canfd_priv* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %14 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %2, align 8
  %15 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @pucan_add_cmd(i32, i32) #1

declare dso_local i32 @pucan_init_cmd(%struct.peak_canfd_priv*) #1

declare dso_local i32 @pucan_write_cmd(%struct.peak_canfd_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
