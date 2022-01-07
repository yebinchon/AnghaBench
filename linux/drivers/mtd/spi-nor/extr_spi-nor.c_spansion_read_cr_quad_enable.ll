; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spansion_read_cr_quad_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spansion_read_cr_quad_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"error while reading configuration register\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CR_QUAD_EN_SPAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error while reading status register\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Spansion Quad bit not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @spansion_read_cr_quad_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spansion_read_cr_quad_enable(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %7 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %8 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %14 = call i32 @read_cr(%struct.spi_nor* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CR_QUAD_EN_SPAN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %72

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CR_QUAD_EN_SPAN, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %35 = call i32 @read_sr(%struct.spi_nor* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %72

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @write_sr_cr(%struct.spi_nor* %47, i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %72

54:                                               ; preds = %43
  %55 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %56 = call i32 @read_cr(%struct.spi_nor* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @CR_QUAD_EN_SPAN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %66 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %65, i32 0, i32 1
  %67 = load %struct.device*, %struct.device** %66, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %64, %52, %38, %27, %17
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @read_cr(%struct.spi_nor*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @read_sr(%struct.spi_nor*) #1

declare dso_local i32 @write_sr_cr(%struct.spi_nor*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
