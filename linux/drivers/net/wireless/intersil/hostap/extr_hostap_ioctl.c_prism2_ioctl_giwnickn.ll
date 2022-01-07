; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwnickn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwnickn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*, i32, i8**, i32, i32)* }

@MAX_NAME_LEN = common dso_local global i32 0, align 4
@HFA384X_RID_CNFOWNNAME = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism2_ioctl_giwnickn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_giwnickn(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32, i32* @MAX_NAME_LEN, align 4
  %18 = add nsw i32 %17, 3
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %22)
  store %struct.hostap_interface* %23, %struct.hostap_interface** %10, align 8
  %24 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %25 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %11, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.net_device*, i32, i8**, i32, i32)*, i32 (%struct.net_device*, i32, i8**, i32, i32)** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = load i32, i32* @HFA384X_RID_CNFOWNNAME, align 4
  %34 = bitcast i8* %21 to i8**
  %35 = load i32, i32* @MAX_NAME_LEN, align 4
  %36 = add nsw i32 %35, 2
  %37 = call i32 %31(%struct.net_device* %32, i32 %33, i8** %34, i32 %36, i32 0)
  store i32 %37, i32* %12, align 4
  %38 = bitcast i8* %21 to i32*
  %39 = load i32, i32* %38, align 16
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @MAX_NAME_LEN, align 4
  %43 = add nsw i32 %42, 2
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @MAX_NAME_LEN, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %45, %4
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %69

55:                                               ; preds = %48
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %21, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  %62 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %63 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %21, i64 2
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @memcpy(i8* %64, i8* %65, i32 %67)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %69

69:                                               ; preds = %55, %52
  %70 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
