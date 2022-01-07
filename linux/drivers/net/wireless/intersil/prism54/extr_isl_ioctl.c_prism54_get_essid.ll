; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.obj_ssid = type { i8*, i64 }
%union.oid_res_t = type { %struct.obj_ssid* }

@DOT11_OID_SSID = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism54_get_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_get_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.obj_ssid*, align 8
  %11 = alloca %union.oid_res_t, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32* @netdev_priv(%struct.net_device* %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* @DOT11_OID_SSID, align 4
  %17 = call i32 @mgt_get_request(i32* %15, i32 %16, i32 0, i32* null, %union.oid_res_t* %11)
  store i32 %17, i32* %12, align 4
  %18 = bitcast %union.oid_res_t* %11 to %struct.obj_ssid**
  %19 = load %struct.obj_ssid*, %struct.obj_ssid** %18, align 8
  store %struct.obj_ssid* %19, %struct.obj_ssid** %10, align 8
  %20 = load %struct.obj_ssid*, %struct.obj_ssid** %10, align 8
  %21 = getelementptr inbounds %struct.obj_ssid, %struct.obj_ssid* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i64, i64* @IW_ESSID_MAX_SIZE, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.obj_ssid*, %struct.obj_ssid** %10, align 8
  %30 = getelementptr inbounds %struct.obj_ssid, %struct.obj_ssid* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @min(i32 %28, i64 %31)
  %33 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %34 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %40

35:                                               ; preds = %4
  %36 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %37 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %39 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %35, %24
  %41 = load %struct.obj_ssid*, %struct.obj_ssid** %10, align 8
  %42 = getelementptr inbounds %struct.obj_ssid, %struct.obj_ssid* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %45 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.obj_ssid*, %struct.obj_ssid** %10, align 8
  %50 = getelementptr inbounds %struct.obj_ssid, %struct.obj_ssid* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %53 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @memcpy(i8* %48, i8* %51, i64 %54)
  %56 = load %struct.obj_ssid*, %struct.obj_ssid** %10, align 8
  %57 = call i32 @kfree(%struct.obj_ssid* %56)
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mgt_get_request(i32*, i32, i32, i32*, %union.oid_res_t*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.obj_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
