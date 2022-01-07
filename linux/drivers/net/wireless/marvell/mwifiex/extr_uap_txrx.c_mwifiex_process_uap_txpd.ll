; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_txrx.c_mwifiex_process_uap_txpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_txrx.c_mwifiex_process_uap_txpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.TYPE_2__, i32, i32, %struct.mwifiex_adapter* }
%struct.TYPE_2__ = type { i32* }
%struct.mwifiex_adapter = type { i32 }
%struct.sk_buff = type { i32, i8*, i64 }
%struct.uap_txpd = type { i64, i8*, i8*, i8*, i32, i32, i32, i8*, i32, i32 }
%struct.mwifiex_txinfo = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Tx: bad packet length: %d\0A\00", align 1
@MWIFIEX_MIN_DATA_HEADER_LEN = common dso_local global i64 0, align 8
@PKT_TYPE_MGMT = common dso_local global i32 0, align 4
@MWIFIEX_DMA_ALIGN_SZ = common dso_local global i32 0, align 4
@MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS = common dso_local global i32 0, align 4
@MWIFIEX_BUF_FLAG_ACTION_TX_STATUS = common dso_local global i32 0, align 4
@MWIFIEX_TXPD_FLAGS_REQ_TX_STATUS = common dso_local global i32 0, align 4
@MWIFIEX_MGMT_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mwifiex_process_uap_txpd(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.uap_txpd*, align 8
  %8 = alloca %struct.mwifiex_txinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 4
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  store %struct.mwifiex_adapter* %15, %struct.mwifiex_adapter** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %16)
  store %struct.mwifiex_txinfo* %17, %struct.mwifiex_txinfo** %8, align 8
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %2
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %27 = load i32, i32* @ERROR, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %26, i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %8, align 8
  %33 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %3, align 8
  br label %199

37:                                               ; preds = %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @skb_headroom(%struct.sk_buff* %38)
  %40 = load i64, i64* @MWIFIEX_MIN_DATA_HEADER_LEN, align 8
  %41 = icmp slt i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i64 @mwifiex_is_skb_mgmt_frame(%struct.sk_buff* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @PKT_TYPE_MGMT, align 4
  br label %50

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  store i32 %51, i32* %10, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 64, %56
  %58 = sub i64 0, %57
  %59 = getelementptr i8, i8* %54, i64 %58
  %60 = ptrtoint i8* %59 to i64
  %61 = sub i64 %60, 0
  %62 = load i32, i32* @MWIFIEX_DMA_ALIGN_SZ, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = and i64 %61, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 64, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @skb_push(%struct.sk_buff* %67, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast i8* %75 to %struct.uap_txpd*
  store %struct.uap_txpd* %76, %struct.uap_txpd** %7, align 8
  %77 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %78 = call i32 @memset(%struct.uap_txpd* %77, i32 0, i32 64)
  %79 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %80 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %83 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %85 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %88 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 64, %94
  %96 = sub i64 %92, %95
  %97 = trunc i64 %96 to i32
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %100 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %105 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @mwifiex_wmm_compute_drv_pkt_delay(%struct.mwifiex_private* %106, %struct.sk_buff* %107)
  %109 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %110 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %8, align 8
  %112 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %50
  %118 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %8, align 8
  %119 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MWIFIEX_BUF_FLAG_ACTION_TX_STATUS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %117, %50
  %125 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %8, align 8
  %126 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %129 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @MWIFIEX_TXPD_FLAGS_REQ_TX_STATUS, align 4
  %131 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %132 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %124, %117
  %136 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %137 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %140 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @ARRAY_SIZE(i32* %142)
  %144 = icmp ult i64 %138, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %135
  %146 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %147 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %151 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @cpu_to_le32(i32 %154)
  %156 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %157 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %145, %135
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 64, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @PKT_TYPE_MGMT, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %158
  %167 = load i32, i32* %10, align 4
  %168 = call i8* @cpu_to_le16(i32 %167)
  %169 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %170 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  %171 = load i64, i64* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %166, %158
  %177 = load i32, i32* %11, align 4
  %178 = call i8* @cpu_to_le16(i32 %177)
  %179 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %180 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %179, i32 0, i32 2
  store i8* %178, i8** %180, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @skb_push(%struct.sk_buff* %181, i32 %182)
  %184 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %185 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %195, label %188

188:                                              ; preds = %176
  %189 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %190 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i8* @cpu_to_le32(i32 %191)
  %193 = load %struct.uap_txpd*, %struct.uap_txpd** %7, align 8
  %194 = getelementptr inbounds %struct.uap_txpd, %struct.uap_txpd* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  br label %195

195:                                              ; preds = %188, %176
  %196 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  store i8* %198, i8** %3, align 8
  br label %199

199:                                              ; preds = %195, %25
  %200 = load i8*, i8** %3, align 8
  ret i8* %200
}

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @mwifiex_is_skb_mgmt_frame(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.uap_txpd*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwifiex_wmm_compute_drv_pkt_delay(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
