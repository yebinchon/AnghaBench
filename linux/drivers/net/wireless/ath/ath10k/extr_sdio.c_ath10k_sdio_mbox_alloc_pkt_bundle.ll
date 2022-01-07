; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_alloc_pkt_bundle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_alloc_pkt_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio_rx_data = type { i32 }
%struct.ath10k_htc_hdr = type { i32, i32 }

@ATH10K_HTC_FLAG_BUNDLE_MASK = common dso_local global i32 0, align 4
@HTC_HOST_MAX_MSG_PER_RX_BUNDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"HTC bundle length %u exceeds maximum %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_sdio_rx_data*, %struct.ath10k_htc_hdr*, i64, i64, i64*)* @ath10k_sdio_mbox_alloc_pkt_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_alloc_pkt_bundle(%struct.ath10k* %0, %struct.ath10k_sdio_rx_data* %1, %struct.ath10k_htc_hdr* %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca %struct.ath10k_sdio_rx_data*, align 8
  %10 = alloca %struct.ath10k_htc_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %8, align 8
  store %struct.ath10k_sdio_rx_data* %1, %struct.ath10k_sdio_rx_data** %9, align 8
  store %struct.ath10k_htc_hdr* %2, %struct.ath10k_htc_hdr** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* @ATH10K_HTC_FLAG_BUNDLE_MASK, align 4
  %17 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %10, align 8
  %18 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @FIELD_GET(i32 %16, i32 %19)
  %21 = load i64*, i64** %13, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i64*, i64** %13, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HTC_HOST_MAX_MSG_PER_RX_BUNDLE, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %6
  %27 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %28 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %10, align 8
  %29 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = load i64, i64* @HTC_HOST_MAX_MSG_PER_RX_BUNDLE, align 8
  %33 = call i32 @ath10k_warn(%struct.ath10k* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %60

36:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %13, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %9, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %44, i64 %46
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @ath10k_sdio_mbox_alloc_rx_pkt(%struct.ath10k_sdio_rx_data* %47, i64 %48, i64 %49, i32 1, i32 0)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %7, align 4
  br label %60

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %37

59:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %53, %26
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_sdio_mbox_alloc_rx_pkt(%struct.ath10k_sdio_rx_data*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
