; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.obj_bsslist = type { i32*, i64 }
%union.oid_res_t = type { %struct.obj_bsslist* }

@PRV_STATE_INIT = common dso_local global i64 0, align 8
@DOT11_OID_NOISEFLOOR = common dso_local global i32 0, align 4
@DOT11_OID_BSSLIST = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism54_get_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_get_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.obj_bsslist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %union.oid_res_t, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call i32* @netdev_priv(%struct.net_device* %17)
  store i32* %18, i32** %10, align 8
  store i32 0, i32* %14, align 4
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %15, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i64 @islpci_get_state(i32* %20)
  %22 = load i64, i64* @PRV_STATE_INIT, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  store i32 0, i32* %5, align 4
  br label %99

27:                                               ; preds = %4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @DOT11_OID_NOISEFLOOR, align 4
  %30 = call i32 @mgt_get_request(i32* %28, i32 %29, i32 0, i32* null, %union.oid_res_t* %16)
  store i32 %30, i32* %12, align 4
  %31 = bitcast %union.oid_res_t* %16 to i32*
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @DOT11_OID_BSSLIST, align 4
  %35 = call i32 @mgt_get_request(i32* %33, i32 %34, i32 0, i32* null, %union.oid_res_t* %16)
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = bitcast %union.oid_res_t* %16 to %struct.obj_bsslist**
  %39 = load %struct.obj_bsslist*, %struct.obj_bsslist** %38, align 8
  store %struct.obj_bsslist* %39, %struct.obj_bsslist** %13, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %82, %27
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.obj_bsslist*, %struct.obj_bsslist** %13, align 8
  %43 = getelementptr inbounds %struct.obj_bsslist, %struct.obj_bsslist* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %53 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load %struct.obj_bsslist*, %struct.obj_bsslist** %13, align 8
  %58 = getelementptr inbounds %struct.obj_bsslist, %struct.obj_bsslist* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %14, align 4
  %64 = call i8* @prism54_translate_bss(%struct.net_device* %48, %struct.iw_request_info* %49, i8* %50, i8* %56, i32* %62, i32 %63)
  store i8* %64, i8** %15, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %67 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load i8*, i8** %15, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp sle i64 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %47
  %79 = load i32, i32* @E2BIG, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %85

81:                                               ; preds = %47
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %40

85:                                               ; preds = %78, %40
  %86 = load %struct.obj_bsslist*, %struct.obj_bsslist** %13, align 8
  %87 = call i32 @kfree(%struct.obj_bsslist* %86)
  %88 = load i8*, i8** %15, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %95 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %97 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %85, %24
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @islpci_get_state(i32*) #1

declare dso_local i32 @mgt_get_request(i32*, i32, i32, i32*, %union.oid_res_t*) #1

declare dso_local i8* @prism54_translate_bss(%struct.net_device*, %struct.iw_request_info*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.obj_bsslist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
