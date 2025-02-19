; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_init2055.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_init2055.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_radio_init2055 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_init2055(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = call i32 @b43_radio_init2055_pre(%struct.b43_wldev* %4)
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = call i64 @b43_status(%struct.b43_wldev* %6)
  %8 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = call i32 @b2055_upload_inittab(%struct.b43_wldev* %11, i32 0, i32 0)
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @b43_current_band(i32 %16)
  %18 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @b2055_upload_inittab(%struct.b43_wldev* %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %13, %10
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = call i32 @b43_radio_init2055_post(%struct.b43_wldev* %25)
  ret void
}

declare dso_local i32 @b43_radio_init2055_pre(%struct.b43_wldev*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b2055_upload_inittab(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_radio_init2055_post(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
