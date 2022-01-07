; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_queue_wq_skb_encap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_queue_wq_skb_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32 }
%struct.vnic_wq = type { i32 }
%struct.sk_buff = type { i32, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WQ_ENET_OFFLOAD_MODE_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32)* @enic_queue_wq_skb_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_queue_wq_skb_encap(%struct.enic* %0, %struct.vnic_wq* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.enic*, align 8
  %9 = alloca %struct.vnic_wq*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %8, align 8
  store %struct.vnic_wq* %1, %struct.vnic_wq** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = call i32 @skb_headlen(%struct.sk_buff* %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %14, align 4
  %26 = sub i32 %24, %25
  store i32 %26, i32* %15, align 4
  store i32 7, i32* %16, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %30 = load %struct.enic*, %struct.enic** %8, align 8
  %31 = getelementptr inbounds %struct.enic, %struct.enic* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %38 = call i32 @pci_map_single(i32 %32, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load %struct.enic*, %struct.enic** %8, align 8
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @enic_dma_map_check(%struct.enic* %39, i32 %40)
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %71

47:                                               ; preds = %6
  %48 = load %struct.vnic_wq*, %struct.vnic_wq** %9, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @WQ_ENET_OFFLOAD_MODE_CSUM, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @enic_queue_wq_desc_ex(%struct.vnic_wq* %48, %struct.sk_buff* %49, i32 %50, i32 %51, i32 %52, i32 0, i32 %53, i32 %54, i32 %55, i32 %56, i32 1, i32 %57, i32 %58)
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %47
  %63 = load %struct.enic*, %struct.enic** %8, align 8
  %64 = load %struct.vnic_wq*, %struct.vnic_wq** %9, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @enic_queue_wq_skb_cont(%struct.enic* %63, %struct.vnic_wq* %64, %struct.sk_buff* %65, i32 %66, i32 %67)
  store i32 %68, i32* %19, align 4
  br label %69

69:                                               ; preds = %62, %47
  %70 = load i32, i32* %19, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %44
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @enic_dma_map_check(%struct.enic*, i32) #1

declare dso_local i32 @enic_queue_wq_desc_ex(%struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @enic_queue_wq_skb_cont(%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
