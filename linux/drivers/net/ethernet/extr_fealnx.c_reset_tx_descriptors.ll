; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_reset_tx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_reset_tx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, %struct.fealnx_desc*, i64, i32, i64, %struct.fealnx_desc*, %struct.fealnx_desc* }
%struct.fealnx_desc = type { %struct.fealnx_desc*, i64, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @reset_tx_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_tx_descriptors(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca %struct.fealnx_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdev_private* %7, %struct.netdev_private** %3, align 8
  %8 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %9 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %8, i32 0, i32 1
  %10 = load %struct.fealnx_desc*, %struct.fealnx_desc** %9, align 8
  %11 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %10, i64 0
  %12 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 6
  store %struct.fealnx_desc* %11, %struct.fealnx_desc** %13, align 8
  %14 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %15 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %14, i32 0, i32 1
  %16 = load %struct.fealnx_desc*, %struct.fealnx_desc** %15, align 8
  %17 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %16, i64 0
  %18 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %19 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %18, i32 0, i32 5
  store %struct.fealnx_desc* %17, %struct.fealnx_desc** %19, align 8
  %20 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %21 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @TX_RING_SIZE, align 4
  %23 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %24 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %84, %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TX_RING_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %87

29:                                               ; preds = %25
  %30 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %31 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %30, i32 0, i32 1
  %32 = load %struct.fealnx_desc*, %struct.fealnx_desc** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %32, i64 %34
  store %struct.fealnx_desc* %35, %struct.fealnx_desc** %4, align 8
  %36 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %37 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %29
  %41 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %42 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %45 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %48 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %53 = call i32 @pci_unmap_single(i32 %43, i32 %46, i32 %51, i32 %52)
  %54 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %55 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call i32 @dev_kfree_skb_any(%struct.TYPE_2__* %56)
  %58 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %59 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %58, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %59, align 8
  br label %60

60:                                               ; preds = %40, %29
  %61 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %62 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %64 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %66 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 48
  %72 = add i64 %67, %71
  %73 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %74 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %76 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %75, i32 0, i32 1
  %77 = load %struct.fealnx_desc*, %struct.fealnx_desc** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %77, i64 %80
  %82 = load %struct.fealnx_desc*, %struct.fealnx_desc** %4, align 8
  %83 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %82, i32 0, i32 0
  store %struct.fealnx_desc* %81, %struct.fealnx_desc** %83, align 8
  br label %84

84:                                               ; preds = %60
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %25

87:                                               ; preds = %25
  %88 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %89 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %92 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %91, i32 0, i32 1
  %93 = load %struct.fealnx_desc*, %struct.fealnx_desc** %92, align 8
  %94 = load i32, i32* @TX_RING_SIZE, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %93, i64 %96
  %98 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %97, i32 0, i32 1
  store i64 %90, i64* %98, align 8
  %99 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %100 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %99, i32 0, i32 1
  %101 = load %struct.fealnx_desc*, %struct.fealnx_desc** %100, align 8
  %102 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %101, i64 0
  %103 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %104 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %103, i32 0, i32 1
  %105 = load %struct.fealnx_desc*, %struct.fealnx_desc** %104, align 8
  %106 = load i32, i32* @TX_RING_SIZE, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %105, i64 %108
  %110 = getelementptr inbounds %struct.fealnx_desc, %struct.fealnx_desc* %109, i32 0, i32 0
  store %struct.fealnx_desc* %102, %struct.fealnx_desc** %110, align 8
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
