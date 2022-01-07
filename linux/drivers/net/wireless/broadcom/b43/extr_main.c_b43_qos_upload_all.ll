; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_qos_upload_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_qos_upload_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_qos_params = type { i32 }
%struct.b43_wldev = type { i32, %struct.b43_wl* }
%struct.b43_wl = type { %struct.b43_qos_params* }

@b43_qos_shm_offsets = common dso_local global %struct.b43_qos_params* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_qos_upload_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_qos_upload_all(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_wl*, align 8
  %4 = alloca %struct.b43_qos_params*, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 1
  %8 = load %struct.b43_wl*, %struct.b43_wl** %7, align 8
  store %struct.b43_wl* %8, %struct.b43_wl** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.b43_qos_params*, %struct.b43_qos_params** @b43_qos_shm_offsets, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.b43_qos_params* %15)
  %17 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %18 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %17, i32 0, i32 0
  %19 = load %struct.b43_qos_params*, %struct.b43_qos_params** %18, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.b43_qos_params* %19)
  %21 = icmp ne i32 %16, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = call i32 @b43_mac_suspend(%struct.b43_wldev* %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %50, %14
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %29 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %28, i32 0, i32 0
  %30 = load %struct.b43_qos_params*, %struct.b43_qos_params** %29, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.b43_qos_params* %30)
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %35 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %34, i32 0, i32 0
  %36 = load %struct.b43_qos_params*, %struct.b43_qos_params** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.b43_qos_params, %struct.b43_qos_params* %36, i64 %38
  store %struct.b43_qos_params* %39, %struct.b43_qos_params** %4, align 8
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load %struct.b43_qos_params*, %struct.b43_qos_params** %4, align 8
  %42 = getelementptr inbounds %struct.b43_qos_params, %struct.b43_qos_params* %41, i32 0, i32 0
  %43 = load %struct.b43_qos_params*, %struct.b43_qos_params** @b43_qos_shm_offsets, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.b43_qos_params, %struct.b43_qos_params* %43, i64 %45
  %47 = getelementptr inbounds %struct.b43_qos_params, %struct.b43_qos_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @b43_qos_params_upload(%struct.b43_wldev* %40, i32* %42, i32 %48)
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %26

53:                                               ; preds = %26
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = call i32 @b43_mac_enable(%struct.b43_wldev* %54)
  br label %56

56:                                               ; preds = %53, %13
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.b43_qos_params*) #1

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_qos_params_upload(%struct.b43_wldev*, i32*, i32) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
