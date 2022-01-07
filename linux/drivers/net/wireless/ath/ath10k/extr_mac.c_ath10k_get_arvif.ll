; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_get_arvif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_get_arvif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32 }
%struct.ath10k = type { i32 }
%struct.ath10k_vif_iter = type { %struct.ath10k_vif*, i32 }

@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@ath10k_get_arvif_iter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No VIF found for vdev %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k_vif_iter, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @memset(%struct.ath10k_vif_iter* %6, i32 0, i32 16)
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.ath10k_vif_iter, %struct.ath10k_vif_iter* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ath10k_get_arvif_iter, align 4
  %17 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %14, i32 %15, i32 %16, %struct.ath10k_vif_iter* %6)
  %18 = getelementptr inbounds %struct.ath10k_vif_iter, %struct.ath10k_vif_iter* %6, i32 0, i32 0
  %19 = load %struct.ath10k_vif*, %struct.ath10k_vif** %18, align 8
  %20 = icmp ne %struct.ath10k_vif* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ath10k_warn(%struct.ath10k* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  store %struct.ath10k_vif* null, %struct.ath10k_vif** %3, align 8
  br label %28

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.ath10k_vif_iter, %struct.ath10k_vif_iter* %6, i32 0, i32 0
  %27 = load %struct.ath10k_vif*, %struct.ath10k_vif** %26, align 8
  store %struct.ath10k_vif* %27, %struct.ath10k_vif** %3, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  ret %struct.ath10k_vif* %29
}

declare dso_local i32 @memset(%struct.ath10k_vif_iter*, i32, i32) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.ath10k_vif_iter*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
