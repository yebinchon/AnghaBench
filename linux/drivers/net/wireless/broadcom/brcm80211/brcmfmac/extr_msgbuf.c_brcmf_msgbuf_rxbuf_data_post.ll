; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_rxbuf_data_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_rxbuf_data_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i64, i32, %struct.brcmf_pub*, %struct.brcmf_commonring** }
%struct.brcmf_pub = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.brcmf_commonring = type { i32 }
%struct.sk_buff = type { i64 }
%struct.msgbuf_rx_bufpost = type { %struct.TYPE_8__, i8*, %struct.TYPE_7__, %struct.TYPE_6__, i8* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@BRCMF_H2D_MSGRING_RXPOST_SUBMIT = common dso_local global i64 0, align 8
@MSGBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to reserve space in commonring\0A\00", align 1
@BRCMF_MSGBUF_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to alloc SKB\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"No PKTID available !!\0A\00", align 1
@MSGBUF_TYPE_RXBUF_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_msgbuf*, i64)* @brcmf_msgbuf_rxbuf_data_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_msgbuf_rxbuf_data_post(%struct.brcmf_msgbuf* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.brcmf_msgbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.brcmf_pub*, align 8
  %7 = alloca %struct.brcmf_commonring*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.msgbuf_rx_bufpost*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %18 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %17, i32 0, i32 2
  %19 = load %struct.brcmf_pub*, %struct.brcmf_pub** %18, align 8
  store %struct.brcmf_pub* %19, %struct.brcmf_pub** %6, align 8
  %20 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %21 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %20, i32 0, i32 3
  %22 = load %struct.brcmf_commonring**, %struct.brcmf_commonring*** %21, align 8
  %23 = load i64, i64* @BRCMF_H2D_MSGRING_RXPOST_SUBMIT, align 8
  %24 = getelementptr inbounds %struct.brcmf_commonring*, %struct.brcmf_commonring** %22, i64 %23
  %25 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %24, align 8
  store %struct.brcmf_commonring* %25, %struct.brcmf_commonring** %7, align 8
  %26 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i8* @brcmf_commonring_reserve_for_write_multiple(%struct.brcmf_commonring* %26, i64 %27, i64* %10)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @MSGBUF, align 4
  %33 = call i32 @brcmf_dbg(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %165

34:                                               ; preds = %2
  store i64 0, i64* %16, align 8
  br label %35

35:                                               ; preds = %154, %34
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %157

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast i8* %40 to %struct.msgbuf_rx_bufpost*
  store %struct.msgbuf_rx_bufpost* %41, %struct.msgbuf_rx_bufpost** %13, align 8
  %42 = load %struct.msgbuf_rx_bufpost*, %struct.msgbuf_rx_bufpost** %13, align 8
  %43 = call i32 @memset(%struct.msgbuf_rx_bufpost* %42, i32 0, i32 64)
  %44 = load i32, i32* @BRCMF_MSGBUF_MAX_PKT_SIZE, align 4
  %45 = call %struct.sk_buff* @brcmu_pkt_buf_get_skb(i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %9, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = icmp eq %struct.sk_buff* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %50 = call i32 @bphy_err(%struct.brcmf_pub* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %16, align 8
  %54 = sub nsw i64 %52, %53
  %55 = call i32 @brcmf_commonring_write_cancel(%struct.brcmf_commonring* %51, i64 %54)
  br label %157

56:                                               ; preds = %39
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %11, align 8
  %60 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %61 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %60, i32 0, i32 2
  %62 = load %struct.brcmf_pub*, %struct.brcmf_pub** %61, align 8
  %63 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %68 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = call i64 @brcmf_msgbuf_alloc_pktid(i32 %66, i32 %69, %struct.sk_buff* %70, i32 0, i64* %12, i64* %15)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %56
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %74)
  %76 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %77 = call i32 @bphy_err(%struct.brcmf_pub* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %16, align 8
  %81 = sub nsw i64 %79, %80
  %82 = call i32 @brcmf_commonring_write_cancel(%struct.brcmf_commonring* %78, i64 %81)
  br label %157

83:                                               ; preds = %56
  %84 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %85 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %83
  %89 = load i64, i64* %12, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %14, align 4
  %91 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %92 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @cpu_to_le16(i64 %93)
  %95 = load %struct.msgbuf_rx_bufpost*, %struct.msgbuf_rx_bufpost** %13, align 8
  %96 = getelementptr inbounds %struct.msgbuf_rx_bufpost, %struct.msgbuf_rx_bufpost* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %14, align 4
  %98 = ashr i32 %97, 32
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.msgbuf_rx_bufpost*, %struct.msgbuf_rx_bufpost** %13, align 8
  %101 = getelementptr inbounds %struct.msgbuf_rx_bufpost, %struct.msgbuf_rx_bufpost* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.msgbuf_rx_bufpost*, %struct.msgbuf_rx_bufpost** %13, align 8
  %106 = getelementptr inbounds %struct.msgbuf_rx_bufpost, %struct.msgbuf_rx_bufpost* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %110 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @skb_pull(%struct.sk_buff* %108, i64 %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %11, align 8
  %116 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %117 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %12, align 8
  br label %121

121:                                              ; preds = %88, %83
  %122 = load i32, i32* @MSGBUF_TYPE_RXBUF_POST, align 4
  %123 = load %struct.msgbuf_rx_bufpost*, %struct.msgbuf_rx_bufpost** %13, align 8
  %124 = getelementptr inbounds %struct.msgbuf_rx_bufpost, %struct.msgbuf_rx_bufpost* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 8
  %126 = load i64, i64* %15, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i8* @cpu_to_le32(i32 %127)
  %129 = load %struct.msgbuf_rx_bufpost*, %struct.msgbuf_rx_bufpost** %13, align 8
  %130 = getelementptr inbounds %struct.msgbuf_rx_bufpost, %struct.msgbuf_rx_bufpost* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = load i64, i64* %12, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %14, align 4
  %134 = load i64, i64* %11, align 8
  %135 = call i8* @cpu_to_le16(i64 %134)
  %136 = load %struct.msgbuf_rx_bufpost*, %struct.msgbuf_rx_bufpost** %13, align 8
  %137 = getelementptr inbounds %struct.msgbuf_rx_bufpost, %struct.msgbuf_rx_bufpost* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* %14, align 4
  %139 = ashr i32 %138, 32
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = load %struct.msgbuf_rx_bufpost*, %struct.msgbuf_rx_bufpost** %13, align 8
  %142 = getelementptr inbounds %struct.msgbuf_rx_bufpost, %struct.msgbuf_rx_bufpost* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i8* %140, i8** %143, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i8* @cpu_to_le32(i32 %144)
  %146 = load %struct.msgbuf_rx_bufpost*, %struct.msgbuf_rx_bufpost** %13, align 8
  %147 = getelementptr inbounds %struct.msgbuf_rx_bufpost, %struct.msgbuf_rx_bufpost* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i8* %145, i8** %148, align 8
  %149 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %150 = call i32 @brcmf_commonring_len_item(%struct.brcmf_commonring* %149)
  %151 = load i8*, i8** %8, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr i8, i8* %151, i64 %152
  store i8* %153, i8** %8, align 8
  br label %154

154:                                              ; preds = %121
  %155 = load i64, i64* %16, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %16, align 8
  br label %35

157:                                              ; preds = %73, %48, %35
  %158 = load i64, i64* %16, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %162 = call i32 @brcmf_commonring_write_complete(%struct.brcmf_commonring* %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i64, i64* %16, align 8
  store i64 %164, i64* %3, align 8
  br label %165

165:                                              ; preds = %163, %31
  %166 = load i64, i64* %3, align 8
  ret i64 %166
}

declare dso_local i8* @brcmf_commonring_reserve_for_write_multiple(%struct.brcmf_commonring*, i64, i64*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @memset(%struct.msgbuf_rx_bufpost*, i32, i32) #1

declare dso_local %struct.sk_buff* @brcmu_pkt_buf_get_skb(i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @brcmf_commonring_write_cancel(%struct.brcmf_commonring*, i64) #1

declare dso_local i64 @brcmf_msgbuf_alloc_pktid(i32, i32, %struct.sk_buff*, i32, i64*, i64*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @brcmf_commonring_len_item(%struct.brcmf_commonring*) #1

declare dso_local i32 @brcmf_commonring_write_complete(%struct.brcmf_commonring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
