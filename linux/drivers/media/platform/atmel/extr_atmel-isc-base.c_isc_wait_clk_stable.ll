; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_wait_clk_stable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_wait_clk_stable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.isc_clk = type { %struct.regmap* }
%struct.regmap = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ISC_CLKSR = common dso_local global i32 0, align 4
@ISC_CLKSR_SIP = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @isc_wait_clk_stable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_wait_clk_stable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.isc_clk*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.isc_clk* @to_isc_clk(%struct.clk_hw* %8)
  store %struct.isc_clk* %9, %struct.isc_clk** %4, align 8
  %10 = load %struct.isc_clk*, %struct.isc_clk** %4, align 8
  %11 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %5, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = call i64 @usecs_to_jiffies(i32 1000)
  %15 = add i64 %13, %14
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %30, %1
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @time_before(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = load i32, i32* @ISC_CLKSR, align 4
  %24 = call i32 @regmap_read(%struct.regmap* %22, i32 %23, i32* %7)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ISC_CLKSR_SIP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

30:                                               ; preds = %21
  %31 = call i32 @usleep_range(i32 10, i32 250)
  br label %16

32:                                               ; preds = %16
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.isc_clk* @to_isc_clk(%struct.clk_hw*) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
