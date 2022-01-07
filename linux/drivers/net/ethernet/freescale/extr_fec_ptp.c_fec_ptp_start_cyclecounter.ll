; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_ptp.c_fec_ptp_start_cyclecounter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_ptp.c_fec_ptp_start_cyclecounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@FEC_T_INC_OFFSET = common dso_local global i32 0, align 4
@FEC_ATIME_INC = common dso_local global i64 0, align 8
@FEC_COUNTER_PERIOD = common dso_local global i32 0, align 4
@FEC_ATIME_EVT_PERIOD = common dso_local global i64 0, align 8
@FEC_T_CTRL_ENABLE = common dso_local global i32 0, align 4
@FEC_T_CTRL_PERIOD_RST = common dso_local global i32 0, align 4
@FEC_ATIME_CTRL = common dso_local global i64 0, align 8
@fec_ptp_read = common dso_local global i32 0, align 4
@FEC_CC_MULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fec_ptp_start_cyclecounter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %6)
  store %struct.fec_enet_private* %7, %struct.fec_enet_private** %3, align 8
  %8 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %9 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sdiv i32 1000000000, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %13 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %12, i32 0, i32 1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FEC_T_INC_OFFSET, align 4
  %18 = shl i32 %16, %17
  %19 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %20 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FEC_ATIME_INC, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load i32, i32* @FEC_COUNTER_PERIOD, align 4
  %26 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %27 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FEC_ATIME_EVT_PERIOD, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load i32, i32* @FEC_T_CTRL_ENABLE, align 4
  %33 = load i32, i32* @FEC_T_CTRL_PERIOD_RST, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %36 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FEC_ATIME_CTRL, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %42 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %41, i32 0, i32 2
  %43 = call i32 @memset(%struct.TYPE_3__* %42, i32 0, i32 16)
  %44 = load i32, i32* @fec_ptp_read, align 4
  %45 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %46 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = call i32 @CLOCKSOURCE_MASK(i32 31)
  %49 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %50 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %53 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 31, i32* %54, align 8
  %55 = load i32, i32* @FEC_CC_MULT, align 4
  %56 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %57 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %60 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %59, i32 0, i32 3
  %61 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %62 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %61, i32 0, i32 2
  %63 = call i32 (...) @ktime_get_real()
  %64 = call i32 @ktime_to_ns(i32 %63)
  %65 = call i32 @timecounter_init(i32* %60, %struct.TYPE_3__* %62, i32 %64)
  %66 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %67 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %66, i32 0, i32 1
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @CLOCKSOURCE_MASK(i32) #1

declare dso_local i32 @timecounter_init(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
