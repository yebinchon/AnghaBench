; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_queue_wq_skb_cont.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_queue_wq_skb_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vnic_wq = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32)* @enic_queue_wq_skb_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_queue_wq_skb_cont(%struct.enic* %0, %struct.vnic_wq* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.enic*, align 8
  %8 = alloca %struct.vnic_wq*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %7, align 8
  store %struct.vnic_wq* %1, %struct.vnic_wq** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  br label %18

18:                                               ; preds = %56, %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %18
  %22 = load i32*, i32** %12, align 8
  %23 = call i64 @skb_frag_size(i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = sub nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.enic*, %struct.enic** %7, align 8
  %29 = getelementptr inbounds %struct.enic, %struct.enic* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i64 @skb_frag_size(i32* %33)
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @skb_frag_dma_map(i32* %31, i32* %32, i32 0, i64 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.enic*, %struct.enic** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @enic_dma_map_check(%struct.enic* %37, i32 %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %21
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %60

45:                                               ; preds = %21
  %46 = load %struct.vnic_wq*, %struct.vnic_wq** %8, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = call i64 @skb_frag_size(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @enic_queue_wq_desc_cont(%struct.vnic_wq* %46, %struct.sk_buff* %47, i32 %48, i64 %50, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %45
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %12, align 8
  br label %18

59:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32*, i32*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @enic_dma_map_check(%struct.enic*, i32) #1

declare dso_local i32 @enic_queue_wq_desc_cont(%struct.vnic_wq*, %struct.sk_buff*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
