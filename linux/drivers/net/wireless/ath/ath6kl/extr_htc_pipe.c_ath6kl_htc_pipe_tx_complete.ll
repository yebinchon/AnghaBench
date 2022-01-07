; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.htc_target* }
%struct.htc_target = type { %struct.htc_endpoint* }
%struct.htc_endpoint = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64* }
%struct.htc_frame_hdr = type { i64 }
%struct.htc_packet = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"HTC TX lookup failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, %struct.sk_buff*)* @ath6kl_htc_pipe_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_pipe_tx_complete(%struct.ath6kl* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.htc_frame_hdr*, align 8
  %7 = alloca %struct.htc_endpoint*, align 8
  %8 = alloca %struct.htc_packet*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 0
  %13 = load %struct.htc_target*, %struct.htc_target** %12, align 8
  store %struct.htc_target* %13, %struct.htc_target** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %10, align 8
  %17 = load i64*, i64** %10, align 8
  %18 = bitcast i64* %17 to %struct.htc_frame_hdr*
  store %struct.htc_frame_hdr* %18, %struct.htc_frame_hdr** %6, align 8
  %19 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %23 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %22, i32 0, i32 0
  %24 = load %struct.htc_endpoint*, %struct.htc_endpoint** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %24, i64 %25
  store %struct.htc_endpoint* %26, %struct.htc_endpoint** %7, align 8
  %27 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %28 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call %struct.htc_packet* @htc_lookup_tx_packet(%struct.htc_target* %27, %struct.htc_endpoint* %28, %struct.sk_buff* %29)
  store %struct.htc_packet* %30, %struct.htc_packet** %8, align 8
  %31 = load %struct.htc_packet*, %struct.htc_packet** %8, align 8
  %32 = icmp eq %struct.htc_packet* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = call i32 @ath6kl_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %41

35:                                               ; preds = %2
  %36 = load %struct.htc_packet*, %struct.htc_packet** %8, align 8
  %37 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %39 = load %struct.htc_packet*, %struct.htc_packet** %8, align 8
  %40 = call i32 @send_packet_completion(%struct.htc_target* %38, %struct.htc_packet* %39)
  br label %41

41:                                               ; preds = %35, %33
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %42 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %43 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %49 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %50 = call i32 @htc_try_send(%struct.htc_target* %48, %struct.htc_endpoint* %49, i32* null)
  br label %51

51:                                               ; preds = %47, %41
  ret i32 0
}

declare dso_local %struct.htc_packet* @htc_lookup_tx_packet(%struct.htc_target*, %struct.htc_endpoint*, %struct.sk_buff*) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @send_packet_completion(%struct.htc_target*, %struct.htc_packet*) #1

declare dso_local i32 @htc_try_send(%struct.htc_target*, %struct.htc_endpoint*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
