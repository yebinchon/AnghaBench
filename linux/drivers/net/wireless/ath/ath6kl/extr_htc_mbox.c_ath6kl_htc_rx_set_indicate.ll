; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_rx_set_indicate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_rx_set_indicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_endpoint = type { i32 }
%struct.htc_packet = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.htc_frame_hdr = type { i64 }

@HTC_RX_FLAGS_INDICATE_MORE_PKTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.htc_endpoint*, %struct.htc_packet*)* @ath6kl_htc_rx_set_indicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_rx_set_indicate(i32 %0, %struct.htc_endpoint* %1, %struct.htc_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.htc_endpoint*, align 8
  %6 = alloca %struct.htc_packet*, align 8
  %7 = alloca %struct.htc_frame_hdr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.htc_endpoint* %1, %struct.htc_endpoint** %5, align 8
  store %struct.htc_packet* %2, %struct.htc_packet** %6, align 8
  %8 = bitcast i32* %4 to %struct.htc_frame_hdr*
  store %struct.htc_frame_hdr* %8, %struct.htc_frame_hdr** %7, align 8
  %9 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %7, align 8
  %10 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %13 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %18 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %17, i32 0, i32 0
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @HTC_RX_FLAGS_INDICATE_MORE_PKTS, align 4
  %23 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %24 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %21, %16
  br label %30

30:                                               ; preds = %29, %3
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
