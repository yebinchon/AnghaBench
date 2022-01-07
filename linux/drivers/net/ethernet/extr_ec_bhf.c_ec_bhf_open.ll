; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ec_bhf_priv = type { %struct.TYPE_5__, %struct.TYPE_4__, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.device = type { i32 }

@FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate rx buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate tx buffer\0A\00", align 1
@MII_MAC_FILT_FLAG = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@ec_bhf_timer_fun = common dso_local global i32 0, align 4
@polling_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ec_bhf_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_bhf_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ec_bhf_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ec_bhf_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.ec_bhf_priv* %8, %struct.ec_bhf_priv** %4, align 8
  %9 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %10 = call %struct.device* @PRIV_TO_DEV(%struct.ec_bhf_priv* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %12 = call i32 @ec_bhf_reset(%struct.ec_bhf_priv* %11)
  %13 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %14 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %14, i32 0, i32 0
  %16 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FIFO_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @ec_bhf_alloc_dma_mem(%struct.ec_bhf_priv* %13, %struct.TYPE_5__* %15, i32 %18, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %88

29:                                               ; preds = %1
  %30 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %31 = call i32 @ec_bhf_setup_rx_descs(%struct.ec_bhf_priv* %30)
  %32 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %33 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %33, i32 0, i32 4
  %35 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %36 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FIFO_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @ec_bhf_alloc_dma_mem(%struct.ec_bhf_priv* %32, %struct.TYPE_5__* %34, i32 %37, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %73

48:                                               ; preds = %29
  %49 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %50 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MII_MAC_FILT_FLAG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @iowrite8(i32 0, i64 %53)
  %55 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %56 = call i32 @ec_bhf_setup_tx_descs(%struct.ec_bhf_priv* %55)
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @netif_start_queue(%struct.net_device* %57)
  %59 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %60 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %59, i32 0, i32 1
  %61 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %62 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %63 = call i32 @hrtimer_init(%struct.TYPE_4__* %60, i32 %61, i32 %62)
  %64 = load i32, i32* @ec_bhf_timer_fun, align 4
  %65 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %66 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %69 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %68, i32 0, i32 1
  %70 = load i32, i32* @polling_frequency, align 4
  %71 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %72 = call i32 @hrtimer_start(%struct.TYPE_4__* %69, i32 %70, i32 %71)
  store i32 0, i32* %2, align 4
  br label %90

73:                                               ; preds = %45
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %76 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %80 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %4, align 8
  %84 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dma_free_coherent(%struct.device* %74, i32 %78, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %73, %26
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %48
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.ec_bhf_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device* @PRIV_TO_DEV(%struct.ec_bhf_priv*) #1

declare dso_local i32 @ec_bhf_reset(%struct.ec_bhf_priv*) #1

declare dso_local i32 @ec_bhf_alloc_dma_mem(%struct.ec_bhf_priv*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ec_bhf_setup_rx_descs(%struct.ec_bhf_priv*) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @ec_bhf_setup_tx_descs(%struct.ec_bhf_priv*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hrtimer_start(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
