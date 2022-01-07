; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_ptp.c_ravb_ptp_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_ptp.c_ravb_ptp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ravb_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ravb_ptp_perout*, i32 }
%struct.ravb_ptp_perout = type { i32, i64 }
%struct.ptp_clock_event = type { i32, i64, i32 }

@GIS = common dso_local global i32 0, align 4
@GIC = common dso_local global i32 0, align 4
@GIS_PTCF = common dso_local global i32 0, align 4
@PTP_CLOCK_EXTTS = common dso_local global i32 0, align 4
@GCPT = common dso_local global i32 0, align 4
@GIS_PTMF = common dso_local global i32 0, align 4
@GIS_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ravb_ptp_interrupt(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ravb_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptp_clock_event, align 8
  %6 = alloca %struct.ravb_ptp_perout*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ravb_private* %8, %struct.ravb_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @GIS, align 4
  %11 = call i32 @ravb_read(%struct.net_device* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @GIC, align 4
  %14 = call i32 @ravb_read(%struct.net_device* %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GIS_PTCF, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load i32, i32* @PTP_CLOCK_EXTTS, align 4
  %23 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %5, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* @GCPT, align 4
  %27 = call i32 @ravb_read(%struct.net_device* %25, i32 %26)
  %28 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %30 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ptp_clock_event(i32 %32, %struct.ptp_clock_event* %5)
  br label %34

34:                                               ; preds = %21, %1
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @GIS_PTMF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %41 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.ravb_ptp_perout*, %struct.ravb_ptp_perout** %42, align 8
  store %struct.ravb_ptp_perout* %43, %struct.ravb_ptp_perout** %6, align 8
  %44 = load %struct.ravb_ptp_perout*, %struct.ravb_ptp_perout** %6, align 8
  %45 = getelementptr inbounds %struct.ravb_ptp_perout, %struct.ravb_ptp_perout* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %39
  %49 = load %struct.ravb_ptp_perout*, %struct.ravb_ptp_perout** %6, align 8
  %50 = getelementptr inbounds %struct.ravb_ptp_perout, %struct.ravb_ptp_perout* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ravb_ptp_perout*, %struct.ravb_ptp_perout** %6, align 8
  %53 = getelementptr inbounds %struct.ravb_ptp_perout, %struct.ravb_ptp_perout* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 8
  %58 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %59 = load %struct.ravb_ptp_perout*, %struct.ravb_ptp_perout** %6, align 8
  %60 = getelementptr inbounds %struct.ravb_ptp_perout, %struct.ravb_ptp_perout* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ravb_ptp_update_compare(%struct.ravb_private* %58, i32 %61)
  br label %63

63:                                               ; preds = %48, %39
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @GIS_RESERVED, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* @GIS, align 4
  %71 = call i32 @ravb_write(%struct.net_device* %65, i32 %69, i32 %70)
  ret void
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ravb_read(%struct.net_device*, i32) #1

declare dso_local i32 @ptp_clock_event(i32, %struct.ptp_clock_event*) #1

declare dso_local i32 @ravb_ptp_update_compare(%struct.ravb_private*, i32) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
