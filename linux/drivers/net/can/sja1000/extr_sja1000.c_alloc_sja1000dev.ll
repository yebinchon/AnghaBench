; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_alloc_sja1000dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_alloc_sja1000dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i8*, i32, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }

@SJA1000_ECHO_SKB_MAX = common dso_local global i32 0, align 4
@sja1000_bittiming_const = common dso_local global i32 0, align 4
@sja1000_set_bittiming = common dso_local global i32 0, align 4
@sja1000_set_mode = common dso_local global i32 0, align 4
@sja1000_get_berr_counter = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@CAN_CTRLMODE_PRESUME_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_sja1000dev(i32 %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sja1000_priv*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = add i64 48, %7
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @SJA1000_ECHO_SKB_MAX, align 4
  %11 = call %struct.net_device* @alloc_candev(i32 %9, i32 %10)
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.sja1000_priv* %17, %struct.sja1000_priv** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %20 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %19, i32 0, i32 3
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %22 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i32* @sja1000_bittiming_const, i32** %23, align 8
  %24 = load i32, i32* @sja1000_set_bittiming, align 4
  %25 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %26 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @sja1000_set_mode, align 4
  %29 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %30 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @sja1000_get_berr_counter, align 4
  %33 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %34 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %37 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CAN_CTRLMODE_PRESUME_ACK, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %48 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %51 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %50, i32 0, i32 1
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %15
  %56 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %57 = bitcast %struct.sja1000_priv* %56 to i8*
  %58 = getelementptr i8, i8* %57, i64 48
  %59 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %60 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %55, %15
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %62, %struct.net_device** %2, align 8
  br label %63

63:                                               ; preds = %61, %14
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %64
}

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
