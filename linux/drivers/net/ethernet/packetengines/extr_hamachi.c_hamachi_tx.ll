; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/packetengines/extr_hamachi.c_hamachi_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/packetengines/extr_hamachi.c_hamachi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hamachi_private = type { i64, i32, %struct.TYPE_3__*, %struct.sk_buff**, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@DescEndRing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hamachi_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hamachi_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hamachi_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.hamachi_private* @netdev_priv(%struct.net_device* %6)
  store %struct.hamachi_private* %7, %struct.hamachi_private** %3, align 8
  br label %8

8:                                                ; preds = %104, %1
  %9 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %10 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %13 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %11, %15
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %109

18:                                               ; preds = %8
  %19 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %20 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TX_RING_SIZE, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %25 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DescOwn, align 4
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %109

37:                                               ; preds = %18
  %38 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %39 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %38, i32 0, i32 3
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %40, i64 %42
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %73

47:                                               ; preds = %37
  %48 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %49 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %52 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @leXX_to_cpu(i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %64 = call i32 @pci_unmap_single(i32 %50, i32 %59, i32 %62, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @dev_kfree_skb(%struct.sk_buff* %65)
  %67 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %68 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %67, i32 0, i32 3
  %69 = load %struct.sk_buff**, %struct.sk_buff*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %69, i64 %71
  store %struct.sk_buff* null, %struct.sk_buff** %72, align 8
  br label %73

73:                                               ; preds = %47, %37
  %74 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %75 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @TX_RING_SIZE, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp sge i32 %81, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %73
  %86 = load i32, i32* @DescEndRing, align 4
  %87 = call i32 @cpu_to_le32(i32 %86)
  %88 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %89 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* @TX_RING_SIZE, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %87
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %85, %73
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98
  %105 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %106 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %8

109:                                              ; preds = %36, %8
  ret i32 0
}

declare dso_local %struct.hamachi_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @leXX_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
