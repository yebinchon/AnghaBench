; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_devdata = type { i32 }
%struct.sm501_initdata = type { i64, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SM501_MISC_TIMING = common dso_local global i32 0, align 4
@SM501_GPIO31_0_CONTROL = common dso_local global i32 0, align 4
@SM501_GPIO63_32_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"setting M1XCLK to %ld\0A\00", align 1
@SM501_CLOCK_M1XCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"setting MCLK to %ld\0A\00", align 1
@SM501_CLOCK_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sm501_devdata*, %struct.sm501_initdata*)* @sm501_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm501_init_regs(%struct.sm501_devdata* %0, %struct.sm501_initdata* %1) #0 {
  %3 = alloca %struct.sm501_devdata*, align 8
  %4 = alloca %struct.sm501_initdata*, align 8
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %3, align 8
  store %struct.sm501_initdata* %1, %struct.sm501_initdata** %4, align 8
  %5 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %6 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %9 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %13 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sm501_misc_control(i32 %7, i32 %11, i32 %15)
  %17 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %18 = load i32, i32* @SM501_MISC_TIMING, align 4
  %19 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %20 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %19, i32 0, i32 4
  %21 = call i32 @sm501_init_reg(%struct.sm501_devdata* %17, i32 %18, i32* %20)
  %22 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %23 = load i32, i32* @SM501_GPIO31_0_CONTROL, align 4
  %24 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %25 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %24, i32 0, i32 3
  %26 = call i32 @sm501_init_reg(%struct.sm501_devdata* %22, i32 %23, i32* %25)
  %27 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %28 = load i32, i32* @SM501_GPIO63_32_CONTROL, align 4
  %29 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %30 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %29, i32 0, i32 2
  %31 = call i32 @sm501_init_reg(%struct.sm501_devdata* %27, i32 %28, i32* %30)
  %32 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %33 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %2
  %37 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %38 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %41 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_info(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %45 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SM501_CLOCK_M1XCLK, align 4
  %48 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %49 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @sm501_set_clock(i32 %46, i32 %47, i64 %50)
  br label %52

52:                                               ; preds = %36, %2
  %53 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %54 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %59 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %62 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dev_info(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %66 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SM501_CLOCK_MCLK, align 4
  %69 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %70 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @sm501_set_clock(i32 %67, i32 %68, i64 %71)
  br label %73

73:                                               ; preds = %57, %52
  ret void
}

declare dso_local i32 @sm501_misc_control(i32, i32, i32) #1

declare dso_local i32 @sm501_init_reg(%struct.sm501_devdata*, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @sm501_set_clock(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
