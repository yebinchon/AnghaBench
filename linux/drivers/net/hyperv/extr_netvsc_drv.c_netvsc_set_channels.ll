; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i64, i64, i64 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { i64, i32, i32, i64 }
%struct.netvsc_device_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NVSP_PROTOCOL_VERSION_5 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"restoring channel setting failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @netvsc_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.netvsc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netvsc_device_info*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %12)
  store %struct.net_device_context* %13, %struct.net_device_context** %6, align 8
  %14 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %15 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.netvsc_device* @rtnl_dereference(i32 %16)
  store %struct.netvsc_device* %17, %struct.netvsc_device** %7, align 8
  %18 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %2
  %24 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %28, %23, %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %114

41:                                               ; preds = %33
  %42 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %43 = icmp ne %struct.netvsc_device* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %46 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %41
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %114

52:                                               ; preds = %44
  %53 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %54 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NVSP_PROTOCOL_VERSION_5, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %114

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %64 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ugt i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %114

70:                                               ; preds = %61
  %71 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %72 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  %74 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %75 = call %struct.netvsc_device_info* @netvsc_devinfo_get(%struct.netvsc_device* %74)
  store %struct.netvsc_device_info* %75, %struct.netvsc_device_info** %10, align 8
  %76 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %10, align 8
  %77 = icmp ne %struct.netvsc_device_info* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %114

81:                                               ; preds = %70
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %10, align 8
  %84 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %87 = call i32 @netvsc_detach(%struct.net_device* %85, %struct.netvsc_device* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %110

91:                                               ; preds = %81
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %10, align 8
  %94 = call i32 @netvsc_attach(%struct.net_device* %92, %struct.netvsc_device_info* %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %10, align 8
  %100 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %10, align 8
  %103 = call i32 @netvsc_attach(%struct.net_device* %101, %struct.netvsc_device_info* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = call i32 @netdev_err(%struct.net_device* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %97
  br label %109

109:                                              ; preds = %108, %91
  br label %110

110:                                              ; preds = %109, %90
  %111 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %10, align 8
  %112 = call i32 @kfree(%struct.netvsc_device_info* %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %78, %67, %58, %49, %38
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rtnl_dereference(i32) #1

declare dso_local %struct.netvsc_device_info* @netvsc_devinfo_get(%struct.netvsc_device*) #1

declare dso_local i32 @netvsc_detach(%struct.net_device*, %struct.netvsc_device*) #1

declare dso_local i32 @netvsc_attach(%struct.net_device*, %struct.netvsc_device_info*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @kfree(%struct.netvsc_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
