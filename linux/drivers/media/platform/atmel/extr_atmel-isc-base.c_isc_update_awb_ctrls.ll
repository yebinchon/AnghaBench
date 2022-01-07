; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_update_awb_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_update_awb_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { i32, %struct.isc_ctrls }
%struct.isc_ctrls = type { i32*, i32* }

@ISC_WB_O_RGR = common dso_local global i32 0, align 4
@ISC_WB_O_ZERO_VAL = common dso_local global i32 0, align 4
@ISC_HIS_CFG_MODE_R = common dso_local global i64 0, align 8
@ISC_HIS_CFG_MODE_GR = common dso_local global i64 0, align 8
@ISC_WB_O_BGB = common dso_local global i32 0, align 4
@ISC_HIS_CFG_MODE_B = common dso_local global i64 0, align 8
@ISC_HIS_CFG_MODE_GB = common dso_local global i64 0, align 8
@ISC_WB_G_RGR = common dso_local global i32 0, align 4
@ISC_WB_G_BGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isc_device*)* @isc_update_awb_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isc_update_awb_ctrls(%struct.isc_device* %0) #0 {
  %2 = alloca %struct.isc_device*, align 8
  %3 = alloca %struct.isc_ctrls*, align 8
  store %struct.isc_device* %0, %struct.isc_device** %2, align 8
  %4 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %5 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %4, i32 0, i32 1
  store %struct.isc_ctrls* %5, %struct.isc_ctrls** %3, align 8
  %6 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %7 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ISC_WB_O_RGR, align 4
  %10 = load i32, i32* @ISC_WB_O_ZERO_VAL, align 4
  %11 = load %struct.isc_ctrls*, %struct.isc_ctrls** %3, align 8
  %12 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @ISC_HIS_CFG_MODE_R, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %10, %16
  %18 = load i32, i32* @ISC_WB_O_ZERO_VAL, align 4
  %19 = load %struct.isc_ctrls*, %struct.isc_ctrls** %3, align 8
  %20 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @ISC_HIS_CFG_MODE_GR, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %18, %24
  %26 = shl i32 %25, 16
  %27 = or i32 %17, %26
  %28 = call i32 @regmap_write(i32 %8, i32 %9, i32 %27)
  %29 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %30 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ISC_WB_O_BGB, align 4
  %33 = load i32, i32* @ISC_WB_O_ZERO_VAL, align 4
  %34 = load %struct.isc_ctrls*, %struct.isc_ctrls** %3, align 8
  %35 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @ISC_HIS_CFG_MODE_B, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %33, %39
  %41 = load i32, i32* @ISC_WB_O_ZERO_VAL, align 4
  %42 = load %struct.isc_ctrls*, %struct.isc_ctrls** %3, align 8
  %43 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @ISC_HIS_CFG_MODE_GB, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %41, %47
  %49 = shl i32 %48, 16
  %50 = or i32 %40, %49
  %51 = call i32 @regmap_write(i32 %31, i32 %32, i32 %50)
  %52 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %53 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ISC_WB_G_RGR, align 4
  %56 = load %struct.isc_ctrls*, %struct.isc_ctrls** %3, align 8
  %57 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @ISC_HIS_CFG_MODE_R, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.isc_ctrls*, %struct.isc_ctrls** %3, align 8
  %63 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @ISC_HIS_CFG_MODE_GR, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 16
  %69 = or i32 %61, %68
  %70 = call i32 @regmap_write(i32 %54, i32 %55, i32 %69)
  %71 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %72 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ISC_WB_G_BGB, align 4
  %75 = load %struct.isc_ctrls*, %struct.isc_ctrls** %3, align 8
  %76 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @ISC_HIS_CFG_MODE_B, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.isc_ctrls*, %struct.isc_ctrls** %3, align 8
  %82 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @ISC_HIS_CFG_MODE_GB, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 %80, %87
  %89 = call i32 @regmap_write(i32 %73, i32 %74, i32 %88)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
