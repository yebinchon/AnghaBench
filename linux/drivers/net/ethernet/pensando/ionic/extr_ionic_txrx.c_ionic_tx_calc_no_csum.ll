; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_calc_no_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_calc_no_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { %struct.ionic_txq_desc* }
%struct.ionic_txq_desc = type { i8*, i8*, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ionic_tx_stats = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_FLAG_VLAN = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_FLAG_ENCAP = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_OPCODE_CSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_queue*, %struct.sk_buff*)* @ionic_tx_calc_no_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_tx_calc_no_csum(%struct.ionic_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ionic_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ionic_tx_stats*, align 8
  %7 = alloca %struct.ionic_txq_desc*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ionic_queue* %0, %struct.ionic_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %15 = call %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue* %14)
  store %struct.ionic_tx_stats* %15, %struct.ionic_tx_stats** %6, align 8
  %16 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %17 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %19, align 8
  store %struct.ionic_txq_desc* %20, %struct.ionic_txq_desc** %7, align 8
  %21 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %22 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.device*, %struct.device** %26, align 8
  store %struct.device* %27, %struct.device** %8, align 8
  store i32 0, i32* %11, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @skb_headlen(%struct.sk_buff* %41)
  %43 = call i32 @ionic_tx_map_single(%struct.ionic_queue* %37, i32 %40, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @dma_mapping_error(%struct.device* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %96

51:                                               ; preds = %2
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @IONIC_TXQ_DESC_FLAG_VLAN, align 4
  br label %57

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @IONIC_TXQ_DESC_FLAG_ENCAP, align 4
  br label %66

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @IONIC_TXQ_DESC_OPCODE_CSUM_NONE, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @encode_txq_desc_cmd(i32 %70, i32 %71, i32 %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @cpu_to_le64(i32 %78)
  %80 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %7, align 8
  %81 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @skb_headlen(%struct.sk_buff* %82)
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %7, align 8
  %86 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %87)
  %89 = call i8* @cpu_to_le16(i32 %88)
  %90 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %7, align 8
  %91 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %6, align 8
  %93 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %66, %48
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue*) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @ionic_tx_map_single(%struct.ionic_queue*, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @encode_txq_desc_cmd(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
