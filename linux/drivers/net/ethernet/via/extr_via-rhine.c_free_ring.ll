; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.rhine_private = type { i32*, i32, i32*, i32, i32* }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rhine_private*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %5)
  store %struct.rhine_private* %6, %struct.rhine_private** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @RX_RING_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = load i32, i32* @TX_RING_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 %14, %17
  %19 = trunc i64 %18 to i32
  %20 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %21 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %24 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_free_coherent(%struct.device* %11, i32 %19, i32* %22, i32 %25)
  %27 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %28 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %30 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* @PKT_BUF_SZ, align 4
  %36 = load i32, i32* @TX_RING_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %39 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %42 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dma_free_coherent(%struct.device* %34, i32 %37, i32* %40, i32 %43)
  br label %45

45:                                               ; preds = %33, %1
  %46 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %47 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  ret void
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
