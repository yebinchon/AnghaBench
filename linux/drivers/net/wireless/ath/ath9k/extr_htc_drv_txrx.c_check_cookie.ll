; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_check_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_check_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { i64 }
%struct.tx_mgmt_hdr = type { i64 }
%struct.tx_frame_hdr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.sk_buff*, i64, i64)* @check_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cookie(%struct.ath9k_htc_priv* %0, %struct.sk_buff* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath9k_htc_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tx_mgmt_hdr*, align 8
  %12 = alloca %struct.tx_frame_hdr*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.tx_mgmt_hdr*
  store %struct.tx_mgmt_hdr* %22, %struct.tx_mgmt_hdr** %11, align 8
  %23 = load %struct.tx_mgmt_hdr*, %struct.tx_mgmt_hdr** %11, align 8
  %24 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  br label %65

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %56, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %41 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %53 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50, %44, %38, %32, %26
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.tx_frame_hdr*
  store %struct.tx_frame_hdr* %60, %struct.tx_frame_hdr** %12, align 8
  %61 = load %struct.tx_frame_hdr*, %struct.tx_frame_hdr** %12, align 8
  %62 = getelementptr inbounds %struct.tx_frame_hdr, %struct.tx_frame_hdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %56, %50
  br label %65

65:                                               ; preds = %64, %18
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  br label %71

70:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
