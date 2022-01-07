; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_xmit.c_b43legacy_generate_txhdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_xmit.c_b43legacy_generate_txhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.b43legacy_txhdr_fw3 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_generate_txhdr(%struct.b43legacy_wldev* %0, i32* %1, i8* %2, i32 %3, %struct.ieee80211_tx_info* %4, i32 %5) #0 {
  %7 = alloca %struct.b43legacy_wldev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ieee80211_tx_info* %4, %struct.ieee80211_tx_info** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = bitcast i32* %14 to %struct.b43legacy_txhdr_fw3*
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @generate_txhdr_fw3(%struct.b43legacy_wldev* %13, %struct.b43legacy_txhdr_fw3* %15, i8* %16, i32 %17, %struct.ieee80211_tx_info* %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @generate_txhdr_fw3(%struct.b43legacy_wldev*, %struct.b43legacy_txhdr_fw3*, i8*, i32, %struct.ieee80211_tx_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
