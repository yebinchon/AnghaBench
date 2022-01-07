; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { %struct.resources }
%struct.resources = type { i64, i64 }

@BM_GPMI_CTRL1_GPMI_MODE = common dso_local global i32 0, align 4
@HW_GPMI_CTRL1_CLR = common dso_local global i64 0, align 8
@BM_GPMI_CTRL1_ATA_IRQRDY_POLARITY = common dso_local global i32 0, align 4
@HW_GPMI_CTRL1_SET = common dso_local global i64 0, align 8
@BM_GPMI_CTRL1_DEV_RESET = common dso_local global i32 0, align 4
@BM_GPMI_CTRL1_BCH_MODE = common dso_local global i32 0, align 4
@BM_GPMI_CTRL1_DECOUPLE_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @gpmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_init(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca %struct.resources*, align 8
  %5 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  %6 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %7 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %6, i32 0, i32 0
  store %struct.resources* %7, %struct.resources** %4, align 8
  %8 = load %struct.resources*, %struct.resources** %4, align 8
  %9 = getelementptr inbounds %struct.resources, %struct.resources* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @gpmi_reset_block(i64 %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.resources*, %struct.resources** %4, align 8
  %17 = getelementptr inbounds %struct.resources, %struct.resources* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %20 = call i32 @GPMI_IS_MXS(%struct.gpmi_nand_data* %19)
  %21 = call i32 @gpmi_reset_block(i64 %18, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %61

25:                                               ; preds = %15
  %26 = load i32, i32* @BM_GPMI_CTRL1_GPMI_MODE, align 4
  %27 = load %struct.resources*, %struct.resources** %4, align 8
  %28 = getelementptr inbounds %struct.resources, %struct.resources* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HW_GPMI_CTRL1_CLR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load i32, i32* @BM_GPMI_CTRL1_ATA_IRQRDY_POLARITY, align 4
  %34 = load %struct.resources*, %struct.resources** %4, align 8
  %35 = getelementptr inbounds %struct.resources, %struct.resources* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HW_GPMI_CTRL1_SET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load i32, i32* @BM_GPMI_CTRL1_DEV_RESET, align 4
  %41 = load %struct.resources*, %struct.resources** %4, align 8
  %42 = getelementptr inbounds %struct.resources, %struct.resources* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HW_GPMI_CTRL1_SET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load i32, i32* @BM_GPMI_CTRL1_BCH_MODE, align 4
  %48 = load %struct.resources*, %struct.resources** %4, align 8
  %49 = getelementptr inbounds %struct.resources, %struct.resources* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HW_GPMI_CTRL1_SET, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load i32, i32* @BM_GPMI_CTRL1_DECOUPLE_CS, align 4
  %55 = load %struct.resources*, %struct.resources** %4, align 8
  %56 = getelementptr inbounds %struct.resources, %struct.resources* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @HW_GPMI_CTRL1_SET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  store i32 0, i32* %2, align 4
  br label %63

61:                                               ; preds = %24, %14
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %25
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @gpmi_reset_block(i64, i32) #1

declare dso_local i32 @GPMI_IS_MXS(%struct.gpmi_nand_data*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
