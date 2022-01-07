; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-core.c_da9052_adc_manual_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-core.c_da9052_adc_manual_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052 = type { i32, i32, i32 }

@DA9052_ADC_VBBAT = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@chan_mux = common dso_local global i8* null, align 8
@DA9052_ADC_MAN_MAN_CONV = common dso_local global i8 0, align 1
@DA9052_ADC_MAN_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"timeout waiting for ADC conversion interrupt\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DA9052_ADC_RES_H_REG = common dso_local global i32 0, align 4
@DA9052_ADC_RES_L_REG = common dso_local global i32 0, align 4
@DA9052_ADC_RES_LSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da9052_adc_manual_read(%struct.da9052* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9052*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  store %struct.da9052* %0, %struct.da9052** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @DA9052_ADC_VBBAT, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.da9052*, %struct.da9052** %4, align 8
  %20 = getelementptr inbounds %struct.da9052, %struct.da9052* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.da9052*, %struct.da9052** %4, align 8
  %23 = getelementptr inbounds %struct.da9052, %struct.da9052* %22, i32 0, i32 2
  %24 = call i32 @reinit_completion(i32* %23)
  %25 = load i8*, i8** @chan_mux, align 8
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @DA9052_ADC_MAN_MAN_CONV, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %30, %32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %9, align 1
  %35 = load %struct.da9052*, %struct.da9052** %4, align 8
  %36 = load i32, i32* @DA9052_ADC_MAN_REG, align 4
  %37 = load i8, i8* %9, align 1
  %38 = call i32 @da9052_reg_write(%struct.da9052* %35, i32 %36, i8 zeroext %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %18
  br label %88

42:                                               ; preds = %18
  %43 = load %struct.da9052*, %struct.da9052** %4, align 8
  %44 = getelementptr inbounds %struct.da9052, %struct.da9052* %43, i32 0, i32 2
  %45 = call i32 @msecs_to_jiffies(i32 500)
  %46 = call i32 @wait_for_completion_timeout(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load %struct.da9052*, %struct.da9052** %4, align 8
  %50 = getelementptr inbounds %struct.da9052, %struct.da9052* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %88

55:                                               ; preds = %42
  %56 = load %struct.da9052*, %struct.da9052** %4, align 8
  %57 = load i32, i32* @DA9052_ADC_RES_H_REG, align 4
  %58 = call i32 @da9052_reg_read(%struct.da9052* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %88

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %7, align 2
  %65 = load i16, i16* %7, align 2
  %66 = zext i16 %65 to i32
  %67 = shl i32 %66, 2
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %8, align 2
  %69 = load %struct.da9052*, %struct.da9052** %4, align 8
  %70 = load i32, i32* @DA9052_ADC_RES_L_REG, align 4
  %71 = call i32 @da9052_reg_read(%struct.da9052* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %88

75:                                               ; preds = %62
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @DA9052_ADC_RES_LSB, align 4
  %78 = and i32 %76, %77
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %7, align 2
  %80 = load i16, i16* %7, align 2
  %81 = zext i16 %80 to i32
  %82 = load i16, i16* %8, align 2
  %83 = zext i16 %82 to i32
  %84 = or i32 %83, %81
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %8, align 2
  %86 = load i16, i16* %8, align 2
  %87 = zext i16 %86 to i32
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %75, %74, %61, %48, %41
  %89 = load %struct.da9052*, %struct.da9052** %4, align 8
  %90 = getelementptr inbounds %struct.da9052, %struct.da9052* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @da9052_reg_write(%struct.da9052*, i32, i8 zeroext) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @da9052_reg_read(%struct.da9052*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
