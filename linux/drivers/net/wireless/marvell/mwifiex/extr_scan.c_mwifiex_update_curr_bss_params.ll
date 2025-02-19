; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_update_curr_bss_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_update_curr_bss_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_bss = type { i32 }
%struct.mwifiex_bssdescriptor = type { %struct.mwifiex_bssdescriptor* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.cfg80211_bss*)* @mwifiex_update_curr_bss_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_update_curr_bss_params(%struct.mwifiex_private* %0, %struct.cfg80211_bss* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mwifiex_bssdescriptor* @kzalloc(i32 8, i32 %8)
  store %struct.mwifiex_bssdescriptor* %9, %struct.mwifiex_bssdescriptor** %6, align 8
  %10 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %11 = icmp ne %struct.mwifiex_bssdescriptor* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %17 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %18 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %19 = call i32 @mwifiex_fill_new_bss_desc(%struct.mwifiex_private* %16, %struct.cfg80211_bss* %17, %struct.mwifiex_bssdescriptor* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %44

23:                                               ; preds = %15
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %25 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %26 = call i32 @mwifiex_check_network_compatibility(%struct.mwifiex_private* %24, %struct.mwifiex_bssdescriptor* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %44

30:                                               ; preds = %23
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %38 = call i32 @memcpy(i32* %36, %struct.mwifiex_bssdescriptor* %37, i32 4)
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %40 = call i32 @mwifiex_save_curr_bcn(%struct.mwifiex_private* %39)
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  br label %44

44:                                               ; preds = %30, %29, %22
  %45 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %46 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %45, i32 0, i32 0
  %47 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %46, align 8
  %48 = call i32 @kfree(%struct.mwifiex_bssdescriptor* %47)
  %49 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %50 = call i32 @kfree(%struct.mwifiex_bssdescriptor* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.mwifiex_bssdescriptor* @kzalloc(i32, i32) #1

declare dso_local i32 @mwifiex_fill_new_bss_desc(%struct.mwifiex_private*, %struct.cfg80211_bss*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i32 @mwifiex_check_network_compatibility(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.mwifiex_bssdescriptor*, i32) #1

declare dso_local i32 @mwifiex_save_curr_bcn(%struct.mwifiex_private*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.mwifiex_bssdescriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
