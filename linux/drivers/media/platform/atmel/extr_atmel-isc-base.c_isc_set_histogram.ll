; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_set_histogram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_set_histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { %struct.TYPE_4__, %struct.isc_ctrls, %struct.regmap* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.isc_ctrls = type { i32, i32 }
%struct.regmap = type { i32 }

@ISC_HIS_CFG = common dso_local global i32 0, align 4
@ISC_HIS_CFG_MODE_GR = common dso_local global i32 0, align 4
@ISC_HIS_CFG_BAYSEL_SHIFT = common dso_local global i32 0, align 4
@ISC_HIS_CFG_RAR = common dso_local global i32 0, align 4
@ISC_HIS_CTRL = common dso_local global i32 0, align 4
@ISC_HIS_CTRL_EN = common dso_local global i32 0, align 4
@ISC_INTEN = common dso_local global i32 0, align 4
@ISC_INT_HISDONE = common dso_local global i32 0, align 4
@ISC_CTRLEN = common dso_local global i32 0, align 4
@ISC_CTRL_HISREQ = common dso_local global i32 0, align 4
@HIST_ENABLED = common dso_local global i32 0, align 4
@ISC_INTDIS = common dso_local global i32 0, align 4
@ISC_HIS_CTRL_DIS = common dso_local global i32 0, align 4
@HIST_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isc_device*, i32)* @isc_set_histogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isc_set_histogram(%struct.isc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.isc_ctrls*, align 8
  store %struct.isc_device* %0, %struct.isc_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %8 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %7, i32 0, i32 2
  %9 = load %struct.regmap*, %struct.regmap** %8, align 8
  store %struct.regmap* %9, %struct.regmap** %5, align 8
  %10 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %11 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %10, i32 0, i32 1
  store %struct.isc_ctrls* %11, %struct.isc_ctrls** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.regmap*, %struct.regmap** %5, align 8
  %16 = load i32, i32* @ISC_HIS_CFG, align 4
  %17 = load i32, i32* @ISC_HIS_CFG_MODE_GR, align 4
  %18 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %19 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ISC_HIS_CFG_BAYSEL_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %17, %25
  %27 = load i32, i32* @ISC_HIS_CFG_RAR, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @regmap_write(%struct.regmap* %15, i32 %16, i32 %28)
  %30 = load %struct.regmap*, %struct.regmap** %5, align 8
  %31 = load i32, i32* @ISC_HIS_CTRL, align 4
  %32 = load i32, i32* @ISC_HIS_CTRL_EN, align 4
  %33 = call i32 @regmap_write(%struct.regmap* %30, i32 %31, i32 %32)
  %34 = load %struct.regmap*, %struct.regmap** %5, align 8
  %35 = load i32, i32* @ISC_INTEN, align 4
  %36 = load i32, i32* @ISC_INT_HISDONE, align 4
  %37 = call i32 @regmap_write(%struct.regmap* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @ISC_HIS_CFG_MODE_GR, align 4
  %39 = load %struct.isc_ctrls*, %struct.isc_ctrls** %6, align 8
  %40 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %42 = call i32 @isc_update_profile(%struct.isc_device* %41)
  %43 = load %struct.regmap*, %struct.regmap** %5, align 8
  %44 = load i32, i32* @ISC_CTRLEN, align 4
  %45 = load i32, i32* @ISC_CTRL_HISREQ, align 4
  %46 = call i32 @regmap_write(%struct.regmap* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @HIST_ENABLED, align 4
  %48 = load %struct.isc_ctrls*, %struct.isc_ctrls** %6, align 8
  %49 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %62

50:                                               ; preds = %2
  %51 = load %struct.regmap*, %struct.regmap** %5, align 8
  %52 = load i32, i32* @ISC_INTDIS, align 4
  %53 = load i32, i32* @ISC_INT_HISDONE, align 4
  %54 = call i32 @regmap_write(%struct.regmap* %51, i32 %52, i32 %53)
  %55 = load %struct.regmap*, %struct.regmap** %5, align 8
  %56 = load i32, i32* @ISC_HIS_CTRL, align 4
  %57 = load i32, i32* @ISC_HIS_CTRL_DIS, align 4
  %58 = call i32 @regmap_write(%struct.regmap* %55, i32 %56, i32 %57)
  %59 = load i32, i32* @HIST_DISABLED, align 4
  %60 = load %struct.isc_ctrls*, %struct.isc_ctrls** %6, align 8
  %61 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %50, %14
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @isc_update_profile(%struct.isc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
