; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_hw_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_hw_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_spi = type { i64 }

@HSFSTS_CTL = common dso_local global i64 0, align 8
@HSFSTS_CTL_FCYCLE_MASK = common dso_local global i32 0, align 4
@HSFSTS_CTL_FDBC_MASK = common dso_local global i32 0, align 4
@HSFSTS_CTL_FCYCLE_RDID = common dso_local global i32 0, align 4
@HSFSTS_CTL_FCYCLE_WRSR = common dso_local global i32 0, align 4
@HSFSTS_CTL_FCYCLE_RDSR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTEL_SPI_FIFO_SZ = common dso_local global i32 0, align 4
@HSFSTS_CTL_FDBC_SHIFT = common dso_local global i32 0, align 4
@HSFSTS_CTL_FCERR = common dso_local global i32 0, align 4
@HSFSTS_CTL_FDONE = common dso_local global i32 0, align 4
@HSFSTS_CTL_FGO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HSFSTS_CTL_AEL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_spi*, i32, i32)* @intel_spi_hw_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_spi_hw_cycle(%struct.intel_spi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_spi* %0, %struct.intel_spi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %12 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HSFSTS_CTL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @HSFSTS_CTL_FCYCLE_MASK, align 4
  %18 = load i32, i32* @HSFSTS_CTL_FDBC_MASK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %36 [
    i32 130, label %24
    i32 128, label %28
    i32 129, label %32
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* @HSFSTS_CTL_FCYCLE_RDID, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %39

28:                                               ; preds = %3
  %29 = load i32, i32* @HSFSTS_CTL_FCYCLE_WRSR, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* @HSFSTS_CTL_FCYCLE_RDSR, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %98

39:                                               ; preds = %32, %28, %24
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @INTEL_SPI_FIFO_SZ, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %98

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @HSFSTS_CTL_FDBC_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @HSFSTS_CTL_FCERR, align 4
  %54 = load i32, i32* @HSFSTS_CTL_FDONE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @HSFSTS_CTL_FGO, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %63 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HSFSTS_CTL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %69 = call i32 @intel_spi_wait_hw_busy(%struct.intel_spi* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %46
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %98

74:                                               ; preds = %46
  %75 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %76 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @HSFSTS_CTL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @readl(i64 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @HSFSTS_CTL_FCERR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %98

88:                                               ; preds = %74
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @HSFSTS_CTL_AEL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @EACCES, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %98

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %93, %85, %72, %43, %36
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @intel_spi_wait_hw_busy(%struct.intel_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
