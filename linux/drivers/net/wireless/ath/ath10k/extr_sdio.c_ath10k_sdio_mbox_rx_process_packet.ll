; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rx_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rx_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htc }
%struct.ath10k_htc = type { i32 }
%struct.ath10k_sdio_rx_data = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.ath10k_htc_hdr = type { i32, i64, i32 }

@ATH10K_HTC_FLAG_TRAILER_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_sdio_rx_data*, i32*, i32*)* @ath10k_sdio_mbox_rx_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_rx_process_packet(%struct.ath10k* %0, %struct.ath10k_sdio_rx_data* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_sdio_rx_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ath10k_htc*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ath10k_htc_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.ath10k_sdio_rx_data* %1, %struct.ath10k_sdio_rx_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  store %struct.ath10k_htc* %18, %struct.ath10k_htc** %10, align 8
  %19 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %7, align 8
  %20 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %19, i32 0, i32 1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ath10k_htc_hdr*
  store %struct.ath10k_htc_hdr* %25, %struct.ath10k_htc_hdr** %12, align 8
  %26 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %12, align 8
  %27 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ATH10K_HTC_FLAG_TRAILER_PRESENT, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %36, %40
  %42 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %12, align 8
  %43 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %15, align 8
  %47 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %12, align 8
  %48 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pipe_id_to_eid(i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.ath10k_htc*, %struct.ath10k_htc** %10, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %12, align 8
  %54 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @ath10k_htc_process_trailer(%struct.ath10k_htc* %51, i32* %52, i64 %55, i32 %56, i32* %57, i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %33
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %5, align 4
  br label %85

64:                                               ; preds = %33
  %65 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %7, align 8
  %66 = call i64 @is_trailer_only_msg(%struct.ath10k_sdio_rx_data* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %7, align 8
  %70 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %12, align 8
  %78 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = call i32 @skb_trim(%struct.sk_buff* %72, i64 %80)
  br label %82

82:                                               ; preds = %71, %4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %84 = call i32 @skb_pull(%struct.sk_buff* %83, i32 24)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %62
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @pipe_id_to_eid(i32) #1

declare dso_local i32 @ath10k_htc_process_trailer(%struct.ath10k_htc*, i32*, i64, i32, i32*, i32*) #1

declare dso_local i64 @is_trailer_only_msg(%struct.ath10k_sdio_rx_data*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
