; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.isc_clk = type { i64, i32, i32 }

@ISC_ISPCK = common dso_local global i64 0, align 8
@ISC_CLKSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @isc_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.isc_clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.isc_clk* @to_isc_clk(%struct.clk_hw* %5)
  store %struct.isc_clk* %6, %struct.isc_clk** %3, align 8
  %7 = load %struct.isc_clk*, %struct.isc_clk** %3, align 8
  %8 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ISC_ISPCK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.isc_clk*, %struct.isc_clk** %3, align 8
  %14 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pm_runtime_get_sync(i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.isc_clk*, %struct.isc_clk** %3, align 8
  %19 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ISC_CLKSR, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %4)
  %23 = load %struct.isc_clk*, %struct.isc_clk** %3, align 8
  %24 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ISC_ISPCK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.isc_clk*, %struct.isc_clk** %3, align 8
  %30 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pm_runtime_put_sync(i32 %31)
  br label %33

33:                                               ; preds = %28, %17
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.isc_clk*, %struct.isc_clk** %3, align 8
  %36 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ISC_CLK(i64 %37)
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  ret i32 %42
}

declare dso_local %struct.isc_clk* @to_isc_clk(%struct.clk_hw*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @ISC_CLK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
