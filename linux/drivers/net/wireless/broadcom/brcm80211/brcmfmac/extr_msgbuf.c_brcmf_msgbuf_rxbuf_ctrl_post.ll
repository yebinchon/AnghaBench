; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_rxbuf_ctrl_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_rxbuf_ctrl_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i32, %struct.brcmf_pub*, %struct.brcmf_commonring** }
%struct.brcmf_pub = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.brcmf_commonring = type { i32 }
%struct.sk_buff = type { i64 }
%struct.msgbuf_rx_ioctl_resp_or_event = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i32 }

@BRCMF_H2D_MSGRING_CONTROL_SUBMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to reserve space in commonring\0A\00", align 1
@BRCMF_MSGBUF_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to alloc SKB\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"No PKTID available !!\0A\00", align 1
@MSGBUF_TYPE_EVENT_BUF_POST = common dso_local global i32 0, align 4
@MSGBUF_TYPE_IOCTLRESP_BUF_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_msgbuf*, i32, i64)* @brcmf_msgbuf_rxbuf_ctrl_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_msgbuf_rxbuf_ctrl_post(%struct.brcmf_msgbuf* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.brcmf_msgbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca %struct.brcmf_commonring*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.msgbuf_rx_ioctl_resp_or_event*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %19 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %20 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %19, i32 0, i32 1
  %21 = load %struct.brcmf_pub*, %struct.brcmf_pub** %20, align 8
  store %struct.brcmf_pub* %21, %struct.brcmf_pub** %8, align 8
  %22 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %23 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %22, i32 0, i32 2
  %24 = load %struct.brcmf_commonring**, %struct.brcmf_commonring*** %23, align 8
  %25 = load i64, i64* @BRCMF_H2D_MSGRING_CONTROL_SUBMIT, align 8
  %26 = getelementptr inbounds %struct.brcmf_commonring*, %struct.brcmf_commonring** %24, i64 %25
  %27 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %26, align 8
  store %struct.brcmf_commonring* %27, %struct.brcmf_commonring** %9, align 8
  %28 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %9, align 8
  %29 = call i32 @brcmf_commonring_lock(%struct.brcmf_commonring* %28)
  %30 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i8* @brcmf_commonring_reserve_for_write_multiple(%struct.brcmf_commonring* %30, i64 %31, i64* %12)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %37 = call i32 @bphy_err(%struct.brcmf_pub* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %9, align 8
  %39 = call i32 @brcmf_commonring_unlock(%struct.brcmf_commonring* %38)
  store i64 0, i64* %4, align 8
  br label %144

40:                                               ; preds = %3
  store i64 0, i64* %18, align 8
  br label %41

41:                                               ; preds = %131, %40
  %42 = load i64, i64* %18, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %134

45:                                               ; preds = %41
  %46 = load i8*, i8** %10, align 8
  %47 = bitcast i8* %46 to %struct.msgbuf_rx_ioctl_resp_or_event*
  store %struct.msgbuf_rx_ioctl_resp_or_event* %47, %struct.msgbuf_rx_ioctl_resp_or_event** %15, align 8
  %48 = load %struct.msgbuf_rx_ioctl_resp_or_event*, %struct.msgbuf_rx_ioctl_resp_or_event** %15, align 8
  %49 = call i32 @memset(%struct.msgbuf_rx_ioctl_resp_or_event* %48, i32 0, i32 40)
  %50 = load i32, i32* @BRCMF_MSGBUF_MAX_PKT_SIZE, align 4
  %51 = call %struct.sk_buff* @brcmu_pkt_buf_get_skb(i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %11, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = icmp eq %struct.sk_buff* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %56 = call i32 @bphy_err(%struct.brcmf_pub* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %9, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %18, align 8
  %60 = sub nsw i64 %58, %59
  %61 = call i32 @brcmf_commonring_write_cancel(%struct.brcmf_commonring* %57, i64 %60)
  br label %134

62:                                               ; preds = %45
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %13, align 8
  %66 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %67 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %66, i32 0, i32 1
  %68 = load %struct.brcmf_pub*, %struct.brcmf_pub** %67, align 8
  %69 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %74 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = call i64 @brcmf_msgbuf_alloc_pktid(i32 %72, i32 %75, %struct.sk_buff* %76, i32 0, i64* %14, i64* %17)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %62
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  %82 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %83 = call i32 @bphy_err(%struct.brcmf_pub* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %9, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %18, align 8
  %87 = sub nsw i64 %85, %86
  %88 = call i32 @brcmf_commonring_write_cancel(%struct.brcmf_commonring* %84, i64 %87)
  br label %134

89:                                               ; preds = %62
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* @MSGBUF_TYPE_EVENT_BUF_POST, align 4
  %94 = load %struct.msgbuf_rx_ioctl_resp_or_event*, %struct.msgbuf_rx_ioctl_resp_or_event** %15, align 8
  %95 = getelementptr inbounds %struct.msgbuf_rx_ioctl_resp_or_event, %struct.msgbuf_rx_ioctl_resp_or_event* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 8
  br label %102

97:                                               ; preds = %89
  %98 = load i32, i32* @MSGBUF_TYPE_IOCTLRESP_BUF_POST, align 4
  %99 = load %struct.msgbuf_rx_ioctl_resp_or_event*, %struct.msgbuf_rx_ioctl_resp_or_event** %15, align 8
  %100 = getelementptr inbounds %struct.msgbuf_rx_ioctl_resp_or_event, %struct.msgbuf_rx_ioctl_resp_or_event* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i64, i64* %17, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = load %struct.msgbuf_rx_ioctl_resp_or_event*, %struct.msgbuf_rx_ioctl_resp_or_event** %15, align 8
  %107 = getelementptr inbounds %struct.msgbuf_rx_ioctl_resp_or_event, %struct.msgbuf_rx_ioctl_resp_or_event* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  %109 = load i64, i64* %14, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %16, align 4
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @cpu_to_le16(i64 %111)
  %113 = load %struct.msgbuf_rx_ioctl_resp_or_event*, %struct.msgbuf_rx_ioctl_resp_or_event** %15, align 8
  %114 = getelementptr inbounds %struct.msgbuf_rx_ioctl_resp_or_event, %struct.msgbuf_rx_ioctl_resp_or_event* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %16, align 4
  %116 = ashr i32 %115, 32
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = load %struct.msgbuf_rx_ioctl_resp_or_event*, %struct.msgbuf_rx_ioctl_resp_or_event** %15, align 8
  %119 = getelementptr inbounds %struct.msgbuf_rx_ioctl_resp_or_event, %struct.msgbuf_rx_ioctl_resp_or_event* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i8* %117, i8** %120, align 8
  %121 = load i32, i32* %16, align 4
  %122 = call i8* @cpu_to_le32(i32 %121)
  %123 = load %struct.msgbuf_rx_ioctl_resp_or_event*, %struct.msgbuf_rx_ioctl_resp_or_event** %15, align 8
  %124 = getelementptr inbounds %struct.msgbuf_rx_ioctl_resp_or_event, %struct.msgbuf_rx_ioctl_resp_or_event* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %9, align 8
  %127 = call i32 @brcmf_commonring_len_item(%struct.brcmf_commonring* %126)
  %128 = load i8*, i8** %10, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr i8, i8* %128, i64 %129
  store i8* %130, i8** %10, align 8
  br label %131

131:                                              ; preds = %102
  %132 = load i64, i64* %18, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %18, align 8
  br label %41

134:                                              ; preds = %79, %54, %41
  %135 = load i64, i64* %18, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %9, align 8
  %139 = call i32 @brcmf_commonring_write_complete(%struct.brcmf_commonring* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %9, align 8
  %142 = call i32 @brcmf_commonring_unlock(%struct.brcmf_commonring* %141)
  %143 = load i64, i64* %18, align 8
  store i64 %143, i64* %4, align 8
  br label %144

144:                                              ; preds = %140, %35
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

declare dso_local i32 @brcmf_commonring_lock(%struct.brcmf_commonring*) #1

declare dso_local i8* @brcmf_commonring_reserve_for_write_multiple(%struct.brcmf_commonring*, i64, i64*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @brcmf_commonring_unlock(%struct.brcmf_commonring*) #1

declare dso_local i32 @memset(%struct.msgbuf_rx_ioctl_resp_or_event*, i32, i32) #1

declare dso_local %struct.sk_buff* @brcmu_pkt_buf_get_skb(i32) #1

declare dso_local i32 @brcmf_commonring_write_cancel(%struct.brcmf_commonring*, i64) #1

declare dso_local i64 @brcmf_msgbuf_alloc_pktid(i32, i32, %struct.sk_buff*, i32, i64*, i64*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @brcmf_commonring_len_item(%struct.brcmf_commonring*) #1

declare dso_local i32 @brcmf_commonring_write_complete(%struct.brcmf_commonring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
