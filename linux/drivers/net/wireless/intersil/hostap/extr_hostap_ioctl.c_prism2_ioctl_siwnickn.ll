; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwnickn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwnickn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 (%struct.net_device*)* }

@HFA384X_RID_CNFOWNNAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism2_ioctl_siwnickn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_siwnickn(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %12)
  store %struct.hostap_interface* %13, %struct.hostap_interface** %10, align 8
  %14 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %15 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %11, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @memset(i32 %19, i32 0, i32 4)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32 %23, i8* %24, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load i32, i32* @HFA384X_RID_CNFOWNNAME, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @hostap_set_string(%struct.net_device* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = call i64 %43(%struct.net_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38, %4
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %51

50:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @hostap_set_string(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
