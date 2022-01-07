; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_refill_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32, %struct.TYPE_4__*, %struct.sk_buff**, %struct.TYPE_3__*, %struct.net_device* }
%struct.TYPE_4__ = type { i8*, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@CP_RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@RingEnd = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cp_private*)* @cp_refill_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_refill_rx(%struct.cp_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cp_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %3, align 8
  %8 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %9 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %8, i32 0, i32 4
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %106, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CP_RX_RING_SIZE, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %109

15:                                               ; preds = %11
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %18 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %16, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %110

24:                                               ; preds = %15
  %25 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %26 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %33 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %36 = call i32 @dma_map_single(i32* %28, i32 %31, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %38 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @dma_mapping_error(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %24
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @kfree_skb(%struct.sk_buff* %45)
  br label %110

47:                                               ; preds = %24
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %50 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %49, i32 0, i32 2
  %51 = load %struct.sk_buff**, %struct.sk_buff*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %51, i64 %53
  store %struct.sk_buff* %48, %struct.sk_buff** %54, align 8
  %55 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %56 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @cpu_to_le64(i32 %62)
  %64 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %65 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %63, i32* %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @CP_RX_RING_SIZE, align 4
  %73 = sub i32 %72, 1
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %47
  %76 = load i32, i32* @DescOwn, align 4
  %77 = load i32, i32* @RingEnd, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %80 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %78, %81
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %85 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8* %83, i8** %90, align 8
  br label %105

91:                                               ; preds = %47
  %92 = load i32, i32* @DescOwn, align 4
  %93 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %94 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %92, %95
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %99 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i8* %97, i8** %104, align 8
  br label %105

105:                                              ; preds = %91, %75
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %11

109:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %115

110:                                              ; preds = %44, %23
  %111 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %112 = call i32 @cp_clean_rings(%struct.cp_private* %111)
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %110, %109
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cp_clean_rings(%struct.cp_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
