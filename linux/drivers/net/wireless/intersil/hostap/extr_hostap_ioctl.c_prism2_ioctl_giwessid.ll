; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwessid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.hostap_interface = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*, i32, i8**, i32, i32)* }

@HOSTAP_INTERFACE_WDS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@MAX_SSID_LEN = common dso_local global i32 0, align 4
@HFA384X_RID_CURRENTSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism2_ioctl_giwessid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_giwessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %17)
  store %struct.hostap_interface* %18, %struct.hostap_interface** %10, align 8
  %19 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %20 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %11, align 8
  %22 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %23 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HOSTAP_INTERFACE_WDS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %100

30:                                               ; preds = %4
  %31 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %32 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IW_MODE_MASTER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %44 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %50 = call i32 @memcpy(i8* %45, i8* %48, i32 %49)
  br label %99

51:                                               ; preds = %30
  %52 = load i32, i32* @MAX_SSID_LEN, align 4
  %53 = add nsw i32 %52, 2
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %14, align 8
  %56 = alloca i8, i64 %54, align 16
  store i64 %54, i64* %15, align 8
  %57 = trunc i64 %54 to i32
  %58 = call i32 @memset(i8* %56, i32 0, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.net_device*, i32, i8**, i32, i32)*, i32 (%struct.net_device*, i32, i8**, i32, i32)** %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = load i32, i32* @HFA384X_RID_CURRENTSSID, align 4
  %66 = bitcast i8* %56 to i8**
  %67 = load i32, i32* @MAX_SSID_LEN, align 4
  %68 = add nsw i32 %67, 2
  %69 = call i32 %63(%struct.net_device* %64, i32 %65, i8** %66, i32 %68, i32 0)
  store i32 %69, i32* %13, align 4
  %70 = bitcast i8* %56 to i32*
  %71 = load i32, i32* %70, align 16
  %72 = call i32 @le16_to_cpu(i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @MAX_SSID_LEN, align 4
  %75 = add nsw i32 %74, 2
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %51
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @MAX_SSID_LEN, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %77, %51
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %95

87:                                               ; preds = %80
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %90 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %56, i64 2
  %93 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %94 = call i32 @memcpy(i8* %91, i8* %92, i32 %93)
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %87, %84
  %96 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %16, align 4
  switch i32 %97, label %102 [
    i32 0, label %98
    i32 1, label %100
  ]

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %38
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %95, %27
  %101 = load i32, i32* %5, align 4
  ret i32 %101

102:                                              ; preds = %95
  unreachable
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
