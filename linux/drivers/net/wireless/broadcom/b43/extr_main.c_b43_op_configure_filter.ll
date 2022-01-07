; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43_wl = type { i32, i32, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @b43_op_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_op_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_wl*, align 8
  %10 = alloca %struct.b43_wldev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %11)
  store %struct.b43_wl* %12, %struct.b43_wl** %9, align 8
  %13 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %14 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %17 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %16, i32 0, i32 2
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %17, align 8
  store %struct.b43_wldev* %18, %struct.b43_wldev** %10, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %20 = icmp ne %struct.b43_wldev* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  br label %66

23:                                               ; preds = %4
  %24 = load i32, i32* @FIF_ALLMULTI, align 4
  %25 = load i32, i32* @FIF_FCSFAIL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FIF_PLCPFAIL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FIF_CONTROL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FIF_OTHER_BSS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %34 = or i32 %32, %33
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @FIF_ALLMULTI, align 4
  %39 = load i32, i32* @FIF_FCSFAIL, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FIF_PLCPFAIL, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FIF_CONTROL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FIF_OTHER_BSS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %54 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %23
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %59 = call i64 @b43_status(%struct.b43_wldev* %58)
  %60 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %64 = call i32 @b43_adjust_opmode(%struct.b43_wldev* %63)
  br label %65

65:                                               ; preds = %62, %57, %23
  br label %66

66:                                               ; preds = %65, %21
  %67 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %68 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  ret void
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43_adjust_opmode(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
