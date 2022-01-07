; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_init_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_init_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_devdata = type { i64 }
%struct.sm501_reg_init = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sm501_devdata*, i64, %struct.sm501_reg_init*)* @sm501_init_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm501_init_reg(%struct.sm501_devdata* %0, i64 %1, %struct.sm501_reg_init* %2) #0 {
  %4 = alloca %struct.sm501_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sm501_reg_init*, align 8
  %7 = alloca i64, align 8
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sm501_reg_init* %2, %struct.sm501_reg_init** %6, align 8
  %8 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %9 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  %13 = call i64 @smc501_readl(i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.sm501_reg_init*, %struct.sm501_reg_init** %6, align 8
  %15 = getelementptr inbounds %struct.sm501_reg_init, %struct.sm501_reg_init* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %7, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %7, align 8
  %20 = load %struct.sm501_reg_init*, %struct.sm501_reg_init** %6, align 8
  %21 = getelementptr inbounds %struct.sm501_reg_init, %struct.sm501_reg_init* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %27 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %28, %29
  %31 = call i32 @smc501_writel(i64 %25, i64 %30)
  ret void
}

declare dso_local i64 @smc501_readl(i64) #1

declare dso_local i32 @smc501_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
