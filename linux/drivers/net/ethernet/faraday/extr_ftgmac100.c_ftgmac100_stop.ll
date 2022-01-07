; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.ftgmac100 = type { i32, i64, i32, i64 }

@FTGMAC100_OFFSET_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ftgmac100_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ftgmac100*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %4)
  store %struct.ftgmac100* %5, %struct.ftgmac100** %3, align 8
  %6 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %7 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FTGMAC100_OFFSET_IER, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @iowrite32(i32 0, i64 %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %15 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %14, i32 0, i32 2
  %16 = call i32 @napi_disable(i32* %15)
  %17 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %18 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %17, i32 0, i32 2
  %19 = call i32 @netif_napi_del(i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @phy_stop(i64 %27)
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %31 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %36 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ncsi_stop_dev(i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %42 = call i32 @ftgmac100_stop_hw(%struct.ftgmac100* %41)
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @free_irq(i32 %45, %struct.net_device* %46)
  %48 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %49 = call i32 @ftgmac100_free_buffers(%struct.ftgmac100* %48)
  %50 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %51 = call i32 @ftgmac100_free_rings(%struct.ftgmac100* %50)
  ret i32 0
}

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @ncsi_stop_dev(i32) #1

declare dso_local i32 @ftgmac100_stop_hw(%struct.ftgmac100*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @ftgmac100_free_buffers(%struct.ftgmac100*) #1

declare dso_local i32 @ftgmac100_free_rings(%struct.ftgmac100*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
