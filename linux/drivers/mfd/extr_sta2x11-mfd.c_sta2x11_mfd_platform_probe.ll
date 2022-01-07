; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sta2x11-mfd.c_sta2x11_mfd_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sta2x11-mfd.c_sta2x11_mfd_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32* }
%struct.platform_device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.sta2x11_mfd = type { i32*, i32*, i32 }
%struct.resource = type { i32 }

@sta2x11_mfd_names = common dso_local global i8** null, align 8
@sta2x11_mfd_regmap_configs = common dso_local global %struct.regmap_config** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@REGCACHE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @sta2x11_mfd_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta2x11_mfd_platform_probe(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev**, align 8
  %7 = alloca %struct.sta2x11_mfd*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.regmap_config*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8**, i8*** @sta2x11_mfd_names, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.regmap_config**, %struct.regmap_config*** @sta2x11_mfd_regmap_configs, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.regmap_config*, %struct.regmap_config** %16, i64 %18
  %20 = load %struct.regmap_config*, %struct.regmap_config** %19, align 8
  store %struct.regmap_config* %20, %struct.regmap_config** %10, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.pci_dev** @dev_get_platdata(i32* %22)
  store %struct.pci_dev** %23, %struct.pci_dev*** %6, align 8
  %24 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  %26 = call %struct.sta2x11_mfd* @sta2x11_mfd_find(%struct.pci_dev* %25)
  store %struct.sta2x11_mfd* %26, %struct.sta2x11_mfd** %7, align 8
  %27 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %28 = icmp ne %struct.sta2x11_mfd* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %123

32:                                               ; preds = %2
  %33 = load %struct.regmap_config*, %struct.regmap_config** %10, align 8
  %34 = icmp ne %struct.regmap_config* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %123

38:                                               ; preds = %32
  %39 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %8, align 8
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = icmp ne %struct.resource* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %123

47:                                               ; preds = %38
  %48 = load %struct.resource*, %struct.resource** %8, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.resource*, %struct.resource** %8, align 8
  %52 = call i32 @resource_size(%struct.resource* %51)
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @request_mem_region(i32 %50, i32 %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %123

59:                                               ; preds = %47
  %60 = load %struct.resource*, %struct.resource** %8, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.resource*, %struct.resource** %8, align 8
  %64 = call i32 @resource_size(%struct.resource* %63)
  %65 = call i32 @ioremap(i32 %62, i32 %64)
  %66 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %67 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %73 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %59
  %81 = load %struct.resource*, %struct.resource** %8, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.resource*, %struct.resource** %8, align 8
  %85 = call i32 @resource_size(%struct.resource* %84)
  %86 = call i32 @release_mem_region(i32 %83, i32 %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %123

89:                                               ; preds = %59
  %90 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %91 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %90, i32 0, i32 2
  %92 = load %struct.regmap_config*, %struct.regmap_config** %10, align 8
  %93 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load i32, i32* @REGCACHE_NONE, align 4
  %95 = load %struct.regmap_config*, %struct.regmap_config** %10, align 8
  %96 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %100 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.regmap_config*, %struct.regmap_config** %10, align 8
  %107 = call i32 @devm_regmap_init_mmio(i32* %98, i32 %105, %struct.regmap_config* %106)
  %108 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %109 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load %struct.sta2x11_mfd*, %struct.sta2x11_mfd** %7, align 8
  %115 = getelementptr inbounds %struct.sta2x11_mfd, %struct.sta2x11_mfd* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @IS_ERR(i32 %120)
  %122 = call i32 @WARN_ON(i32 %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %89, %80, %56, %44, %35, %29
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.pci_dev** @dev_get_platdata(i32*) #1

declare dso_local %struct.sta2x11_mfd* @sta2x11_mfd_find(%struct.pci_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @devm_regmap_init_mmio(i32*, i32, %struct.regmap_config*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
