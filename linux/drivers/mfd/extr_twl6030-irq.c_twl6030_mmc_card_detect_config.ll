; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6030-irq.c_twl6030_mmc_card_detect_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6030-irq.c_twl6030_mmc_card_detect_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TWL6030_MMCDETECT_INT_MASK = common dso_local global i32 0, align 4
@REG_INT_MSK_LINE_B = common dso_local global i32 0, align 4
@REG_INT_MSK_STS_B = common dso_local global i32 0, align 4
@TWL6030_MODULE_ID0 = common dso_local global i32 0, align 4
@TWL6030_MMCCTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"twl6030: Failed to read MMCCTRL, error %d\0A\00", align 1
@VMMC_AUTO_OFF = common dso_local global i32 0, align 4
@SW_FC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"twl6030: Failed to write MMCCTRL, error %d\0A\00", align 1
@TWL6030_CFG_INPUT_PUPD3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"twl6030: Failed to read CFG_INPUT_PUPD3, error %d\0A\00", align 1
@MMC_PU = common dso_local global i32 0, align 4
@MMC_PD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"twl6030: Failed to write CFG_INPUT_PUPD3, error %d\0A\00", align 1
@twl6030_irq = common dso_local global %struct.TYPE_2__* null, align 8
@MMCDETECT_INTR_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl6030_mmc_card_detect_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @TWL6030_MMCDETECT_INT_MASK, align 4
  %5 = load i32, i32* @REG_INT_MSK_LINE_B, align 4
  %6 = call i32 @twl6030_interrupt_unmask(i32 %4, i32 %5)
  %7 = load i32, i32* @TWL6030_MMCDETECT_INT_MASK, align 4
  %8 = load i32, i32* @REG_INT_MSK_STS_B, align 4
  %9 = call i32 @twl6030_interrupt_unmask(i32 %7, i32 %8)
  %10 = load i32, i32* @TWL6030_MODULE_ID0, align 4
  %11 = load i32, i32* @TWL6030_MMCCTRL, align 4
  %12 = call i32 @twl_i2c_read_u8(i32 %10, i32* %3, i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %70

19:                                               ; preds = %0
  %20 = load i32, i32* @VMMC_AUTO_OFF, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @SW_FC, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @TWL6030_MODULE_ID0, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @TWL6030_MMCCTRL, align 4
  %30 = call i32 @twl_i2c_write_u8(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %70

37:                                               ; preds = %19
  %38 = load i32, i32* @TWL6030_MODULE_ID0, align 4
  %39 = load i32, i32* @TWL6030_CFG_INPUT_PUPD3, align 4
  %40 = call i32 @twl_i2c_read_u8(i32 %38, i32* %3, i32 %39)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %70

47:                                               ; preds = %37
  %48 = load i32, i32* @MMC_PU, align 4
  %49 = load i32, i32* @MMC_PD, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @TWL6030_MODULE_ID0, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @TWL6030_CFG_INPUT_PUPD3, align 4
  %57 = call i32 @twl_i2c_write_u8(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %2, align 4
  store i32 %63, i32* %1, align 4
  br label %70

64:                                               ; preds = %47
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @twl6030_irq, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MMCDETECT_INTR_OFFSET, align 4
  %69 = call i32 @irq_find_mapping(i32 %67, i32 %68)
  store i32 %69, i32* %1, align 4
  br label %70

70:                                               ; preds = %64, %60, %43, %33, %15
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32 @twl6030_interrupt_unmask(i32, i32) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
