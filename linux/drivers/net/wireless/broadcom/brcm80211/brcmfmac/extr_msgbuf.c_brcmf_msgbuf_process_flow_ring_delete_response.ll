; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_flow_ring_delete_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_flow_ring_delete_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.msgbuf_flowring_delete_resp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BRCMF_H2D_MSGRING_FLOWRING_IDSTART = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Flowring deletion failed, code %d\0A\00", align 1
@MSGBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Flowring %d Delete response status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*, i8*)* @brcmf_msgbuf_process_flow_ring_delete_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_process_flow_ring_delete_response(%struct.brcmf_msgbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.brcmf_msgbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.msgbuf_flowring_delete_resp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %9, i32 0, i32 1
  %11 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  store %struct.brcmf_pub* %11, %struct.brcmf_pub** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.msgbuf_flowring_delete_resp*
  store %struct.msgbuf_flowring_delete_resp* %13, %struct.msgbuf_flowring_delete_resp** %6, align 8
  %14 = load %struct.msgbuf_flowring_delete_resp*, %struct.msgbuf_flowring_delete_resp** %6, align 8
  %15 = getelementptr inbounds %struct.msgbuf_flowring_delete_resp, %struct.msgbuf_flowring_delete_resp* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le16_to_cpu(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* @BRCMF_H2D_MSGRING_FLOWRING_IDSTART, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub nsw i64 %20, %19
  store i64 %21, i64* %8, align 8
  %22 = load %struct.msgbuf_flowring_delete_resp*, %struct.msgbuf_flowring_delete_resp** %6, align 8
  %23 = getelementptr inbounds %struct.msgbuf_flowring_delete_resp, %struct.msgbuf_flowring_delete_resp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @bphy_err(%struct.brcmf_pub* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %34 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @brcmf_flowring_delete(i32 %35, i64 %36)
  br label %46

38:                                               ; preds = %2
  %39 = load i32, i32* @MSGBUF, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @brcmf_dbg(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @brcmf_msgbuf_remove_flowring(%struct.brcmf_msgbuf* %43, i64 %44)
  br label %46

46:                                               ; preds = %38, %29
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

declare dso_local i32 @brcmf_flowring_delete(i32, i64) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @brcmf_msgbuf_remove_flowring(%struct.brcmf_msgbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
