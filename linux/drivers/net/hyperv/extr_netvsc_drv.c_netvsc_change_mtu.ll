; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32, i32 }
%struct.netvsc_device = type { i64 }
%struct.netvsc_device_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"restoring mtu failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @netvsc_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netvsc_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netvsc_device_info*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %12)
  store %struct.net_device_context* %13, %struct.net_device_context** %6, align 8
  %14 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %15 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @rtnl_dereference(i32 %16)
  %18 = bitcast i8* %17 to %struct.net_device*
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %20 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @rtnl_dereference(i32 %21)
  %23 = bitcast i8* %22 to %struct.netvsc_device*
  store %struct.netvsc_device* %23, %struct.netvsc_device** %8, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %27 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %28 = icmp ne %struct.netvsc_device* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %31 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %2
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %97

37:                                               ; preds = %29
  %38 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %39 = call %struct.netvsc_device_info* @netvsc_devinfo_get(%struct.netvsc_device* %38)
  store %struct.netvsc_device_info* %39, %struct.netvsc_device_info** %10, align 8
  %40 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %10, align 8
  %41 = icmp ne %struct.netvsc_device_info* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %97

45:                                               ; preds = %37
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = icmp ne %struct.net_device* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_set_mtu(%struct.net_device* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %93

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %45
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %59 = call i32 @netvsc_detach(%struct.net_device* %57, %struct.netvsc_device* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %85

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %10, align 8
  %69 = call i32 @netvsc_attach(%struct.net_device* %67, %struct.netvsc_device_info* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %93

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %10, align 8
  %79 = call i32 @netvsc_attach(%struct.net_device* %77, %struct.netvsc_device_info* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @netdev_err(%struct.net_device* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %73
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.net_device*, %struct.net_device** %7, align 8
  %87 = icmp ne %struct.net_device* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @dev_set_mtu(%struct.net_device* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  br label %93

93:                                               ; preds = %92, %72, %54
  %94 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %10, align 8
  %95 = call i32 @kfree(%struct.netvsc_device_info* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %42, %34
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local %struct.netvsc_device_info* @netvsc_devinfo_get(%struct.netvsc_device*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

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
