; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_skb_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_skb_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mlxsw_tx_info = type { i32 }
%struct.mlxsw_pci = type { i32 }
%struct.mlxsw_pci_queue = type { i32, i32 }
%struct.mlxsw_pci_queue_elem_info = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sk_buff* }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.mlxsw_tx_info }

@MLXSW_PCI_WQE_SG_ENTRIES = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MLXSW_PCI_WQE_TYPE_ETHERNET = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.mlxsw_tx_info*)* @mlxsw_pci_skb_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_skb_transmit(i8* %0, %struct.sk_buff* %1, %struct.mlxsw_tx_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mlxsw_tx_info*, align 8
  %8 = alloca %struct.mlxsw_pci*, align 8
  %9 = alloca %struct.mlxsw_pci_queue*, align 8
  %10 = alloca %struct.mlxsw_pci_queue_elem_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.mlxsw_tx_info* %2, %struct.mlxsw_tx_info** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.mlxsw_pci*
  store %struct.mlxsw_pci* %16, %struct.mlxsw_pci** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MLXSW_PCI_WQE_SG_ENTRIES, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @skb_linearize(%struct.sk_buff* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %4, align 4
  br label %177

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %8, align 8
  %34 = load %struct.mlxsw_tx_info*, %struct.mlxsw_tx_info** %7, align 8
  %35 = call %struct.mlxsw_pci_queue* @mlxsw_pci_sdq_pick(%struct.mlxsw_pci* %33, %struct.mlxsw_tx_info* %34)
  store %struct.mlxsw_pci_queue* %35, %struct.mlxsw_pci_queue** %9, align 8
  %36 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %9, align 8
  %37 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %9, align 8
  %40 = call %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_producer_get(%struct.mlxsw_pci_queue* %39)
  store %struct.mlxsw_pci_queue_elem_info* %40, %struct.mlxsw_pci_queue_elem_info** %10, align 8
  %41 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %10, align 8
  %42 = icmp ne %struct.mlxsw_pci_queue_elem_info* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %172

46:                                               ; preds = %32
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call %struct.TYPE_8__* @mlxsw_skb_cb(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.mlxsw_tx_info*, %struct.mlxsw_tx_info** %7, align 8
  %51 = bitcast %struct.mlxsw_tx_info* %49 to i8*
  %52 = bitcast %struct.mlxsw_tx_info* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %10, align 8
  %55 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store %struct.sk_buff* %53, %struct.sk_buff** %57, align 8
  %58 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %10, align 8
  %59 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @mlxsw_pci_wqe_c_set(i8* %61, i32 1)
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.mlxsw_tx_info*, %struct.mlxsw_tx_info** %7, align 8
  %65 = getelementptr inbounds %struct.mlxsw_tx_info, %struct.mlxsw_tx_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @mlxsw_pci_wqe_lp_set(i8* %63, i32 %70)
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* @MLXSW_PCI_WQE_TYPE_ETHERNET, align 4
  %74 = call i32 @mlxsw_pci_wqe_type_set(i8* %72, i32 %73)
  %75 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %8, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i32 @skb_headlen(%struct.sk_buff* %80)
  %82 = load i32, i32* @DMA_TO_DEVICE, align 4
  %83 = call i32 @mlxsw_pci_wqe_frag_map(%struct.mlxsw_pci* %75, i8* %76, i32 0, i32 %79, i32 %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %46
  br label %172

87:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %117, %87
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %90)
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %88
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32* %102, i32** %14, align 8
  %103 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %8, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @skb_frag_address(i32* %107)
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @skb_frag_size(i32* %109)
  %111 = load i32, i32* @DMA_TO_DEVICE, align 4
  %112 = call i32 @mlxsw_pci_wqe_frag_map(%struct.mlxsw_pci* %103, i8* %104, i32 %106, i32 %108, i32 %110, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %95
  br label %158

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %88

120:                                              ; preds = %88
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %126 = and i32 %124, %125
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %120
  %130 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %130
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %129, %120
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %147, %136
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @MLXSW_PCI_WQE_SG_ENTRIES, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i8*, i8** %11, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @mlxsw_pci_wqe_byte_count_set(i8* %144, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %139

150:                                              ; preds = %139
  %151 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %9, align 8
  %152 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %8, align 8
  %156 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %9, align 8
  %157 = call i32 @mlxsw_pci_queue_doorbell_producer_ring(%struct.mlxsw_pci* %155, %struct.mlxsw_pci_queue* %156)
  br label %172

158:                                              ; preds = %115
  br label %159

159:                                              ; preds = %168, %158
  %160 = load i32, i32* %12, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %8, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @DMA_TO_DEVICE, align 4
  %167 = call i32 @mlxsw_pci_wqe_frag_unmap(%struct.mlxsw_pci* %163, i8* %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %162
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %12, align 4
  br label %159

171:                                              ; preds = %159
  br label %172

172:                                              ; preds = %171, %150, %86, %43
  %173 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %9, align 8
  %174 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %173, i32 0, i32 0
  %175 = call i32 @spin_unlock_bh(i32* %174)
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %172, %29
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local %struct.mlxsw_pci_queue* @mlxsw_pci_sdq_pick(%struct.mlxsw_pci*, %struct.mlxsw_tx_info*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_producer_get(%struct.mlxsw_pci_queue*) #1

declare dso_local %struct.TYPE_8__* @mlxsw_skb_cb(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlxsw_pci_wqe_c_set(i8*, i32) #1

declare dso_local i32 @mlxsw_pci_wqe_lp_set(i8*, i32) #1

declare dso_local i32 @mlxsw_pci_wqe_type_set(i8*, i32) #1

declare dso_local i32 @mlxsw_pci_wqe_frag_map(%struct.mlxsw_pci*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_address(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlxsw_pci_wqe_byte_count_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_pci_queue_doorbell_producer_ring(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*) #1

declare dso_local i32 @mlxsw_pci_wqe_frag_unmap(%struct.mlxsw_pci*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
