; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_free_rxbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_free_rxbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r6040_private = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, i32*, i32 }

@RX_DCNT = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @r6040_free_rxbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r6040_free_rxbufs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r6040_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r6040_private* @netdev_priv(%struct.net_device* %5)
  store %struct.r6040_private* %6, %struct.r6040_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %49, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RX_DCNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %7
  %12 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %13 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %11
  %19 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %20 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %23 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load i32, i32* @MAX_BUF_SIZE, align 4
  %29 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %30 = call i32 @pci_unmap_single(i32 %21, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %32 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @dev_kfree_skb(i32* %35)
  %37 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %38 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %18, %11
  %42 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %43 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %48 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %47, i32 0, i32 0
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %48, align 8
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %7

52:                                               ; preds = %7
  ret void
}

declare dso_local %struct.r6040_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
