; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.isc_subdev_entity*, %struct.regmap* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.isc_subdev_entity = type { i32 }
%struct.regmap = type { i32 }

@ISC_DCFG_YMBSIZE_BEATS8 = common dso_local global i32 0, align 4
@ISC_DCFG_CMBSIZE_BEATS8 = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_MODE_PROGRESSIVE = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_BPS_MASK = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_HPOL_LOW = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_VPOL_LOW = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_PPOL_LOW = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_MODE_MASK = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_CCIR_CRC = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_CCIR656 = common dso_local global i32 0, align 4
@ISC_PFE_CFG0 = common dso_local global i32 0, align 4
@ISC_RLP_CFG = common dso_local global i32 0, align 4
@ISC_RLP_CFG_MODE_MASK = common dso_local global i32 0, align 4
@ISC_DCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isc_device*)* @isc_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_configure(%struct.isc_device* %0) #0 {
  %2 = alloca %struct.isc_device*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.isc_subdev_entity*, align 8
  store %struct.isc_device* %0, %struct.isc_device** %2, align 8
  %10 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %11 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %10, i32 0, i32 3
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %3, align 8
  %13 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %14 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %13, i32 0, i32 2
  %15 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %14, align 8
  store %struct.isc_subdev_entity* %15, %struct.isc_subdev_entity** %9, align 8
  %16 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %17 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %23 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %27 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %31 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ISC_DCFG_YMBSIZE_BEATS8, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ISC_DCFG_CMBSIZE_BEATS8, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %39 = getelementptr inbounds %struct.isc_subdev_entity, %struct.isc_subdev_entity* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ISC_PFE_CFG0_MODE_PROGRESSIVE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @ISC_PFE_CFG0_BPS_MASK, align 4
  %46 = load i32, i32* @ISC_PFE_CFG0_HPOL_LOW, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ISC_PFE_CFG0_VPOL_LOW, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ISC_PFE_CFG0_PPOL_LOW, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ISC_PFE_CFG0_MODE_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ISC_PFE_CFG0_CCIR_CRC, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ISC_PFE_CFG0_CCIR656, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load %struct.regmap*, %struct.regmap** %3, align 8
  %59 = load i32, i32* @ISC_PFE_CFG0, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @regmap_update_bits(%struct.regmap* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.regmap*, %struct.regmap** %3, align 8
  %64 = load i32, i32* @ISC_RLP_CFG, align 4
  %65 = load i32, i32* @ISC_RLP_CFG_MODE_MASK, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @regmap_update_bits(%struct.regmap* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.regmap*, %struct.regmap** %3, align 8
  %69 = load i32, i32* @ISC_DCFG, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @regmap_write(%struct.regmap* %68, i32 %69, i32 %70)
  %72 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @isc_set_pipeline(%struct.isc_device* %72, i32 %73)
  %75 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %76 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %1
  %81 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %82 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @ISC_IS_FORMAT_RAW(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %91 = call i32 @isc_set_histogram(%struct.isc_device* %90, i32 1)
  br label %95

92:                                               ; preds = %80, %1
  %93 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %94 = call i32 @isc_set_histogram(%struct.isc_device* %93, i32 0)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %97 = call i32 @isc_update_profile(%struct.isc_device* %96)
  ret i32 %97
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @isc_set_pipeline(%struct.isc_device*, i32) #1

declare dso_local i64 @ISC_IS_FORMAT_RAW(i32) #1

declare dso_local i32 @isc_set_histogram(%struct.isc_device*, i32) #1

declare dso_local i32 @isc_update_profile(%struct.isc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
