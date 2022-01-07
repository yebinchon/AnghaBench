; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_ioctl_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_ioctl_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i64, i32, i64, i64 }
%struct.msgbuf_ioctl_resp_hdr = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*, i8*)* @brcmf_msgbuf_process_ioctl_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_process_ioctl_complete(%struct.brcmf_msgbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.brcmf_msgbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.msgbuf_ioctl_resp_hdr*, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.msgbuf_ioctl_resp_hdr*
  store %struct.msgbuf_ioctl_resp_hdr* %7, %struct.msgbuf_ioctl_resp_hdr** %5, align 8
  %8 = load %struct.msgbuf_ioctl_resp_hdr*, %struct.msgbuf_ioctl_resp_hdr** %5, align 8
  %9 = getelementptr inbounds %struct.msgbuf_ioctl_resp_hdr, %struct.msgbuf_ioctl_resp_hdr* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @le16_to_cpu(i32 %11)
  %13 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %13, i32 0, i32 3
  store i64 %12, i64* %14, align 8
  %15 = load %struct.msgbuf_ioctl_resp_hdr*, %struct.msgbuf_ioctl_resp_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.msgbuf_ioctl_resp_hdr, %struct.msgbuf_ioctl_resp_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le16_to_cpu(i32 %17)
  %19 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %20 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.msgbuf_ioctl_resp_hdr*, %struct.msgbuf_ioctl_resp_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.msgbuf_ioctl_resp_hdr, %struct.msgbuf_ioctl_resp_hdr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %27 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %29 = call i32 @brcmf_msgbuf_ioctl_resp_wake(%struct.brcmf_msgbuf* %28)
  %30 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %31 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %36 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %34, %2
  %40 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %41 = call i32 @brcmf_msgbuf_rxbuf_ioctlresp_post(%struct.brcmf_msgbuf* %40)
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brcmf_msgbuf_ioctl_resp_wake(%struct.brcmf_msgbuf*) #1

declare dso_local i32 @brcmf_msgbuf_rxbuf_ioctlresp_post(%struct.brcmf_msgbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
