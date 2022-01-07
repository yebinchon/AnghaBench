; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }
%struct.ssb_device_id = type { i32 }
%struct.b43legacy_wl = type { i32 }

@b43legacy_request_firmware = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*, %struct.ssb_device_id*)* @b43legacy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_probe(%struct.ssb_device* %0, %struct.ssb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca %struct.ssb_device_id*, align 8
  %6 = alloca %struct.b43legacy_wl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store %struct.ssb_device_id* %1, %struct.ssb_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %10 = call %struct.b43legacy_wl* @ssb_get_devtypedata(%struct.ssb_device* %9)
  store %struct.b43legacy_wl* %10, %struct.b43legacy_wl** %6, align 8
  %11 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %12 = icmp ne %struct.b43legacy_wl* %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %14 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %15 = call i32 @b43legacy_wireless_init(%struct.ssb_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %42

19:                                               ; preds = %13
  %20 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %21 = call %struct.b43legacy_wl* @ssb_get_devtypedata(%struct.ssb_device* %20)
  store %struct.b43legacy_wl* %21, %struct.b43legacy_wl** %6, align 8
  %22 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %23 = icmp ne %struct.b43legacy_wl* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @B43legacy_WARN_ON(i32 %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %29 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %30 = call i32 @b43legacy_one_core_attach(%struct.ssb_device* %28, %struct.b43legacy_wl* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %44

34:                                               ; preds = %27
  %35 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %36 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %35, i32 0, i32 0
  %37 = load i32, i32* @b43legacy_request_firmware, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %40 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %39, i32 0, i32 0
  %41 = call i32 @schedule_work(i32* %40)
  br label %42

42:                                               ; preds = %34, %18
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %49 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %50 = call i32 @b43legacy_wireless_exit(%struct.ssb_device* %48, %struct.b43legacy_wl* %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.b43legacy_wl* @ssb_get_devtypedata(%struct.ssb_device*) #1

declare dso_local i32 @b43legacy_wireless_init(%struct.ssb_device*) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_one_core_attach(%struct.ssb_device*, %struct.b43legacy_wl*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @b43legacy_wireless_exit(%struct.ssb_device*, %struct.b43legacy_wl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
