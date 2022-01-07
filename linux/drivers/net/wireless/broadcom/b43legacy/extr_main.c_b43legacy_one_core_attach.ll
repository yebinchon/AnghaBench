; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_one_core_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_one_core_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }
%struct.b43legacy_wl = type { i32, i32 }
%struct.b43legacy_wldev = type { i32, i32, i32, i32, %struct.b43legacy_wl*, %struct.ssb_device* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@B43legacy_STAT_UNINIT = common dso_local global i32 0, align 4
@modparam_bad_frames_preempt = common dso_local global i32 0, align 4
@b43legacy_interrupt_tasklet = common dso_local global i64 0, align 8
@modparam_pio = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*, %struct.b43legacy_wl*)* @b43legacy_one_core_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_one_core_attach(%struct.ssb_device* %0, %struct.b43legacy_wl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca %struct.b43legacy_wl*, align 8
  %6 = alloca %struct.b43legacy_wldev*, align 8
  %7 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store %struct.b43legacy_wl* %1, %struct.b43legacy_wl** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.b43legacy_wldev* @kzalloc(i32 32, i32 %10)
  store %struct.b43legacy_wldev* %11, %struct.b43legacy_wldev** %6, align 8
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %13 = icmp ne %struct.b43legacy_wldev* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %18 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %17, i32 0, i32 5
  store %struct.ssb_device* %16, %struct.ssb_device** %18, align 8
  %19 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %21 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %20, i32 0, i32 4
  store %struct.b43legacy_wl* %19, %struct.b43legacy_wl** %21, align 8
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %23 = load i32, i32* @B43legacy_STAT_UNINIT, align 4
  %24 = call i32 @b43legacy_set_status(%struct.b43legacy_wldev* %22, i32 %23)
  %25 = load i32, i32* @modparam_bad_frames_preempt, align 4
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %27 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %29 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %28, i32 0, i32 2
  %30 = load i64, i64* @b43legacy_interrupt_tasklet, align 8
  %31 = inttoptr i64 %30 to void (i64)*
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %33 = ptrtoint %struct.b43legacy_wldev* %32 to i64
  %34 = call i32 @tasklet_init(i32* %29, void (i64)* %31, i64 %33)
  %35 = load i64, i64* @modparam_pio, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %15
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %39 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %15
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %42 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %41, i32 0, i32 1
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %45 = call i32 @b43legacy_wireless_core_attach(%struct.b43legacy_wldev* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %66

49:                                               ; preds = %40
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %51 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %50, i32 0, i32 1
  %52 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %53 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %52, i32 0, i32 1
  %54 = call i32 @list_add(i32* %51, i32* %53)
  %55 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %56 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %60 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %61 = call i32 @ssb_set_drvdata(%struct.ssb_device* %59, %struct.b43legacy_wldev* %60)
  %62 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %63 = call i32 @b43legacy_debugfs_add_device(%struct.b43legacy_wldev* %62)
  br label %64

64:                                               ; preds = %49, %14
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %48
  %67 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %68 = call i32 @kfree(%struct.b43legacy_wldev* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %64
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.b43legacy_wldev* @kzalloc(i32, i32) #1

declare dso_local i32 @b43legacy_set_status(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @b43legacy_wireless_core_attach(%struct.b43legacy_wldev*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ssb_set_drvdata(%struct.ssb_device*, %struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_debugfs_add_device(%struct.b43legacy_wldev*) #1

declare dso_local i32 @kfree(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
