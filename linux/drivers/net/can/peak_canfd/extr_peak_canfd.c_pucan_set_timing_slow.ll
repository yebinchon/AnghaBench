; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_set_timing_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_set_timing_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.can_bittiming = type { i64, i64, i64, i64, i64 }
%struct.pucan_timing_slow = type { i32, i32, i32, i32, i32 }

@PUCAN_CMD_TIMING_SLOW = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"nominal: brp=%u tseg1=%u tseg2=%u sjw=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_canfd_priv*, %struct.can_bittiming*)* @pucan_set_timing_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pucan_set_timing_slow(%struct.peak_canfd_priv* %0, %struct.can_bittiming* %1) #0 {
  %3 = alloca %struct.peak_canfd_priv*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca %struct.pucan_timing_slow*, align 8
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %3, align 8
  store %struct.can_bittiming* %1, %struct.can_bittiming** %4, align 8
  %6 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %7 = call i32 @pucan_init_cmd(%struct.peak_canfd_priv* %6)
  %8 = load i32, i32* @PUCAN_CMD_TIMING_SLOW, align 4
  %9 = call %struct.pucan_timing_slow* @pucan_add_cmd(i32 %7, i32 %8)
  store %struct.pucan_timing_slow* %9, %struct.pucan_timing_slow** %5, align 8
  %10 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %11 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %12, 1
  %14 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %15 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @PUCAN_TSLOW_SJW_T(i64 %13, i32 %19)
  %21 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %22 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %24 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %27 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = sub nsw i64 %29, 1
  %31 = call i32 @PUCAN_TSLOW_TSEG1(i64 %30)
  %32 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %33 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %35 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @PUCAN_TSLOW_TSEG2(i64 %37)
  %39 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %40 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %42 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  %45 = call i32 @PUCAN_TSLOW_BRP(i64 %44)
  %46 = call i32 @cpu_to_le16(i32 %45)
  %47 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %48 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %50 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %49, i32 0, i32 0
  store i32 96, i32* %50, align 4
  %51 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %52 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %55 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %59 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %62 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %65 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @netdev_dbg(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %69 = call i32 @pucan_write_cmd(%struct.peak_canfd_priv* %68)
  ret i32 %69
}

declare dso_local %struct.pucan_timing_slow* @pucan_add_cmd(i32, i32) #1

declare dso_local i32 @pucan_init_cmd(%struct.peak_canfd_priv*) #1

declare dso_local i32 @PUCAN_TSLOW_SJW_T(i64, i32) #1

declare dso_local i32 @PUCAN_TSLOW_TSEG1(i64) #1

declare dso_local i32 @PUCAN_TSLOW_TSEG2(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @PUCAN_TSLOW_BRP(i64) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pucan_write_cmd(%struct.peak_canfd_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
