; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_conf_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32 }
%struct.b43_wl = type { i32, %struct.TYPE_4__*, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@b43_qos_shm_offsets = common dso_local global %struct.TYPE_4__* null, align 8
@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64, %struct.ieee80211_tx_queue_params*)* @b43_op_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_op_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %10 = alloca %struct.b43_wl*, align 8
  %11 = alloca %struct.b43_wldev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %9, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %15 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %14)
  store %struct.b43_wl* %15, %struct.b43_wl** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.b43_wl*, %struct.b43_wl** %10, align 8
  %22 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %23)
  %25 = icmp uge i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %90

27:                                               ; preds = %4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @b43_qos_shm_offsets, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %28)
  %30 = load %struct.b43_wl*, %struct.b43_wl** %10, align 8
  %31 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %32)
  %34 = icmp ne i32 %29, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  %37 = load %struct.b43_wl*, %struct.b43_wl** %10, align 8
  %38 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.b43_wl*, %struct.b43_wl** %10, align 8
  %41 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %40, i32 0, i32 2
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %41, align 8
  store %struct.b43_wldev* %42, %struct.b43_wldev** %11, align 8
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %11, align 8
  %44 = icmp ne %struct.b43_wldev* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %27
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %11, align 8
  %47 = call i64 @b43_status(%struct.b43_wldev* %46)
  %48 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %49 = icmp slt i64 %47, %48
  br label %50

50:                                               ; preds = %45, %27
  %51 = phi i1 [ true, %27 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %85

56:                                               ; preds = %50
  %57 = load %struct.b43_wl*, %struct.b43_wl** %10, align 8
  %58 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %65 = call i32 @memcpy(i32* %63, %struct.ieee80211_tx_queue_params* %64, i32 4)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %11, align 8
  %67 = call i32 @b43_mac_suspend(%struct.b43_wldev* %66)
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %11, align 8
  %69 = load %struct.b43_wl*, %struct.b43_wl** %10, align 8
  %70 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @b43_qos_shm_offsets, align 8
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @b43_qos_params_upload(%struct.b43_wldev* %68, i32* %75, i32 %81)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %11, align 8
  %84 = call i32 @b43_mac_enable(%struct.b43_wldev* %83)
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %56, %55
  %86 = load %struct.b43_wl*, %struct.b43_wl** %10, align 8
  %87 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %85, %26
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_tx_queue_params*, i32) #1

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_qos_params_upload(%struct.b43_wldev*, i32*, i32) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
