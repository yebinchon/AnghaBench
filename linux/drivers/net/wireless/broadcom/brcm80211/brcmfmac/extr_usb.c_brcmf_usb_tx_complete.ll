; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64 }
%struct.brcmf_usbreq = type { i32*, %struct.brcmf_usbdev_info* }
%struct.brcmf_usbdev_info = type { i64, i64, i32, i32, i32, i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Enter, urb->status=%d, skb=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @brcmf_usb_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_tx_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.brcmf_usbreq*, align 8
  %4 = alloca %struct.brcmf_usbdev_info*, align 8
  %5 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.brcmf_usbreq*
  store %struct.brcmf_usbreq* %9, %struct.brcmf_usbreq** %3, align 8
  %10 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %11 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %10, i32 0, i32 1
  %12 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %11, align 8
  store %struct.brcmf_usbdev_info* %12, %struct.brcmf_usbdev_info** %4, align 8
  %13 = load i32, i32* @USB, align 4
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @brcmf_dbg(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %16, i32* %19)
  %21 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %22 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %23 = call i32 @brcmf_usb_del_fromq(%struct.brcmf_usbdev_info* %21, %struct.brcmf_usbreq* %22)
  %24 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %25 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %28 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @brcmf_proto_bcdc_txcomplete(i32 %26, i32* %29, i32 %34)
  %36 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %37 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %39 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %40 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %39, i32 0, i32 5
  %41 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %42 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %43 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %42, i32 0, i32 0
  %44 = call i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info* %38, i32* %40, %struct.brcmf_usbreq* %41, i64* %43)
  %45 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %46 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %45, i32 0, i32 3
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %50 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %53 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %1
  %57 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %58 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %63 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @brcmf_proto_bcdc_txflowblock(i32 %64, i32 0)
  %66 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %67 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %56, %1
  %69 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %70 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %69, i32 0, i32 3
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, i32*) #1

declare dso_local i32 @brcmf_usb_del_fromq(%struct.brcmf_usbdev_info*, %struct.brcmf_usbreq*) #1

declare dso_local i32 @brcmf_proto_bcdc_txcomplete(i32, i32*, i32) #1

declare dso_local i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info*, i32*, %struct.brcmf_usbreq*, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @brcmf_proto_bcdc_txflowblock(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
