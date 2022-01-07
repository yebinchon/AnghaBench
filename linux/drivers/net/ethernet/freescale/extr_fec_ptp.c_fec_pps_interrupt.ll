; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_ptp.c_fec_pps_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_ptp.c_fec_pps_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ptp_clock_event = type { i32 }

@FEC_T_TF_MASK = common dso_local global i32 0, align 4
@PTP_CLOCK_PPS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fec_pps_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_pps_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.fec_enet_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ptp_clock_event, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %13)
  store %struct.fec_enet_private* %14, %struct.fec_enet_private** %7, align 8
  %15 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %16 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %19 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @FEC_TCSR(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @FEC_T_TF_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %2
  %30 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %31 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %34 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @FEC_TCCR(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = call i32 @writel(i32 %32, i64 %38)
  br label %40

40:                                               ; preds = %49, %29
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %43 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @FEC_TCSR(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = call i32 @writel(i32 %41, i64 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %51 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @FEC_TCSR(i32 %53)
  %55 = add nsw i64 %52, %54
  %56 = call i32 @readl(i64 %55)
  %57 = load i32, i32* @FEC_T_TF_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %40, label %60

60:                                               ; preds = %49
  %61 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %62 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %65 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %69 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %67, %71
  %73 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %74 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @PTP_CLOCK_PPS, align 4
  %76 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %10, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %78 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ptp_clock_event(i32 %79, %struct.ptp_clock_event* %10)
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %81, i32* %3, align 4
  br label %84

82:                                               ; preds = %2
  %83 = load i32, i32* @IRQ_NONE, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %60
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @FEC_TCSR(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @FEC_TCCR(i32) #1

declare dso_local i32 @ptp_clock_event(i32, %struct.ptp_clock_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
