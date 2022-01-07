; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_timers_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_timers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i8*, i32, i8* }

@brcms_c_watchdog_by_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"wl%d:  wl_init_timer for wdtimer failed\0A\00", align 1
@brcms_c_radio_timer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"wl%d:  wl_init_timer for radio_timer failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i32)* @brcms_c_timers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_timers_init(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @brcms_c_watchdog_by_timer, align 4
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %11 = call i8* @brcms_init_timer(i32 %8, i32 %9, %struct.brcms_c_info* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %15 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %20 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @wiphy_err(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %26 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @brcms_c_radio_timer, align 4
  %29 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %30 = call i8* @brcms_init_timer(i32 %27, i32 %28, %struct.brcms_c_info* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %32 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %34 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %24
  %38 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %39 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @wiphy_err(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %44

43:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %37, %18
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i8* @brcms_init_timer(i32, i32, %struct.brcms_c_info*, i8*) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
