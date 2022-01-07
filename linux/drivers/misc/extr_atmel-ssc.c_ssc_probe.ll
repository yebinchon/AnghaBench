; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_atmel-ssc.c_ssc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_atmel-ssc.c_ssc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.ssc_device = type { i32, i32, i32, i32, i32, i32, %struct.atmel_ssc_platform_data*, %struct.platform_device* }
%struct.atmel_ssc_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"atmel,clk-from-rk-pin\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no pclk clock defined\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IDR = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"could not get irq\0A\00", align 1
@user_lock = common dso_local global i32 0, align 4
@ssc_list = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Atmel SSC device at 0x%p (irq %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to auto-setup ssc for audio\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ssc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.ssc_device*, align 8
  %6 = alloca %struct.atmel_ssc_platform_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ssc_device* @devm_kzalloc(%struct.TYPE_7__* %9, i32 40, i32 %10)
  store %struct.ssc_device* %11, %struct.ssc_device** %5, align 8
  %12 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %13 = icmp ne %struct.ssc_device* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_dbg(%struct.TYPE_7__* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %150

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %23 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %22, i32 0, i32 7
  store %struct.platform_device* %21, %struct.platform_device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call %struct.atmel_ssc_platform_data* @atmel_ssc_get_driver_data(%struct.platform_device* %24)
  store %struct.atmel_ssc_platform_data* %25, %struct.atmel_ssc_platform_data** %6, align 8
  %26 = load %struct.atmel_ssc_platform_data*, %struct.atmel_ssc_platform_data** %6, align 8
  %27 = icmp ne %struct.atmel_ssc_platform_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %150

31:                                               ; preds = %20
  %32 = load %struct.atmel_ssc_platform_data*, %struct.atmel_ssc_platform_data** %6, align 8
  %33 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %34 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %33, i32 0, i32 6
  store %struct.atmel_ssc_platform_data* %32, %struct.atmel_ssc_platform_data** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.device_node*, %struct.device_node** %37, align 8
  %39 = icmp ne %struct.device_node* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.device_node*, %struct.device_node** %43, align 8
  store %struct.device_node* %44, %struct.device_node** %7, align 8
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = call i32 @of_property_read_bool(%struct.device_node* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %48 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %31
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource(%struct.platform_device* %50, i32 %51, i32 0)
  store %struct.resource* %52, %struct.resource** %4, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.resource*, %struct.resource** %4, align 8
  %56 = call i32 @devm_ioremap_resource(%struct.TYPE_7__* %54, %struct.resource* %55)
  %57 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %58 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %60 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %66 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %150

69:                                               ; preds = %49
  %70 = load %struct.resource*, %struct.resource** %4, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %74 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @devm_clk_get(%struct.TYPE_7__* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %79 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %81 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %69
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @dev_dbg(%struct.TYPE_7__* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @ENXIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %150

91:                                               ; preds = %69
  %92 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %93 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @clk_prepare_enable(i32 %94)
  %96 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %97 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IDR, align 4
  %100 = call i32 @ssc_writel(i32 %98, i32 %99, i32 -1)
  %101 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %102 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SR, align 4
  %105 = call i32 @ssc_readl(i32 %103, i32 %104)
  %106 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %107 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @clk_disable_unprepare(i32 %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = call i32 @platform_get_irq(%struct.platform_device* %110, i32 0)
  %112 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %113 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %115 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %91
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @dev_dbg(%struct.TYPE_7__* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @ENXIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %150

124:                                              ; preds = %91
  %125 = call i32 @spin_lock(i32* @user_lock)
  %126 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %127 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %126, i32 0, i32 2
  %128 = call i32 @list_add_tail(i32* %127, i32* @ssc_list)
  %129 = call i32 @spin_unlock(i32* @user_lock)
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %132 = call i32 @platform_set_drvdata(%struct.platform_device* %130, %struct.ssc_device* %131)
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %136 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %139 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dev_info(%struct.TYPE_7__* %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %137, i32 %140)
  %142 = load %struct.ssc_device*, %struct.ssc_device** %5, align 8
  %143 = call i64 @ssc_sound_dai_probe(%struct.ssc_device* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %124
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = call i32 @dev_err(%struct.TYPE_7__* %147, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %149

149:                                              ; preds = %145, %124
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %118, %85, %64, %28, %14
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.ssc_device* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.atmel_ssc_platform_data* @atmel_ssc_get_driver_data(%struct.platform_device*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @ssc_readl(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ssc_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i64 @ssc_sound_dai_probe(%struct.ssc_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
