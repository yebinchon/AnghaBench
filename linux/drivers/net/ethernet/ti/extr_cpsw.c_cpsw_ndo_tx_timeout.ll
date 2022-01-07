; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cpsw_priv = type { %struct.cpsw_common* }
%struct.cpsw_common = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"transmit timeout, restarting dma\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpsw_ndo_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_ndo_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cpsw_priv*, align 8
  %4 = alloca %struct.cpsw_common*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cpsw_priv* %7, %struct.cpsw_priv** %3, align 8
  %8 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %9 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %8, i32 0, i32 0
  %10 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  store %struct.cpsw_common* %10, %struct.cpsw_common** %4, align 8
  %11 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %12 = load i32, i32* @tx_err, align 4
  %13 = call i32 @cpsw_err(%struct.cpsw_priv* %11, i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %20 = call i32 @cpsw_intr_disable(%struct.cpsw_common* %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %46, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %24 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %29 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cpdma_chan_stop(i32 %35)
  %37 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %38 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpdma_chan_start(i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %51 = call i32 @cpsw_intr_enable(%struct.cpsw_common* %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @netif_trans_update(%struct.net_device* %52)
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %54)
  ret void
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_err(%struct.cpsw_priv*, i32, i8*) #1

declare dso_local i32 @cpsw_intr_disable(%struct.cpsw_common*) #1

declare dso_local i32 @cpdma_chan_stop(i32) #1

declare dso_local i32 @cpdma_chan_start(i32) #1

declare dso_local i32 @cpsw_intr_enable(%struct.cpsw_common*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
