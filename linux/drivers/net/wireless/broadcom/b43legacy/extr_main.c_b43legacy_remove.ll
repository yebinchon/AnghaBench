; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }
%struct.b43legacy_wl = type { i32, i32, %struct.b43legacy_wldev*, i32 }
%struct.b43legacy_wldev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_device*)* @b43legacy_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_remove(%struct.ssb_device* %0) #0 {
  %2 = alloca %struct.ssb_device*, align 8
  %3 = alloca %struct.b43legacy_wl*, align 8
  %4 = alloca %struct.b43legacy_wldev*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %2, align 8
  %5 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %6 = call %struct.b43legacy_wl* @ssb_get_devtypedata(%struct.ssb_device* %5)
  store %struct.b43legacy_wl* %6, %struct.b43legacy_wl** %3, align 8
  %7 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %8 = call %struct.b43legacy_wldev* @ssb_get_drvdata(%struct.ssb_device* %7)
  store %struct.b43legacy_wldev* %8, %struct.b43legacy_wldev** %4, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 2
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %12, i32 0, i32 3
  %14 = call i32 @cancel_work_sync(i32* %13)
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %16 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %15, i32 0, i32 1
  %17 = call i32 @complete(i32* %16)
  %18 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %19 = icmp ne %struct.b43legacy_wl* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @B43legacy_WARN_ON(i32 %21)
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %24 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %51

29:                                               ; preds = %1
  %30 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %31 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %30, i32 0, i32 2
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %31, align 8
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %34 = icmp eq %struct.b43legacy_wldev* %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %37 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ieee80211_unregister_hw(i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %42 = call i32 @b43legacy_one_core_detach(%struct.ssb_device* %41)
  %43 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %44 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %43, i32 0, i32 0
  %45 = call i64 @list_empty(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %49 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %50 = call i32 @b43legacy_wireless_exit(%struct.ssb_device* %48, %struct.b43legacy_wl* %49)
  br label %51

51:                                               ; preds = %28, %47, %40
  ret void
}

declare dso_local %struct.b43legacy_wl* @ssb_get_devtypedata(%struct.ssb_device*) #1

declare dso_local %struct.b43legacy_wldev* @ssb_get_drvdata(%struct.ssb_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @ieee80211_unregister_hw(i32) #1

declare dso_local i32 @b43legacy_one_core_detach(%struct.ssb_device*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @b43legacy_wireless_exit(%struct.ssb_device*, %struct.b43legacy_wl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
