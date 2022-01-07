; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_wa.c_b43_wa_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_wa.c_b43_wa_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i64, i32 }

@B43_PHYTYPE_G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_wa_all(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  store %struct.b43_phy* %5, %struct.b43_phy** %3, align 8
  %6 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %7 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @B43_PHYTYPE_G, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %64

11:                                               ; preds = %1
  %12 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %59 [
    i32 1, label %15
    i32 2, label %38
    i32 6, label %38
    i32 7, label %38
    i32 8, label %38
    i32 9, label %38
  ]

15:                                               ; preds = %11
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = call i32 @b43_wa_crs_ed(%struct.b43_wldev* %16)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = call i32 @b43_wa_crs_thr(%struct.b43_wldev* %18)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = call i32 @b43_wa_crs_blank(%struct.b43_wldev* %20)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = call i32 @b43_wa_cck_shiftbits(%struct.b43_wldev* %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = call i32 @b43_wa_fft(%struct.b43_wldev* %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = call i32 @b43_wa_nft(%struct.b43_wldev* %26)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = call i32 @b43_wa_rt(%struct.b43_wldev* %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = call i32 @b43_wa_nst(%struct.b43_wldev* %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @b43_wa_art(%struct.b43_wldev* %32)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = call i32 @b43_wa_wrssi_offset(%struct.b43_wldev* %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = call i32 @b43_wa_altagc(%struct.b43_wldev* %36)
  br label %61

38:                                               ; preds = %11, %11, %11, %11, %11
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = call i32 @b43_wa_tr_ltov(%struct.b43_wldev* %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = call i32 @b43_wa_crs_ed(%struct.b43_wldev* %41)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = call i32 @b43_wa_rssi_lt(%struct.b43_wldev* %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = call i32 @b43_wa_nft(%struct.b43_wldev* %45)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = call i32 @b43_wa_nst(%struct.b43_wldev* %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = call i32 @b43_wa_msst(%struct.b43_wldev* %49)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = call i32 @b43_wa_wrssi_offset(%struct.b43_wldev* %51)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = call i32 @b43_wa_altagc(%struct.b43_wldev* %53)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @b43_wa_analog(%struct.b43_wldev* %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = call i32 @b43_wa_txpuoff_rxpuon(%struct.b43_wldev* %57)
  br label %61

59:                                               ; preds = %11
  %60 = call i32 @B43_WARN_ON(i32 1)
  br label %61

61:                                               ; preds = %59, %38, %15
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = call i32 @b43_wa_boards_g(%struct.b43_wldev* %62)
  br label %66

64:                                               ; preds = %1
  %65 = call i32 @B43_WARN_ON(i32 1)
  br label %66

66:                                               ; preds = %64, %61
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = call i32 @b43_wa_cpll_nonpilot(%struct.b43_wldev* %67)
  ret void
}

declare dso_local i32 @b43_wa_crs_ed(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_crs_thr(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_crs_blank(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_cck_shiftbits(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_fft(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_nft(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_rt(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_nst(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_art(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_wrssi_offset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_altagc(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_tr_ltov(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_rssi_lt(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_msst(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_analog(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_txpuoff_rxpuon(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_wa_boards_g(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_cpll_nonpilot(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
