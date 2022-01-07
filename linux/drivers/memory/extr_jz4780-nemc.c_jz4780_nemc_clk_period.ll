; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_jz4780-nemc.c_jz4780_nemc_clk_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_jz4780-nemc.c_jz4780_nemc_clk_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_nemc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_nemc*)* @jz4780_nemc_clk_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_nemc_clk_period(%struct.jz4780_nemc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jz4780_nemc*, align 8
  %4 = alloca i64, align 8
  store %struct.jz4780_nemc* %0, %struct.jz4780_nemc** %3, align 8
  %5 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %3, align 8
  %6 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @clk_get_rate(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @div64_ul(i64 1000000000000, i64 %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @div64_ul(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
