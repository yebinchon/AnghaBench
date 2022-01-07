; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_skb_frags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_skb_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { %struct.ionic_txq_sg_desc* }
%struct.ionic_txq_sg_desc = type { %struct.ionic_txq_sg_elem* }
%struct.ionic_txq_sg_elem = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ionic_tx_stats = type { i32 }
%struct.TYPE_8__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_queue*, %struct.sk_buff*)* @ionic_tx_skb_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_tx_skb_frags(%struct.ionic_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ionic_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ionic_txq_sg_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ionic_txq_sg_elem*, align 8
  %9 = alloca %struct.ionic_tx_stats*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.ionic_queue* %0, %struct.ionic_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %15 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.ionic_txq_sg_desc*, %struct.ionic_txq_sg_desc** %17, align 8
  store %struct.ionic_txq_sg_desc* %18, %struct.ionic_txq_sg_desc** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @skb_headlen(%struct.sk_buff* %22)
  %24 = sub i32 %21, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ionic_txq_sg_desc*, %struct.ionic_txq_sg_desc** %6, align 8
  %26 = getelementptr inbounds %struct.ionic_txq_sg_desc, %struct.ionic_txq_sg_desc* %25, i32 0, i32 0
  %27 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %26, align 8
  store %struct.ionic_txq_sg_elem* %27, %struct.ionic_txq_sg_elem** %8, align 8
  %28 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %29 = call %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue* %28)
  store %struct.ionic_tx_stats* %29, %struct.ionic_tx_stats** %9, align 8
  %30 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %31 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.device*, %struct.device** %35, align 8
  store %struct.device* %36, %struct.device** %10, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %12, align 8
  br label %41

41:                                               ; preds = %76, %2
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %41
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @skb_frag_size(i32* %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @cpu_to_le16(i64 %47)
  %49 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %8, align 8
  %50 = getelementptr inbounds %struct.ionic_txq_sg_elem, %struct.ionic_txq_sg_elem* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @ionic_tx_map_frag(%struct.ionic_queue* %51, i32* %52, i32 0, i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.device*, %struct.device** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @dma_mapping_error(%struct.device* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %82

62:                                               ; preds = %44
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @cpu_to_le64(i32 %63)
  %65 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %8, align 8
  %66 = getelementptr inbounds %struct.ionic_txq_sg_elem, %struct.ionic_txq_sg_elem* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i64, i64* %13, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = sub nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  %72 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %9, align 8
  %73 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %62
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %12, align 8
  %79 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %8, align 8
  %80 = getelementptr inbounds %struct.ionic_txq_sg_elem, %struct.ionic_txq_sg_elem* %79, i32 1
  store %struct.ionic_txq_sg_elem* %80, %struct.ionic_txq_sg_elem** %8, align 8
  br label %41

81:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue*) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @ionic_tx_map_frag(%struct.ionic_queue*, i32*, i32, i64) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
