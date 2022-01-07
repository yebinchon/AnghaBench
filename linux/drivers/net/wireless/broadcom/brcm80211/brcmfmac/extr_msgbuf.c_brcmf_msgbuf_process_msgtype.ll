; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_msgtype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_msgtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.msgbuf_common_hdr = type { i32 }

@MSGBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MSGBUF_TYPE_GEN_STATUS\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MSGBUF_TYPE_RING_STATUS\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"MSGBUF_TYPE_FLOW_RING_CREATE_CMPLT\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"MSGBUF_TYPE_FLOW_RING_DELETE_CMPLT\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"MSGBUF_TYPE_IOCTLPTR_REQ_ACK\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"MSGBUF_TYPE_IOCTL_CMPLT\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"MSGBUF_TYPE_WL_EVENT\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"MSGBUF_TYPE_TX_STATUS\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"MSGBUF_TYPE_RX_CMPLT\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Unsupported msgtype %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*, i8*)* @brcmf_msgbuf_process_msgtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_process_msgtype(%struct.brcmf_msgbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.brcmf_msgbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.msgbuf_common_hdr*, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %8 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %7, i32 0, i32 0
  %9 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  store %struct.brcmf_pub* %9, %struct.brcmf_pub** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.msgbuf_common_hdr*
  store %struct.msgbuf_common_hdr* %11, %struct.msgbuf_common_hdr** %6, align 8
  %12 = load %struct.msgbuf_common_hdr*, %struct.msgbuf_common_hdr** %6, align 8
  %13 = getelementptr inbounds %struct.msgbuf_common_hdr, %struct.msgbuf_common_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %66 [
    i32 134, label %15
    i32 131, label %21
    i32 136, label %27
    i32 135, label %33
    i32 133, label %39
    i32 132, label %42
    i32 128, label %48
    i32 129, label %54
    i32 130, label %60
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @MSGBUF, align 4
  %17 = call i32 @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @brcmf_msgbuf_process_gen_status(%struct.brcmf_msgbuf* %18, i8* %19)
  br label %72

21:                                               ; preds = %2
  %22 = load i32, i32* @MSGBUF, align 4
  %23 = call i32 @brcmf_dbg(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @brcmf_msgbuf_process_ring_status(%struct.brcmf_msgbuf* %24, i8* %25)
  br label %72

27:                                               ; preds = %2
  %28 = load i32, i32* @MSGBUF, align 4
  %29 = call i32 @brcmf_dbg(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @brcmf_msgbuf_process_flow_ring_create_response(%struct.brcmf_msgbuf* %30, i8* %31)
  br label %72

33:                                               ; preds = %2
  %34 = load i32, i32* @MSGBUF, align 4
  %35 = call i32 @brcmf_dbg(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @brcmf_msgbuf_process_flow_ring_delete_response(%struct.brcmf_msgbuf* %36, i8* %37)
  br label %72

39:                                               ; preds = %2
  %40 = load i32, i32* @MSGBUF, align 4
  %41 = call i32 @brcmf_dbg(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %72

42:                                               ; preds = %2
  %43 = load i32, i32* @MSGBUF, align 4
  %44 = call i32 @brcmf_dbg(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @brcmf_msgbuf_process_ioctl_complete(%struct.brcmf_msgbuf* %45, i8* %46)
  br label %72

48:                                               ; preds = %2
  %49 = load i32, i32* @MSGBUF, align 4
  %50 = call i32 @brcmf_dbg(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %51 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @brcmf_msgbuf_process_event(%struct.brcmf_msgbuf* %51, i8* %52)
  br label %72

54:                                               ; preds = %2
  %55 = load i32, i32* @MSGBUF, align 4
  %56 = call i32 @brcmf_dbg(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %57 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @brcmf_msgbuf_process_txstatus(%struct.brcmf_msgbuf* %57, i8* %58)
  br label %72

60:                                               ; preds = %2
  %61 = load i32, i32* @MSGBUF, align 4
  %62 = call i32 @brcmf_dbg(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %63 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @brcmf_msgbuf_process_rx_complete(%struct.brcmf_msgbuf* %63, i8* %64)
  br label %72

66:                                               ; preds = %2
  %67 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %68 = load %struct.msgbuf_common_hdr*, %struct.msgbuf_common_hdr** %6, align 8
  %69 = getelementptr inbounds %struct.msgbuf_common_hdr, %struct.msgbuf_common_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bphy_err(%struct.brcmf_pub* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %66, %60, %54, %48, %42, %39, %33, %27, %21, %15
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_msgbuf_process_gen_status(%struct.brcmf_msgbuf*, i8*) #1

declare dso_local i32 @brcmf_msgbuf_process_ring_status(%struct.brcmf_msgbuf*, i8*) #1

declare dso_local i32 @brcmf_msgbuf_process_flow_ring_create_response(%struct.brcmf_msgbuf*, i8*) #1

declare dso_local i32 @brcmf_msgbuf_process_flow_ring_delete_response(%struct.brcmf_msgbuf*, i8*) #1

declare dso_local i32 @brcmf_msgbuf_process_ioctl_complete(%struct.brcmf_msgbuf*, i8*) #1

declare dso_local i32 @brcmf_msgbuf_process_event(%struct.brcmf_msgbuf*, i8*) #1

declare dso_local i32 @brcmf_msgbuf_process_txstatus(%struct.brcmf_msgbuf*, i8*) #1

declare dso_local i32 @brcmf_msgbuf_process_rx_complete(%struct.brcmf_msgbuf*, i8*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
