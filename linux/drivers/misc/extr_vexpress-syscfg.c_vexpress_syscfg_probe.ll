; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vexpress-syscfg.c_vexpress_syscfg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vexpress-syscfg.c_vexpress_syscfg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vexpress_syscfg = type { i32, i32, %struct.TYPE_3__* }
%struct.resource = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@vexpress_syscfg_bridge_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vexpress_syscfg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vexpress_syscfg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vexpress_syscfg*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vexpress_syscfg* @devm_kzalloc(%struct.TYPE_3__* %8, i32 16, i32 %9)
  store %struct.vexpress_syscfg* %10, %struct.vexpress_syscfg** %4, align 8
  %11 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %4, align 8
  %12 = icmp ne %struct.vexpress_syscfg* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %4, align 8
  %20 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %19, i32 0, i32 2
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %4, align 8
  %22 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %5, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = call i32 @devm_ioremap_resource(%struct.TYPE_3__* %28, %struct.resource* %29)
  %31 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %4, align 8
  %32 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %4, align 8
  %34 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %16
  %39 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %4, align 8
  %40 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %16
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %4, align 8
  %49 = call %struct.device* @vexpress_config_bridge_register(i32 %47, i32* @vexpress_syscfg_bridge_ops, %struct.vexpress_syscfg* %48)
  store %struct.device* %49, %struct.device** %6, align 8
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %38, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.vexpress_syscfg* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_3__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.device* @vexpress_config_bridge_register(i32, i32*, %struct.vexpress_syscfg*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
