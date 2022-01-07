; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_rx_decrypted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_rx_decrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.sk_buff = type { i32*, i32 }
%struct.ath5k_rx_status = type { i32, i64 }
%struct.ath_common = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@AR5K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@AR5K_RXKEYIX_INVALID = common dso_local global i64 0, align 8
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.sk_buff*, %struct.ath5k_rx_status*)* @ath5k_rx_decrypted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_rx_decrypted(%struct.ath5k_hw* %0, %struct.sk_buff* %1, %struct.ath5k_rx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath5k_rx_status*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ath5k_rx_status* %2, %struct.ath5k_rx_status** %7, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %13 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %9, align 8
  %19 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %20 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AR5K_RXERR_DECRYPT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %3
  %26 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %27 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AR5K_RXKEYIX_INVALID, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  store i32 %32, i32* %4, align 4
  br label %77

33:                                               ; preds = %25, %3
  %34 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ieee80211_hdrlen(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ieee80211_has_protected(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %33
  %44 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %45 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AR5K_RXERR_DECRYPT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %54, 4
  %56 = icmp uge i32 %53, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %61, 3
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 6
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %69 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @test_bit(i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  store i32 %74, i32* %4, align 4
  br label %77

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75, %50, %43, %33
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %73, %31
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
