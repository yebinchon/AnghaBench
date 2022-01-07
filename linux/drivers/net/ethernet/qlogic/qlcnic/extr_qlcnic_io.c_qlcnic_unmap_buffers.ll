; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_unmap_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_unmap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.qlcnic_cmd_buffer = type { i32*, %struct.qlcnic_skb_frag* }
%struct.qlcnic_skb_frag = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.sk_buff*, %struct.qlcnic_cmd_buffer*)* @qlcnic_unmap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_unmap_buffers(%struct.pci_dev* %0, %struct.sk_buff* %1, %struct.qlcnic_cmd_buffer* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qlcnic_cmd_buffer*, align 8
  %7 = alloca %struct.qlcnic_skb_frag*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.qlcnic_cmd_buffer* %2, %struct.qlcnic_cmd_buffer** %6, align 8
  %10 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %10, i32 0, i32 1
  %12 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %11, align 8
  %13 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %12, i64 0
  store %struct.qlcnic_skb_frag* %13, %struct.qlcnic_skb_frag** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %39, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %23, i32 0, i32 1
  %25 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %25, i64 %28
  store %struct.qlcnic_skb_frag* %29, %struct.qlcnic_skb_frag** %7, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %7, align 8
  %32 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %7, align 8
  %35 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %38 = call i32 @pci_unmap_page(%struct.pci_dev* %30, i32 %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %43, i32 0, i32 1
  %45 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %44, align 8
  %46 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %45, i64 0
  store %struct.qlcnic_skb_frag* %46, %struct.qlcnic_skb_frag** %7, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %7, align 8
  %49 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @skb_headlen(%struct.sk_buff* %51)
  %53 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %54 = call i32 @pci_unmap_single(%struct.pci_dev* %47, i32 %50, i32 %52, i32 %53)
  %55 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
