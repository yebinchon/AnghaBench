; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_tx_prep_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_tx_prep_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_packet = type { i32, i64, i64 }
%struct.htc_frame_hdr = type { i32*, i32, i32, i32 }

@HTC_HDR_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_packet*, i32, i32, i32)* @ath6kl_htc_tx_prep_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_tx_prep_pkt(%struct.htc_packet* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.htc_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.htc_frame_hdr*, align 8
  store %struct.htc_packet* %0, %struct.htc_packet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @HTC_HDR_LENGTH, align 8
  %11 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %12 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %16 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.htc_frame_hdr*
  store %struct.htc_frame_hdr* %18, %struct.htc_frame_hdr** %9, align 8
  %19 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %20 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %24 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %23, i32 0, i32 3
  %25 = call i32 @put_unaligned(i32 %22, i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %30 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %33 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %36 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %41 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  ret void
}

declare dso_local i32 @put_unaligned(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
