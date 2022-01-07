; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-octeon.c_octeon_mdiobus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-octeon.c_octeon_mdiobus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cavium_mdiobus = type { i64, %struct.mii_bus* }
%struct.mii_bus = type { i32, i32, %struct.TYPE_8__*, i32, i32, %struct.cavium_mdiobus* }
%struct.resource = type { i32, i32 }
%union.cvmx_smix_en = type { i64 }
%struct.TYPE_7__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"found no memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"request_mem_region failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"dev_ioremap failed\0A\00", align 1
@SMI_EN = common dso_local global i64 0, align 8
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@cavium_mdiobus_read = common dso_local global i32 0, align 4
@cavium_mdiobus_write = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @octeon_mdiobus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mdiobus_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cavium_mdiobus*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.cvmx_smix_en, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.mii_bus* @devm_mdiobus_alloc_size(%struct.TYPE_8__* %14, i32 16)
  store %struct.mii_bus* %15, %struct.mii_bus** %5, align 8
  %16 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %17 = icmp ne %struct.mii_bus* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %154

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %6, align 8
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = icmp eq %struct.resource* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %154

33:                                               ; preds = %21
  %34 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %35 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %34, i32 0, i32 5
  %36 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %35, align 8
  store %struct.cavium_mdiobus* %36, %struct.cavium_mdiobus** %4, align 8
  %37 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %38 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %39 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %38, i32 0, i32 1
  store %struct.mii_bus* %37, %struct.mii_bus** %39, align 8
  %40 = load %struct.resource*, %struct.resource** %6, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = call i32 @resource_size(%struct.resource* %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @devm_request_mem_region(%struct.TYPE_8__* %46, i32 %47, i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %33
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.TYPE_8__* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %154

60:                                               ; preds = %33
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @devm_ioremap(%struct.TYPE_8__* %62, i32 %63, i32 %64)
  %66 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %67 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %69 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %60
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_err(%struct.TYPE_8__* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %154

78:                                               ; preds = %60
  %79 = bitcast %union.cvmx_smix_en* %9 to i64*
  store i64 0, i64* %79, align 8
  %80 = bitcast %union.cvmx_smix_en* %9 to %struct.TYPE_7__*
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = bitcast %union.cvmx_smix_en* %9 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %85 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SMI_EN, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @oct_mdio_writeq(i64 %83, i64 %88)
  %90 = load i32, i32* @KBUILD_MODNAME, align 4
  %91 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %92 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %91, i32 0, i32 1
  %93 = load %struct.mii_bus*, %struct.mii_bus** %92, align 8
  %94 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %93, i32 0, i32 4
  store i32 %90, i32* %94, align 4
  %95 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %96 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %95, i32 0, i32 1
  %97 = load %struct.mii_bus*, %struct.mii_bus** %96, align 8
  %98 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %101 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %102 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @snprintf(i32 %99, i32 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %103)
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %108 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %107, i32 0, i32 1
  %109 = load %struct.mii_bus*, %struct.mii_bus** %108, align 8
  %110 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %109, i32 0, i32 2
  store %struct.TYPE_8__* %106, %struct.TYPE_8__** %110, align 8
  %111 = load i32, i32* @cavium_mdiobus_read, align 4
  %112 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %113 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %112, i32 0, i32 1
  %114 = load %struct.mii_bus*, %struct.mii_bus** %113, align 8
  %115 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* @cavium_mdiobus_write, align 4
  %117 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %118 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %117, i32 0, i32 1
  %119 = load %struct.mii_bus*, %struct.mii_bus** %118, align 8
  %120 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 8
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %123 = call i32 @platform_set_drvdata(%struct.platform_device* %121, %struct.cavium_mdiobus* %122)
  %124 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %125 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %124, i32 0, i32 1
  %126 = load %struct.mii_bus*, %struct.mii_bus** %125, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @of_mdiobus_register(%struct.mii_bus* %126, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %78
  br label %139

135:                                              ; preds = %78
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_info(%struct.TYPE_8__* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %154

139:                                              ; preds = %134
  %140 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %141 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %140, i32 0, i32 1
  %142 = load %struct.mii_bus*, %struct.mii_bus** %141, align 8
  %143 = call i32 @mdiobus_free(%struct.mii_bus* %142)
  %144 = bitcast %union.cvmx_smix_en* %9 to i64*
  store i64 0, i64* %144, align 8
  %145 = bitcast %union.cvmx_smix_en* %9 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %4, align 8
  %148 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SMI_EN, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @oct_mdio_writeq(i64 %146, i64 %151)
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %139, %135, %72, %54, %27, %18
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc_size(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_mem_region(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @devm_ioremap(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @oct_mdio_writeq(i64, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cavium_mdiobus*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
