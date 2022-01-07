; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwfrag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64 }
%struct.hostap_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.net_device*)*, i64 (%struct.net_device*, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@HFA384X_RID_FRAGMENTATIONTHRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism2_ioctl_siwfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_siwfrag(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %13)
  store %struct.hostap_interface* %14, %struct.hostap_interface** %10, align 8
  %15 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %16 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %11, align 8
  %18 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %19 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 @cpu_to_le16(i32 2346)
  store i32 %23, i32* %12, align 4
  br label %44

24:                                               ; preds = %4
  %25 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %26 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %31 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 2346
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %24
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %73

37:                                               ; preds = %29
  %38 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %39 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, -2
  %42 = call i32 @cpu_to_le16(i32 %41)
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %46 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, -2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64 (%struct.net_device*, i32, i32*, i32)*, i64 (%struct.net_device*, i32, i32*, i32)** %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = load i32, i32* @HFA384X_RID_FRAGMENTATIONTHRESHOLD, align 4
  %58 = call i64 %55(%struct.net_device* %56, i32 %57, i32* %12, i32 2)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %44
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %64, align 8
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = call i64 %65(%struct.net_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60, %44
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %69, %34
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
