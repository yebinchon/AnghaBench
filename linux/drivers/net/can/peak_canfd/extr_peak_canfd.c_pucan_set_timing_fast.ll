; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_set_timing_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_set_timing_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { i32 }
%struct.can_bittiming = type { i64, i64, i64, i64, i64 }
%struct.pucan_timing_fast = type { i32, i32, i32, i32 }

@PUCAN_CMD_TIMING_FAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"data: brp=%u tseg1=%u tseg2=%u sjw=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_canfd_priv*, %struct.can_bittiming*)* @pucan_set_timing_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pucan_set_timing_fast(%struct.peak_canfd_priv* %0, %struct.can_bittiming* %1) #0 {
  %3 = alloca %struct.peak_canfd_priv*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca %struct.pucan_timing_fast*, align 8
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %3, align 8
  store %struct.can_bittiming* %1, %struct.can_bittiming** %4, align 8
  %6 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %7 = call i32 @pucan_init_cmd(%struct.peak_canfd_priv* %6)
  %8 = load i32, i32* @PUCAN_CMD_TIMING_FAST, align 4
  %9 = call %struct.pucan_timing_fast* @pucan_add_cmd(i32 %7, i32 %8)
  store %struct.pucan_timing_fast* %9, %struct.pucan_timing_fast** %5, align 8
  %10 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %11 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i32 @PUCAN_TFAST_SJW(i64 %13)
  %15 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %16 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %18 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %21 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @PUCAN_TFAST_TSEG1(i64 %24)
  %26 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %27 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %29 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = call i32 @PUCAN_TFAST_TSEG2(i64 %31)
  %33 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %34 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %36 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = call i32 @PUCAN_TFAST_BRP(i64 %38)
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %42 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %44 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %47 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %51 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %54 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %57 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @netdev_dbg(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %61 = call i32 @pucan_write_cmd(%struct.peak_canfd_priv* %60)
  ret i32 %61
}

declare dso_local %struct.pucan_timing_fast* @pucan_add_cmd(i32, i32) #1

declare dso_local i32 @pucan_init_cmd(%struct.peak_canfd_priv*) #1

declare dso_local i32 @PUCAN_TFAST_SJW(i64) #1

declare dso_local i32 @PUCAN_TFAST_TSEG1(i64) #1

declare dso_local i32 @PUCAN_TFAST_TSEG2(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @PUCAN_TFAST_BRP(i64) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pucan_write_cmd(%struct.peak_canfd_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
