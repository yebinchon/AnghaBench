; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_txrx.c_mwifiex_process_uap_rx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_txrx.c_mwifiex_process_uap_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_6__, i32, i32, %struct.mwifiex_adapter* }
%struct.TYPE_6__ = type { i32 }
%struct.mwifiex_adapter = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.uap_rxpd = type { i64, i32, i32, i32, i32 }
%struct.rx_packet_hdr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mwifiex_sta_node = type { i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"wrong rx packet: len=%d, offset=%d, length=%d\0A\00", align 1
@PKT_TYPE_MGMT = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Rx of mgmt packet failed\00", align 1
@PKT_TYPE_BAR = common dso_local global i64 0, align 8
@MAX_NUM_TID = common dso_local global i64 0, align 8
@PKT_TYPE_AMSDU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_process_uap_rx_packet(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uap_rxpd*, align 8
  %9 = alloca %struct.rx_packet_hdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mwifiex_sta_node*, align 8
  %15 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %16, i32 0, i32 3
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  store %struct.mwifiex_adapter* %18, %struct.mwifiex_adapter** %6, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.uap_rxpd*
  store %struct.uap_rxpd* %26, %struct.uap_rxpd** %8, align 8
  %27 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %28 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le16_to_cpu(i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %32 = bitcast %struct.uap_rxpd* %31 to i8*
  %33 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %34 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le16_to_cpu(i32 %35)
  %37 = getelementptr i8, i8* %32, i64 %36
  %38 = bitcast i8* %37 to %struct.rx_packet_hdr*
  store %struct.rx_packet_hdr* %38, %struct.rx_packet_hdr** %9, align 8
  %39 = load %struct.rx_packet_hdr*, %struct.rx_packet_hdr** %9, align 8
  %40 = getelementptr inbounds %struct.rx_packet_hdr, %struct.rx_packet_hdr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ether_addr_copy(i64* %22, i32 %42)
  %44 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %45 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  %48 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %49 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @le16_to_cpu(i32 %50)
  %52 = add nsw i64 %47, %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %2
  %58 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %59 = load i32, i32* @ERROR, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %64 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @le16_to_cpu(i32 %65)
  %67 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %68 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @le16_to_cpu(i32 %69)
  %71 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %58, i32 %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %62, i64 %66, i64 %70)
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %78 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %77, i64* %22)
  store %struct.mwifiex_sta_node* %78, %struct.mwifiex_sta_node** %14, align 8
  %79 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %14, align 8
  %80 = icmp ne %struct.mwifiex_sta_node* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %57
  %82 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %14, align 8
  %83 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %57
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %88)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %202

90:                                               ; preds = %2
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @PKT_TYPE_MGMT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @mwifiex_process_mgmt_packet(%struct.mwifiex_private* %95, %struct.sk_buff* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %102 = load i32, i32* @DATA, align 4
  %103 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %101, i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %202

108:                                              ; preds = %90
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @PKT_TYPE_BAR, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %108
  %113 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %114 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MAX_NUM_TID, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %112
  %119 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %120 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %119, i32 0, i32 2
  %121 = call i32 @spin_lock_bh(i32* %120)
  %122 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %123 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %122, i64* %22)
  store %struct.mwifiex_sta_node* %123, %struct.mwifiex_sta_node** %14, align 8
  %124 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %14, align 8
  %125 = icmp ne %struct.mwifiex_sta_node* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %118
  %127 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %128 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @le16_to_cpu(i32 %129)
  %131 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %14, align 8
  %132 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %135 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  store i64 %130, i64* %137, align 8
  br label %138

138:                                              ; preds = %126, %118
  %139 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %140 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %139, i32 0, i32 2
  %141 = call i32 @spin_unlock_bh(i32* %140)
  br label %142

142:                                              ; preds = %138, %112, %108
  %143 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %144 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %149 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %150 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @mwifiex_11n_get_rx_reorder_tbl(%struct.mwifiex_private* %148, i64 %151, i64* %22)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %147
  %155 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %156 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @le16_to_cpu(i32 %157)
  %159 = load i64, i64* @PKT_TYPE_AMSDU, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %154, %142
  %162 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = call i32 @mwifiex_handle_uap_rx_forward(%struct.mwifiex_private* %162, %struct.sk_buff* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %202

166:                                              ; preds = %154, %147
  %167 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %168 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @le16_to_cpu(i32 %169)
  store i64 %170, i64* %13, align 8
  %171 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %172 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %173 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @le16_to_cpu(i32 %174)
  %176 = load %struct.uap_rxpd*, %struct.uap_rxpd** %8, align 8
  %177 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %13, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = call i32 @mwifiex_11n_rx_reorder_pkt(%struct.mwifiex_private* %171, i64 %175, i64 %178, i64* %22, i64 %179, %struct.sk_buff* %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %166
  %185 = load i64, i64* %10, align 8
  %186 = load i64, i64* @PKT_TYPE_BAR, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184, %166
  %189 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %190 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %189)
  br label %191

191:                                              ; preds = %188, %184
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %196 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %191
  %201 = load i32, i32* %7, align 4
  store i32 %201, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %202

202:                                              ; preds = %200, %161, %104, %87
  %203 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @le16_to_cpu(i32) #2

declare dso_local i32 @ether_addr_copy(i64*, i32) #2

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #2

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i64*) #2

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #2

declare dso_local i32 @mwifiex_process_mgmt_packet(%struct.mwifiex_private*, %struct.sk_buff*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @mwifiex_11n_get_rx_reorder_tbl(%struct.mwifiex_private*, i64, i64*) #2

declare dso_local i32 @mwifiex_handle_uap_rx_forward(%struct.mwifiex_private*, %struct.sk_buff*) #2

declare dso_local i32 @mwifiex_11n_rx_reorder_pkt(%struct.mwifiex_private*, i64, i64, i64*, i64, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
