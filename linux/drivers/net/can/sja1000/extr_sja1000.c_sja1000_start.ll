; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CAN_STATE_STOPPED = common dso_local global i64 0, align 8
@SJA1000_CDR = common dso_local global i32 0, align 4
@CDR_PELICAN = common dso_local global i32 0, align 4
@SJA1000_TXERR = common dso_local global i32 0, align 4
@SJA1000_RXERR = common dso_local global i32 0, align 4
@SJA1000_ECC = common dso_local global i32 0, align 4
@SJA1000_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sja1000_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1000_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sja1000_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.sja1000_priv* %5, %struct.sja1000_priv** %3, align 8
  %6 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %7 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CAN_STATE_STOPPED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @set_reset_mode(%struct.net_device* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %17 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %16, i32 0, i32 0
  %18 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %17, align 8
  %19 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %20 = load i32, i32* @SJA1000_CDR, align 4
  %21 = call i32 %18(%struct.sja1000_priv* %19, i32 %20)
  %22 = load i32, i32* @CDR_PELICAN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @chipset_init(%struct.net_device* %26)
  br label %28

28:                                               ; preds = %25, %15
  %29 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %30 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %29, i32 0, i32 1
  %31 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %30, align 8
  %32 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %33 = load i32, i32* @SJA1000_TXERR, align 4
  %34 = call i32 %31(%struct.sja1000_priv* %32, i32 %33, i32 0)
  %35 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %36 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %35, i32 0, i32 1
  %37 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %36, align 8
  %38 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %39 = load i32, i32* @SJA1000_RXERR, align 4
  %40 = call i32 %37(%struct.sja1000_priv* %38, i32 %39, i32 0)
  %41 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %42 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %41, i32 0, i32 0
  %43 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %42, align 8
  %44 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %45 = load i32, i32* @SJA1000_ECC, align 4
  %46 = call i32 %43(%struct.sja1000_priv* %44, i32 %45)
  %47 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %48 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %47, i32 0, i32 0
  %49 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %48, align 8
  %50 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %51 = load i32, i32* @SJA1000_IR, align 4
  %52 = call i32 %49(%struct.sja1000_priv* %50, i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @set_normal_mode(%struct.net_device* %53)
  ret void
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_reset_mode(%struct.net_device*) #1

declare dso_local i32 @chipset_init(%struct.net_device*) #1

declare dso_local i32 @set_normal_mode(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
