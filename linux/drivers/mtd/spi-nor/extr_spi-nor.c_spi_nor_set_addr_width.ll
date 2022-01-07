; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_set_addr_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_set_addr_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SPI_NOR_MAX_ADDR_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"address width is too large: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNOR_F_4B_OPCODES = common dso_local global i32 0, align 4
@SNOR_F_HAS_4BAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @spi_nor_set_addr_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_set_addr_width(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %4 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %5 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %38

9:                                                ; preds = %1
  %10 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %18 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %23 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %37

24:                                               ; preds = %9
  %25 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %26 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 16777216
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %32 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  br label %36

33:                                               ; preds = %24
  %34 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %35 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %34, i32 0, i32 0
  store i32 3, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %16
  br label %38

38:                                               ; preds = %37, %8
  %39 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %40 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SPI_NOR_MAX_ADDR_WIDTH, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %46 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %49 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %77

54:                                               ; preds = %38
  %55 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %56 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %61 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SNOR_F_4B_OPCODES, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %68 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SNOR_F_HAS_4BAIT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %75 = call i32 @spi_nor_set_4byte_opcodes(%struct.spi_nor* %74)
  br label %76

76:                                               ; preds = %73, %66, %59, %54
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %44
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spi_nor_set_4byte_opcodes(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
