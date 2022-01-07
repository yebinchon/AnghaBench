; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_spi = type { %struct.TYPE_3__, i32, %struct.device*, %struct.intel_spi_boardinfo*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.intel_spi*, %struct.device* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.intel_spi_boardinfo = type { i32 }
%struct.spi_nor_hwcaps = type { i32 }
%struct.mtd_partition = type { i32 }

@SNOR_HWCAPS_READ = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_FAST = common dso_local global i32 0, align 4
@SNOR_HWCAPS_PP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_spi_read_reg = common dso_local global i32 0, align 4
@intel_spi_write_reg = common dso_local global i32 0, align 4
@intel_spi_read = common dso_local global i32 0, align 4
@intel_spi_write = common dso_local global i32 0, align 4
@intel_spi_erase = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to locate the chip\0A\00", align 1
@writeable = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_spi* @intel_spi_probe(%struct.device* %0, %struct.resource* %1, %struct.intel_spi_boardinfo* %2) #0 {
  %4 = alloca %struct.intel_spi*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.intel_spi_boardinfo*, align 8
  %8 = alloca %struct.spi_nor_hwcaps, align 4
  %9 = alloca %struct.mtd_partition, align 4
  %10 = alloca %struct.intel_spi*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store %struct.intel_spi_boardinfo* %2, %struct.intel_spi_boardinfo** %7, align 8
  %12 = getelementptr inbounds %struct.spi_nor_hwcaps, %struct.spi_nor_hwcaps* %8, i32 0, i32 0
  %13 = load i32, i32* @SNOR_HWCAPS_READ, align 4
  %14 = load i32, i32* @SNOR_HWCAPS_READ_FAST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SNOR_HWCAPS_PP, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %7, align 8
  %19 = icmp ne %struct.intel_spi_boardinfo* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.intel_spi* @ERR_PTR(i32 %25)
  store %struct.intel_spi* %26, %struct.intel_spi** %4, align 8
  br label %144

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.intel_spi* @devm_kzalloc(%struct.device* %28, i32 72, i32 %29)
  store %struct.intel_spi* %30, %struct.intel_spi** %10, align 8
  %31 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %32 = icmp ne %struct.intel_spi* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.intel_spi* @ERR_PTR(i32 %35)
  store %struct.intel_spi* %36, %struct.intel_spi** %4, align 8
  br label %144

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = call i32 @devm_ioremap_resource(%struct.device* %38, %struct.resource* %39)
  %41 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %42 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %44 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %50 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.intel_spi* @ERR_CAST(i32 %51)
  store %struct.intel_spi* %52, %struct.intel_spi** %4, align 8
  br label %144

53:                                               ; preds = %37
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %56 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %55, i32 0, i32 2
  store %struct.device* %54, %struct.device** %56, align 8
  %57 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %7, align 8
  %58 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %59 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %58, i32 0, i32 3
  store %struct.intel_spi_boardinfo* %57, %struct.intel_spi_boardinfo** %59, align 8
  %60 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %7, align 8
  %61 = getelementptr inbounds %struct.intel_spi_boardinfo, %struct.intel_spi_boardinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %64 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %66 = call i32 @intel_spi_init(%struct.intel_spi* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.intel_spi* @ERR_PTR(i32 %70)
  store %struct.intel_spi* %71, %struct.intel_spi** %4, align 8
  br label %144

72:                                               ; preds = %53
  %73 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %74 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %73, i32 0, i32 2
  %75 = load %struct.device*, %struct.device** %74, align 8
  %76 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %77 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 7
  store %struct.device* %75, %struct.device** %78, align 8
  %79 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %80 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %81 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 6
  store %struct.intel_spi* %79, %struct.intel_spi** %82, align 8
  %83 = load i32, i32* @intel_spi_read_reg, align 4
  %84 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %85 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @intel_spi_write_reg, align 4
  %88 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %89 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @intel_spi_read, align 4
  %92 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %93 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @intel_spi_write, align 4
  %96 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %97 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @intel_spi_erase, align 4
  %100 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %101 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %104 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %103, i32 0, i32 0
  %105 = call i32 @spi_nor_scan(%struct.TYPE_3__* %104, i32* null, %struct.spi_nor_hwcaps* %8)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %72
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = call i32 @dev_info(%struct.device* %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %11, align 4
  %112 = call %struct.intel_spi* @ERR_PTR(i32 %111)
  store %struct.intel_spi* %112, %struct.intel_spi** %4, align 8
  br label %144

113:                                              ; preds = %72
  %114 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %115 = call i32 @intel_spi_fill_partition(%struct.intel_spi* %114, %struct.mtd_partition* %9)
  %116 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %117 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* @writeable, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %120, %113
  %124 = load i32, i32* @MTD_WRITEABLE, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %127 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %125
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %123, %120
  %133 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %134 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = call i32 @mtd_device_register(%struct.TYPE_4__* %135, %struct.mtd_partition* %9, i32 1)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32, i32* %11, align 4
  %141 = call %struct.intel_spi* @ERR_PTR(i32 %140)
  store %struct.intel_spi* %141, %struct.intel_spi** %4, align 8
  br label %144

142:                                              ; preds = %132
  %143 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  store %struct.intel_spi* %143, %struct.intel_spi** %4, align 8
  br label %144

144:                                              ; preds = %142, %139, %108, %69, %48, %33, %23
  %145 = load %struct.intel_spi*, %struct.intel_spi** %4, align 8
  ret %struct.intel_spi* %145
}

declare dso_local %struct.intel_spi* @ERR_PTR(i32) #1

declare dso_local %struct.intel_spi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.intel_spi* @ERR_CAST(i32) #1

declare dso_local i32 @intel_spi_init(%struct.intel_spi*) #1

declare dso_local i32 @spi_nor_scan(%struct.TYPE_3__*, i32*, %struct.spi_nor_hwcaps*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @intel_spi_fill_partition(%struct.intel_spi*, %struct.mtd_partition*) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_4__*, %struct.mtd_partition*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
