; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.nsim_bus_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nsim_bus_dev = type { i32 }
%struct.devlink = type { i32 }

@nsim_dev_devlink_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NSIM_DEV_MAX_MACS_DEFAULT = common dso_local global i32 0, align 4
@NSIM_DEV_TEST1_DEFAULT = common dso_local global i32 0, align 4
@nsim_devlink_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nsim_dev* (%struct.nsim_bus_dev*, i32)* @nsim_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nsim_dev* @nsim_dev_create(%struct.nsim_bus_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nsim_dev*, align 8
  %4 = alloca %struct.nsim_bus_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nsim_dev*, align 8
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca i32, align 4
  store %struct.nsim_bus_dev* %0, %struct.nsim_bus_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.devlink* @devlink_alloc(i32* @nsim_dev_devlink_ops, i32 40)
  store %struct.devlink* %9, %struct.devlink** %7, align 8
  %10 = load %struct.devlink*, %struct.devlink** %7, align 8
  %11 = icmp ne %struct.devlink* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.nsim_dev* @ERR_PTR(i32 %14)
  store %struct.nsim_dev* %15, %struct.nsim_dev** %3, align 8
  br label %128

16:                                               ; preds = %2
  %17 = load %struct.devlink*, %struct.devlink** %7, align 8
  %18 = call %struct.nsim_dev* @devlink_priv(%struct.devlink* %17)
  store %struct.nsim_dev* %18, %struct.nsim_dev** %6, align 8
  %19 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %4, align 8
  %20 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %21 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %20, i32 0, i32 6
  store %struct.nsim_bus_dev* %19, %struct.nsim_bus_dev** %21, align 8
  %22 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %23 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 4, i32* %24, align 4
  %25 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %26 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %30 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @get_random_bytes(i32 %28, i32 %32)
  %34 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %35 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %34, i32 0, i32 4
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %38 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %37, i32 0, i32 3
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %41 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @NSIM_DEV_MAX_MACS_DEFAULT, align 4
  %43 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %44 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @NSIM_DEV_TEST1_DEFAULT, align 4
  %46 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %47 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.devlink*, %struct.devlink** %7, align 8
  %49 = call i32 @nsim_dev_resources_register(%struct.devlink* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %16
  br label %123

53:                                               ; preds = %16
  %54 = load %struct.devlink*, %struct.devlink** %7, align 8
  %55 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %4, align 8
  %56 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %55, i32 0, i32 0
  %57 = call i32 @devlink_register(%struct.devlink* %54, i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %120

61:                                               ; preds = %53
  %62 = load %struct.devlink*, %struct.devlink** %7, align 8
  %63 = load i32, i32* @nsim_devlink_params, align 4
  %64 = load i32, i32* @nsim_devlink_params, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call i32 @devlink_params_register(%struct.devlink* %62, i32 %63, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %117

70:                                               ; preds = %61
  %71 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %72 = load %struct.devlink*, %struct.devlink** %7, align 8
  %73 = call i32 @nsim_devlink_set_params_init_values(%struct.nsim_dev* %71, %struct.devlink* %72)
  %74 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %75 = load %struct.devlink*, %struct.devlink** %7, align 8
  %76 = call i32 @nsim_dev_dummy_region_init(%struct.nsim_dev* %74, %struct.devlink* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %111

80:                                               ; preds = %70
  %81 = load %struct.devlink*, %struct.devlink** %7, align 8
  %82 = call i32 @nsim_dev_traps_init(%struct.devlink* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %108

86:                                               ; preds = %80
  %87 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %88 = call i32 @nsim_dev_debugfs_init(%struct.nsim_dev* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %105

92:                                               ; preds = %86
  %93 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %94 = call i32 @nsim_bpf_dev_init(%struct.nsim_dev* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %102

98:                                               ; preds = %92
  %99 = load %struct.devlink*, %struct.devlink** %7, align 8
  %100 = call i32 @devlink_params_publish(%struct.devlink* %99)
  %101 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  store %struct.nsim_dev* %101, %struct.nsim_dev** %3, align 8
  br label %128

102:                                              ; preds = %97
  %103 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %104 = call i32 @nsim_dev_debugfs_exit(%struct.nsim_dev* %103)
  br label %105

105:                                              ; preds = %102, %91
  %106 = load %struct.devlink*, %struct.devlink** %7, align 8
  %107 = call i32 @nsim_dev_traps_exit(%struct.devlink* %106)
  br label %108

108:                                              ; preds = %105, %85
  %109 = load %struct.nsim_dev*, %struct.nsim_dev** %6, align 8
  %110 = call i32 @nsim_dev_dummy_region_exit(%struct.nsim_dev* %109)
  br label %111

111:                                              ; preds = %108, %79
  %112 = load %struct.devlink*, %struct.devlink** %7, align 8
  %113 = load i32, i32* @nsim_devlink_params, align 4
  %114 = load i32, i32* @nsim_devlink_params, align 4
  %115 = call i32 @ARRAY_SIZE(i32 %114)
  %116 = call i32 @devlink_params_unregister(%struct.devlink* %112, i32 %113, i32 %115)
  br label %117

117:                                              ; preds = %111, %69
  %118 = load %struct.devlink*, %struct.devlink** %7, align 8
  %119 = call i32 @devlink_unregister(%struct.devlink* %118)
  br label %120

120:                                              ; preds = %117, %60
  %121 = load %struct.devlink*, %struct.devlink** %7, align 8
  %122 = call i32 @devlink_resources_unregister(%struct.devlink* %121, i32* null)
  br label %123

123:                                              ; preds = %120, %52
  %124 = load %struct.devlink*, %struct.devlink** %7, align 8
  %125 = call i32 @devlink_free(%struct.devlink* %124)
  %126 = load i32, i32* %8, align 4
  %127 = call %struct.nsim_dev* @ERR_PTR(i32 %126)
  store %struct.nsim_dev* %127, %struct.nsim_dev** %3, align 8
  br label %128

128:                                              ; preds = %123, %98, %12
  %129 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  ret %struct.nsim_dev* %129
}

declare dso_local %struct.devlink* @devlink_alloc(i32*, i32) #1

declare dso_local %struct.nsim_dev* @ERR_PTR(i32) #1

declare dso_local %struct.nsim_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nsim_dev_resources_register(%struct.devlink*) #1

declare dso_local i32 @devlink_register(%struct.devlink*, i32*) #1

declare dso_local i32 @devlink_params_register(%struct.devlink*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @nsim_devlink_set_params_init_values(%struct.nsim_dev*, %struct.devlink*) #1

declare dso_local i32 @nsim_dev_dummy_region_init(%struct.nsim_dev*, %struct.devlink*) #1

declare dso_local i32 @nsim_dev_traps_init(%struct.devlink*) #1

declare dso_local i32 @nsim_dev_debugfs_init(%struct.nsim_dev*) #1

declare dso_local i32 @nsim_bpf_dev_init(%struct.nsim_dev*) #1

declare dso_local i32 @devlink_params_publish(%struct.devlink*) #1

declare dso_local i32 @nsim_dev_debugfs_exit(%struct.nsim_dev*) #1

declare dso_local i32 @nsim_dev_traps_exit(%struct.devlink*) #1

declare dso_local i32 @nsim_dev_dummy_region_exit(%struct.nsim_dev*) #1

declare dso_local i32 @devlink_params_unregister(%struct.devlink*, i32, i32) #1

declare dso_local i32 @devlink_unregister(%struct.devlink*) #1

declare dso_local i32 @devlink_resources_unregister(%struct.devlink*, i32*) #1

declare dso_local i32 @devlink_free(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
