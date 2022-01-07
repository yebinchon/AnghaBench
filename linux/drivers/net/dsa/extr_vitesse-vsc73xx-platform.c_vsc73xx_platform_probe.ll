; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-platform.c_vsc73xx_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-platform.c_vsc73xx_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.vsc73xx_platform = type { %struct.TYPE_2__, i32, %struct.platform_device* }
%struct.TYPE_2__ = type { i32*, %struct.vsc73xx_platform*, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vsc73xx_platform_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot obtain I/O memory space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot request I/O memory space\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vsc73xx_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.vsc73xx_platform*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  store %struct.resource* null, %struct.resource** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.vsc73xx_platform* @devm_kzalloc(%struct.device* %10, i32 40, i32 %11)
  store %struct.vsc73xx_platform* %12, %struct.vsc73xx_platform** %5, align 8
  %13 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %5, align 8
  %14 = icmp ne %struct.vsc73xx_platform* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.vsc73xx_platform* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %5, align 8
  %24 = getelementptr inbounds %struct.vsc73xx_platform, %struct.vsc73xx_platform* %23, i32 0, i32 2
  store %struct.platform_device* %22, %struct.platform_device** %24, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %5, align 8
  %27 = getelementptr inbounds %struct.vsc73xx_platform, %struct.vsc73xx_platform* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store %struct.device* %25, %struct.device** %28, align 8
  %29 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %5, align 8
  %30 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %5, align 8
  %31 = getelementptr inbounds %struct.vsc73xx_platform, %struct.vsc73xx_platform* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store %struct.vsc73xx_platform* %29, %struct.vsc73xx_platform** %32, align 8
  %33 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %5, align 8
  %34 = getelementptr inbounds %struct.vsc73xx_platform, %struct.vsc73xx_platform* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* @vsc73xx_platform_ops, i32** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %6, align 8
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = icmp ne %struct.resource* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %18
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %71

48:                                               ; preds = %18
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = call i32 @devm_ioremap_resource(%struct.device* %50, %struct.resource* %51)
  %53 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %5, align 8
  %54 = getelementptr inbounds %struct.vsc73xx_platform, %struct.vsc73xx_platform* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %5, align 8
  %56 = getelementptr inbounds %struct.vsc73xx_platform, %struct.vsc73xx_platform* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %71

67:                                               ; preds = %48
  %68 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %5, align 8
  %69 = getelementptr inbounds %struct.vsc73xx_platform, %struct.vsc73xx_platform* %68, i32 0, i32 0
  %70 = call i32 @vsc73xx_probe(%struct.TYPE_2__* %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %60, %41, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.vsc73xx_platform* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vsc73xx_platform*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @vsc73xx_probe(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
