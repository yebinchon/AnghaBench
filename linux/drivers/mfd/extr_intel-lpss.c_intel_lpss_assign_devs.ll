; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_assign_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_assign_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfd_cell = type { i32 }
%struct.intel_lpss = type { i32, i32, i32, i32 }

@LPSS_PRIV_CAPS_TYPE_MASK = common dso_local global i32 0, align 4
@LPSS_PRIV_CAPS_TYPE_SHIFT = common dso_local global i32 0, align 4
@intel_lpss_i2c_cell = common dso_local global %struct.mfd_cell zeroinitializer, align 4
@intel_lpss_uart_cell = common dso_local global %struct.mfd_cell zeroinitializer, align 4
@intel_lpss_spi_cell = common dso_local global %struct.mfd_cell zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lpss*)* @intel_lpss_assign_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_lpss_assign_devs(%struct.intel_lpss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_lpss*, align 8
  %4 = alloca %struct.mfd_cell*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_lpss* %0, %struct.intel_lpss** %3, align 8
  %6 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %7 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LPSS_PRIV_CAPS_TYPE_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @LPSS_PRIV_CAPS_TYPE_SHIFT, align 4
  %12 = load i32, i32* %5, align 4
  %13 = lshr i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %18 [
    i32 130, label %15
    i32 128, label %16
    i32 129, label %17
  ]

15:                                               ; preds = %1
  store %struct.mfd_cell* @intel_lpss_i2c_cell, %struct.mfd_cell** %4, align 8
  br label %21

16:                                               ; preds = %1
  store %struct.mfd_cell* @intel_lpss_uart_cell, %struct.mfd_cell** %4, align 8
  br label %21

17:                                               ; preds = %1
  store %struct.mfd_cell* @intel_lpss_spi_cell, %struct.mfd_cell** %4, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %17, %16, %15
  %22 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %23 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @devm_kmemdup(i32 %24, %struct.mfd_cell* %25, i32 4, i32 %26)
  %28 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %29 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %31 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %21
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %40 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %34, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @devm_kmemdup(i32, %struct.mfd_cell*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
