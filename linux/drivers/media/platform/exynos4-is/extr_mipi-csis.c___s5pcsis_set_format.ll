; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c___s5pcsis_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c___s5pcsis_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csis_state = type { %struct.TYPE_2__*, i32, %struct.v4l2_mbus_framefmt }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"fmt: %#x, %d x %d\0A\00", align 1
@S5PCSIS_CONFIG = common dso_local global i32 0, align 4
@S5PCSIS_CFG_FMT_MASK = common dso_local global i32 0, align 4
@S5PCSIS_RESOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csis_state*)* @__s5pcsis_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__s5pcsis_set_format(%struct.csis_state* %0) #0 {
  %2 = alloca %struct.csis_state*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca i32, align 4
  store %struct.csis_state* %0, %struct.csis_state** %2, align 8
  %5 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %6 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %5, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %6, %struct.v4l2_mbus_framefmt** %3, align 8
  %7 = load i32, i32* @debug, align 4
  %8 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %9 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %8, i32 0, i32 1
  %10 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @v4l2_dbg(i32 1, i32 %7, i32* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18)
  %20 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %21 = load i32, i32* @S5PCSIS_CONFIG, align 4
  %22 = call i32 @s5pcsis_read(%struct.csis_state* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @S5PCSIS_CFG_FMT_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %28 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %26, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %34 = load i32, i32* @S5PCSIS_CONFIG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @s5pcsis_write(%struct.csis_state* %33, i32 %34, i32 %35)
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 16
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %46 = load i32, i32* @S5PCSIS_RESOL, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @s5pcsis_write(%struct.csis_state* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @s5pcsis_read(%struct.csis_state*, i32) #1

declare dso_local i32 @s5pcsis_write(%struct.csis_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
