; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_b43_get_calib_lo_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_b43_get_calib_lo_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_lo_calib = type { i32 }
%struct.b43_wldev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.b43_txpower_lo_control* }
%struct.b43_txpower_lo_control = type { i32 }
%struct.b43_bbatt = type { i32 }
%struct.b43_rfatt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_lo_calib* (%struct.b43_wldev*, %struct.b43_bbatt*, %struct.b43_rfatt*)* @b43_get_calib_lo_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_lo_calib* @b43_get_calib_lo_settings(%struct.b43_wldev* %0, %struct.b43_bbatt* %1, %struct.b43_rfatt* %2) #0 {
  %4 = alloca %struct.b43_lo_calib*, align 8
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca %struct.b43_bbatt*, align 8
  %7 = alloca %struct.b43_rfatt*, align 8
  %8 = alloca %struct.b43_txpower_lo_control*, align 8
  %9 = alloca %struct.b43_lo_calib*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store %struct.b43_bbatt* %1, %struct.b43_bbatt** %6, align 8
  store %struct.b43_rfatt* %2, %struct.b43_rfatt** %7, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %14, align 8
  store %struct.b43_txpower_lo_control* %15, %struct.b43_txpower_lo_control** %8, align 8
  %16 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %8, align 8
  %17 = load %struct.b43_bbatt*, %struct.b43_bbatt** %6, align 8
  %18 = load %struct.b43_rfatt*, %struct.b43_rfatt** %7, align 8
  %19 = call %struct.b43_lo_calib* @b43_find_lo_calib(%struct.b43_txpower_lo_control* %16, %struct.b43_bbatt* %17, %struct.b43_rfatt* %18)
  store %struct.b43_lo_calib* %19, %struct.b43_lo_calib** %9, align 8
  %20 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %9, align 8
  %21 = icmp ne %struct.b43_lo_calib* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %9, align 8
  store %struct.b43_lo_calib* %23, %struct.b43_lo_calib** %4, align 8
  br label %39

24:                                               ; preds = %3
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %26 = load %struct.b43_bbatt*, %struct.b43_bbatt** %6, align 8
  %27 = load %struct.b43_rfatt*, %struct.b43_rfatt** %7, align 8
  %28 = call %struct.b43_lo_calib* @b43_calibrate_lo_setting(%struct.b43_wldev* %25, %struct.b43_bbatt* %26, %struct.b43_rfatt* %27)
  store %struct.b43_lo_calib* %28, %struct.b43_lo_calib** %9, align 8
  %29 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %9, align 8
  %30 = icmp ne %struct.b43_lo_calib* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store %struct.b43_lo_calib* null, %struct.b43_lo_calib** %4, align 8
  br label %39

32:                                               ; preds = %24
  %33 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %9, align 8
  %34 = getelementptr inbounds %struct.b43_lo_calib, %struct.b43_lo_calib* %33, i32 0, i32 0
  %35 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %8, align 8
  %36 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %35, i32 0, i32 0
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %9, align 8
  store %struct.b43_lo_calib* %38, %struct.b43_lo_calib** %4, align 8
  br label %39

39:                                               ; preds = %32, %31, %22
  %40 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %4, align 8
  ret %struct.b43_lo_calib* %40
}

declare dso_local %struct.b43_lo_calib* @b43_find_lo_calib(%struct.b43_txpower_lo_control*, %struct.b43_bbatt*, %struct.b43_rfatt*) #1

declare dso_local %struct.b43_lo_calib* @b43_calibrate_lo_setting(%struct.b43_wldev*, %struct.b43_bbatt*, %struct.b43_rfatt*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
