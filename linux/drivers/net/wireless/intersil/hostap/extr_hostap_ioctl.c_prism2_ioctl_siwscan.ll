; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwscan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.hostap_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.iw_scan_req = type { i64, i64* }

@IW_MODE_MASTER = common dso_local global i64 0, align 8
@ENETDOWN = common dso_local global i32 0, align 4
@IW_SCAN_THIS_ESSID = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism2_ioctl_siwscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_siwscan(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.iw_scan_req*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64* null, i64** %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.iw_scan_req*
  store %struct.iw_scan_req* %17, %struct.iw_scan_req** %15, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %18)
  store %struct.hostap_interface* %19, %struct.hostap_interface** %10, align 8
  %20 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %21 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %11, align 8
  %23 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %24 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 16
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store %struct.iw_scan_req* null, %struct.iw_scan_req** %15, align 8
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IW_MODE_MASTER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %37 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %110

38:                                               ; preds = %29
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENETDOWN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %110

46:                                               ; preds = %38
  %47 = load %struct.iw_scan_req*, %struct.iw_scan_req** %15, align 8
  %48 = icmp ne %struct.iw_scan_req* %47, null
  br i1 %48, label %49, label %87

49:                                               ; preds = %46
  %50 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %51 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IW_SCAN_THIS_ESSID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %49
  %57 = load %struct.iw_scan_req*, %struct.iw_scan_req** %15, align 8
  %58 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  store i64* %59, i64** %13, align 8
  %60 = load %struct.iw_scan_req*, %struct.iw_scan_req** %15, align 8
  %61 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %56
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IW_MODE_INFRA, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IW_MODE_ADHOC, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @PRISM2_FW_VER(i32 1, i32 3, i32 1)
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %71
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %110

86:                                               ; preds = %77, %56
  br label %87

87:                                               ; preds = %86, %49, %46
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @PRISM2_FW_VER(i32 1, i32 3, i32 1)
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = load i64*, i64** %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @prism2_request_hostscan(%struct.net_device* %94, i64* %95, i64 %96)
  store i32 %97, i32* %12, align 4
  br label %101

98:                                               ; preds = %87
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = call i32 @prism2_request_scan(%struct.net_device* %99)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* @jiffies, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %83, %43, %35
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @PRISM2_FW_VER(i32, i32, i32) #1

declare dso_local i32 @prism2_request_hostscan(%struct.net_device*, i64*, i64) #1

declare dso_local i32 @prism2_request_scan(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
