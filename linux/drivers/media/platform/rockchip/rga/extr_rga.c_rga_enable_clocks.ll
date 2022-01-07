; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_enable_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_enable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_rga = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Cannot enable rga sclk: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot enable rga aclk: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot enable rga hclk: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_rga*)* @rga_enable_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rga_enable_clocks(%struct.rockchip_rga* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_rga*, align 8
  %4 = alloca i32, align 4
  store %struct.rockchip_rga* %0, %struct.rockchip_rga** %3, align 8
  %5 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %6 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %13 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %20 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_prepare_enable(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %27 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %45

31:                                               ; preds = %18
  %32 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %33 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_prepare_enable(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %40 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %50

44:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %56

45:                                               ; preds = %25
  %46 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %47 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %52 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_disable_unprepare(i32 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %44, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
