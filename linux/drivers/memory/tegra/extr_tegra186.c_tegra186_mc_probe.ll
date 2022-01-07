; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra186.c_tegra186_mc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra186.c_tegra186_mc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc_client = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.tegra_mc = type { i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@tegra186_mc_clients = common dso_local global %struct.tegra_mc_client* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"client %s: override: %x security: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"setting SID %u for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra186_mc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra186_mc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.tegra_mc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_mc_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tegra_mc* @devm_kzalloc(i32* %12, i32 16, i32 %13)
  store %struct.tegra_mc* %14, %struct.tegra_mc** %5, align 8
  %15 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %16 = icmp ne %struct.tegra_mc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %136

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %4, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = call i64 @devm_ioremap_resource(i32* %25, %struct.resource* %26)
  %28 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @IS_ERR(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %37 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @PTR_ERR(i64 %38)
  store i32 %39, i32* %2, align 4
  br label %136

40:                                               ; preds = %20
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %44 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %128, %40
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** @tegra186_mc_clients, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.tegra_mc_client* %47)
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %131

50:                                               ; preds = %45
  %51 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** @tegra186_mc_clients, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %51, i64 %53
  store %struct.tegra_mc_client* %54, %struct.tegra_mc_client** %8, align 8
  %55 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %56 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %8, align 8
  %59 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %57, %61
  %63 = call i32 @readl(i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %65 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %8, align 8
  %68 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %66, %70
  %72 = call i32 @readl(i64 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %8, align 8
  %76 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %8, align 8
  %84 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %8, align 8
  %87 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %8, align 8
  %91 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %94 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %8, align 8
  %97 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %95, %99
  %101 = call i32 @writel(i32 %92, i64 %100)
  %102 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %103 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %8, align 8
  %106 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %104, %108
  %110 = call i32 @readl(i64 %109)
  store i32 %110, i32* %9, align 4
  %111 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %112 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %8, align 8
  %115 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %113, %117
  %119 = call i32 @readl(i64 %118)
  store i32 %119, i32* %10, align 4
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %8, align 8
  %123 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %50
  %129 = load i32, i32* %6, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %45

131:                                              ; preds = %45
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %134 = call i32 @platform_set_drvdata(%struct.platform_device* %132, %struct.tegra_mc* %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %131, %35, %17
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.tegra_mc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.tegra_mc_client*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_mc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
