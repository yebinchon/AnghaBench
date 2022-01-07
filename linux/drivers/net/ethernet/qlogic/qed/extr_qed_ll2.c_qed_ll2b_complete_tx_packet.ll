; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2b_complete_tx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2b_complete_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_dev* }
%struct.qed_dev = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.sk_buff*, i32)* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32, i32)* @qed_ll2b_complete_tx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ll2b_complete_tx_packet(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_hwfn*, align 8
  %14 = alloca %struct.qed_dev*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %17, %struct.qed_hwfn** %13, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %13, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 0
  %20 = load %struct.qed_dev*, %struct.qed_dev** %19, align 8
  store %struct.qed_dev* %20, %struct.qed_dev** %14, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.sk_buff*
  store %struct.sk_buff* %22, %struct.sk_buff** %15, align 8
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %13, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 0
  %25 = load %struct.qed_dev*, %struct.qed_dev** %24, align 8
  %26 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %31 = call i32 @skb_headlen(%struct.sk_buff* %30)
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i32 @dma_unmap_single(i32* %28, i32 %29, i32 %31, i32 %32)
  %34 = load %struct.qed_dev*, %struct.qed_dev** %14, align 8
  %35 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %6
  %41 = load %struct.qed_dev*, %struct.qed_dev** %14, align 8
  %42 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %46, align 8
  %48 = icmp ne i32 (i32, %struct.sk_buff*, i32)* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load %struct.qed_dev*, %struct.qed_dev** %14, align 8
  %51 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %55, align 8
  %57 = load %struct.qed_dev*, %struct.qed_dev** %14, align 8
  %58 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 %56(i32 %61, %struct.sk_buff* %62, i32 %63)
  br label %65

65:                                               ; preds = %49, %40, %6
  %66 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %67 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %66)
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
