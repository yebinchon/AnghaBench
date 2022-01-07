; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_sr2_bit7_quad_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_sr2_bit7_quad_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32*, i32 }

@SR2_QUAD_EN_BIT7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"error while writing status register 2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"timeout while writing status register 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"SR2 Quad bit not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @sr2_bit7_quad_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr2_bit7_quad_enable(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %6 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %7 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %4, align 8
  %9 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @spi_nor_read_sr2(%struct.spi_nor* %9, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %73

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SR2_QUAD_EN_BIT7, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %73

23:                                               ; preds = %16
  %24 = load i32, i32* @SR2_QUAD_EN_BIT7, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %29 = call i32 @write_enable(%struct.spi_nor* %28)
  %30 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @spi_nor_write_sr2(%struct.spi_nor* %30, i32* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %37 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %73

42:                                               ; preds = %23
  %43 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %44 = call i32 @spi_nor_wait_till_ready(%struct.spi_nor* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %49 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %73

53:                                               ; preds = %42
  %54 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @spi_nor_read_sr2(%struct.spi_nor* %54, i32* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SR2_QUAD_EN_BIT7, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %67 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %65, %47, %35, %22, %14
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @spi_nor_read_sr2(%struct.spi_nor*, i32*) #1

declare dso_local i32 @write_enable(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_write_sr2(%struct.spi_nor*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spi_nor_wait_till_ready(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
