; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_controller_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_controller_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqspi_st = type { i32, i32, i32, i64 }

@CQSPI_REG_REMAP = common dso_local global i64 0, align 8
@CQSPI_REG_IRQMASK = common dso_local global i64 0, align 8
@CQSPI_REG_SRAMPARTITION = common dso_local global i64 0, align 8
@CQSPI_REG_INDIRECTTRIGGER = common dso_local global i64 0, align 8
@CQSPI_REG_INDIRECTRDWATERMARK = common dso_local global i64 0, align 8
@CQSPI_REG_INDIRECTWRWATERMARK = common dso_local global i64 0, align 8
@CQSPI_REG_CONFIG = common dso_local global i64 0, align 8
@CQSPI_REG_CONFIG_ENB_DIR_ACC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cqspi_st*)* @cqspi_controller_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cqspi_controller_init(%struct.cqspi_st* %0) #0 {
  %2 = alloca %struct.cqspi_st*, align 8
  %3 = alloca i32, align 4
  store %struct.cqspi_st* %0, %struct.cqspi_st** %2, align 8
  %4 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %5 = call i32 @cqspi_controller_enable(%struct.cqspi_st* %4, i32 0)
  %6 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %7 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CQSPI_REG_REMAP, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 0, i64 %10)
  %12 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %13 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CQSPI_REG_IRQMASK, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 0, i64 %16)
  %18 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %19 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 2
  %22 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %23 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CQSPI_REG_SRAMPARTITION, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %29 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %32 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CQSPI_REG_INDIRECTTRIGGER, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %38 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %41 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = sdiv i32 %43, 2
  %45 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %46 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CQSPI_REG_INDIRECTRDWATERMARK, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %52 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %55 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  %58 = sdiv i32 %57, 8
  %59 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %60 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CQSPI_REG_INDIRECTWRWATERMARK, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %66 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CQSPI_REG_CONFIG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @CQSPI_REG_CONFIG_ENB_DIR_ACC_CTRL, align 4
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %76 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CQSPI_REG_CONFIG, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load %struct.cqspi_st*, %struct.cqspi_st** %2, align 8
  %82 = call i32 @cqspi_controller_enable(%struct.cqspi_st* %81, i32 1)
  ret void
}

declare dso_local i32 @cqspi_controller_enable(%struct.cqspi_st*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
