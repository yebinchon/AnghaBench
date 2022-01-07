; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_fill_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_fill_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_spi = type { i32, i32, i64 }
%struct.mtd_partition = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"BIOS\00", align 1
@FREG_BASE_MASK = common dso_local global i32 0, align 4
@FREG_LIMIT_MASK = common dso_local global i32 0, align 4
@FREG_LIMIT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_spi*, %struct.mtd_partition*)* @intel_spi_fill_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_spi_fill_partition(%struct.intel_spi* %0, %struct.mtd_partition* %1) #0 {
  %3 = alloca %struct.intel_spi*, align 8
  %4 = alloca %struct.mtd_partition*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_spi* %0, %struct.intel_spi** %3, align 8
  store %struct.mtd_partition* %1, %struct.mtd_partition** %4, align 8
  %10 = load %struct.mtd_partition*, %struct.mtd_partition** %4, align 8
  %11 = call i32 @memset(%struct.mtd_partition* %10, i32 0, i32 16)
  %12 = load %struct.mtd_partition*, %struct.mtd_partition** %4, align 8
  %13 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %12, i32 0, i32 0
  store i32 4096, i32* %13, align 8
  %14 = load %struct.mtd_partition*, %struct.mtd_partition** %4, align 8
  %15 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %68, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %19 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %16
  %23 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %24 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @FREG(i32 %26)
  %28 = add nsw i64 %25, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FREG_BASE_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @FREG_LIMIT_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @FREG_LIMIT_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %22
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %22
  br label %68

45:                                               ; preds = %41
  %46 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @intel_spi_is_protected(%struct.intel_spi* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %53 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 %55, 12
  %57 = add nsw i32 %56, 4096
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.mtd_partition*, %struct.mtd_partition** %4, align 8
  %60 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.mtd_partition*, %struct.mtd_partition** %4, align 8
  %66 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %54
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %16

71:                                               ; preds = %16
  ret void
}

declare dso_local i32 @memset(%struct.mtd_partition*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @FREG(i32) #1

declare dso_local i64 @intel_spi_is_protected(%struct.intel_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
