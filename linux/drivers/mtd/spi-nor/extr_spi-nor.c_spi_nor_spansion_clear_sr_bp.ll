; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spansion_clear_sr_bp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spansion_clear_sr_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32*, i32 }

@SR_BP2 = common dso_local global i32 0, align 4
@SR_BP1 = common dso_local global i32 0, align 4
@SR_BP0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"error while reading configuration register\0A\00", align 1
@CR_QUAD_EN_SPAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error while reading status register\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"16-bit write register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @spi_nor_spansion_clear_sr_bp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_spansion_clear_sr_bp(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %7 = load i32, i32* @SR_BP2, align 4
  %8 = load i32, i32* @SR_BP1, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SR_BP0, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %13 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %16 = call i32 @read_cr(%struct.spi_nor* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %21 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %66

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CR_QUAD_EN_SPAN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %35 = call i32 @read_sr(%struct.spi_nor* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %40 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %66

44:                                               ; preds = %30
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @write_sr_cr(%struct.spi_nor* %51, i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %58 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %44
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %66

63:                                               ; preds = %25
  %64 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %65 = call i32 @spi_nor_clear_sr_bp(%struct.spi_nor* %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %61, %38, %19
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @read_cr(%struct.spi_nor*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @read_sr(%struct.spi_nor*) #1

declare dso_local i32 @write_sr_cr(%struct.spi_nor*, i32*) #1

declare dso_local i32 @spi_nor_clear_sr_bp(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
