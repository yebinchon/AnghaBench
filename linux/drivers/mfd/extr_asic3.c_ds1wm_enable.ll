; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_ds1wm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_ds1wm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.asic3 = type { i32* }

@ASIC3_CLOCK_EX0 = common dso_local global i64 0, align 8
@ASIC3_CLOCK_EX1 = common dso_local global i64 0, align 8
@ASIC3_CLOCK_OWM = common dso_local global i64 0, align 8
@EXTCF = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@ASIC3_EXTCF_OWM_RESET = common dso_local global i32 0, align 4
@SELECT = common dso_local global i32 0, align 4
@ASIC3_EXTCF_OWM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ds1wm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_enable(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.asic3*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.asic3* @dev_get_drvdata(i32 %7)
  store %struct.asic3* %8, %struct.asic3** %3, align 8
  %9 = load %struct.asic3*, %struct.asic3** %3, align 8
  %10 = load %struct.asic3*, %struct.asic3** %3, align 8
  %11 = getelementptr inbounds %struct.asic3, %struct.asic3* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @ASIC3_CLOCK_EX0, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = call i32 @asic3_clk_enable(%struct.asic3* %9, i32* %14)
  %16 = load %struct.asic3*, %struct.asic3** %3, align 8
  %17 = load %struct.asic3*, %struct.asic3** %3, align 8
  %18 = getelementptr inbounds %struct.asic3, %struct.asic3* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @ASIC3_CLOCK_EX1, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @asic3_clk_enable(%struct.asic3* %16, i32* %21)
  %23 = load %struct.asic3*, %struct.asic3** %3, align 8
  %24 = load %struct.asic3*, %struct.asic3** %3, align 8
  %25 = getelementptr inbounds %struct.asic3, %struct.asic3* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @ASIC3_CLOCK_OWM, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @asic3_clk_enable(%struct.asic3* %23, i32* %28)
  %30 = call i32 @usleep_range(i32 1000, i32 5000)
  %31 = load %struct.asic3*, %struct.asic3** %3, align 8
  %32 = load i32, i32* @EXTCF, align 4
  %33 = load i32, i32* @RESET, align 4
  %34 = call i32 @ASIC3_OFFSET(i32 %32, i32 %33)
  %35 = load i32, i32* @ASIC3_EXTCF_OWM_RESET, align 4
  %36 = call i32 @asic3_set_register(%struct.asic3* %31, i32 %34, i32 %35, i32 1)
  %37 = call i32 @usleep_range(i32 1000, i32 5000)
  %38 = load %struct.asic3*, %struct.asic3** %3, align 8
  %39 = load i32, i32* @EXTCF, align 4
  %40 = load i32, i32* @RESET, align 4
  %41 = call i32 @ASIC3_OFFSET(i32 %39, i32 %40)
  %42 = load i32, i32* @ASIC3_EXTCF_OWM_RESET, align 4
  %43 = call i32 @asic3_set_register(%struct.asic3* %38, i32 %41, i32 %42, i32 0)
  %44 = call i32 @usleep_range(i32 1000, i32 5000)
  %45 = load %struct.asic3*, %struct.asic3** %3, align 8
  %46 = load i32, i32* @EXTCF, align 4
  %47 = load i32, i32* @SELECT, align 4
  %48 = call i32 @ASIC3_OFFSET(i32 %46, i32 %47)
  %49 = load i32, i32* @ASIC3_EXTCF_OWM_EN, align 4
  %50 = call i32 @asic3_set_register(%struct.asic3* %45, i32 %48, i32 %49, i32 1)
  %51 = call i32 @usleep_range(i32 1000, i32 5000)
  ret i32 0
}

declare dso_local %struct.asic3* @dev_get_drvdata(i32) #1

declare dso_local i32 @asic3_clk_enable(%struct.asic3*, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @asic3_set_register(%struct.asic3*, i32, i32, i32) #1

declare dso_local i32 @ASIC3_OFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
