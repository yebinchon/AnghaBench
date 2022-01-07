; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_set_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.obj_ssid = type { i32, i32 }

@E2BIG = common dso_local global i32 0, align 4
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@DOT11_OID_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism54_set_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_set_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.obj_ssid, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = getelementptr inbounds %struct.obj_ssid, %struct.obj_ssid* %11, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memset(i32 %15, i32 0, i32 33)
  %17 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %18 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %4
  %22 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %23 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %28 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @E2BIG, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %62

34:                                               ; preds = %26
  %35 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %36 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.obj_ssid, %struct.obj_ssid* %11, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.obj_ssid, %struct.obj_ssid* %11, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %43 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i32 %40, i8* %41, i32 %44)
  br label %48

46:                                               ; preds = %21, %4
  %47 = getelementptr inbounds %struct.obj_ssid, %struct.obj_ssid* %11, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %34
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IW_MODE_MONITOR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = load i32, i32* @DOT11_OID_SSID, align 4
  %57 = call i32 @mgt_set_request(%struct.TYPE_5__* %55, i32 %56, i32 0, %struct.obj_ssid* %11)
  store i32 %57, i32* %5, align 4
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = load i32, i32* @DOT11_OID_SSID, align 4
  %61 = call i32 @mgt_set(%struct.TYPE_5__* %59, i32 %60, %struct.obj_ssid* %11)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %54, %31
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mgt_set_request(%struct.TYPE_5__*, i32, i32, %struct.obj_ssid*) #1

declare dso_local i32 @mgt_set(%struct.TYPE_5__*, i32, %struct.obj_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
