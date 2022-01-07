; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_write_probe_resp_plcp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_write_probe_resp_plcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_rate = type { i32 }
%struct.b43legacy_plcp_hdr4 = type { i64 }

@FCS_LEN = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i64, i64, %struct.ieee80211_rate*)* @b43legacy_write_probe_resp_plcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_write_probe_resp_plcp(%struct.b43legacy_wldev* %0, i64 %1, i64 %2, %struct.ieee80211_rate* %3) #0 {
  %5 = alloca %struct.b43legacy_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_rate*, align 8
  %9 = alloca %struct.b43legacy_plcp_hdr4, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_rate* %3, %struct.ieee80211_rate** %8, align 8
  %12 = getelementptr inbounds %struct.b43legacy_plcp_hdr4, %struct.b43legacy_plcp_hdr4* %9, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @FCS_LEN, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @b43legacy_generate_plcp_hdr(%struct.b43legacy_plcp_hdr4* %9, i64 %15, i32 %18)
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %21 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %26 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %33 = call i32 @ieee80211_generic_frame_duration(i32 %24, i32 %29, i32 %30, i64 %31, %struct.ieee80211_rate* %32)
  store i32 %33, i32* %11, align 4
  %34 = getelementptr inbounds %struct.b43legacy_plcp_hdr4, %struct.b43legacy_plcp_hdr4* %9, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @le32_to_cpu(i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %38 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 65535
  %42 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %37, i32 %38, i64 %39, i32 %41)
  %43 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %44 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, 2
  %47 = load i32, i32* %10, align 4
  %48 = ashr i32 %47, 16
  %49 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %43, i32 %44, i64 %46, i32 %48)
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %51 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 6
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %50, i32 %51, i64 %53, i32 %55)
  ret void
}

declare dso_local i32 @b43legacy_generate_plcp_hdr(%struct.b43legacy_plcp_hdr4*, i64, i32) #1

declare dso_local i32 @ieee80211_generic_frame_duration(i32, i32, i32, i64, %struct.ieee80211_rate*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
