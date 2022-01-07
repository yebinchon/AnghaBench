; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe811_adc_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe811_adc_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32, i32, i32, i32, i32 }

@STMPE811_REG_ADC_CTRL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Could not setup ADC\0A\00", align 1
@STMPE811_REG_ADC_CTRL2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmpe811_adc_common_init(%struct.stmpe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmpe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stmpe* %0, %struct.stmpe** %3, align 8
  %7 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %8 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @STMPE_SAMPLE_TIME(i32 %9)
  %11 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %12 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @STMPE_MOD_12B(i32 %13)
  %15 = or i32 %10, %14
  %16 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %17 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @STMPE_REF_SEL(i32 %18)
  %20 = or i32 %15, %19
  store i32 %20, i32* %5, align 4
  %21 = call i32 @STMPE_SAMPLE_TIME(i32 255)
  %22 = call i32 @STMPE_MOD_12B(i32 255)
  %23 = or i32 %21, %22
  %24 = call i32 @STMPE_REF_SEL(i32 255)
  %25 = or i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %27 = load i32, i32* @STMPE811_REG_ADC_CTRL1, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @stmpe_set_bits(%struct.stmpe* %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %35 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %57

39:                                               ; preds = %1
  %40 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %41 = load i32, i32* @STMPE811_REG_ADC_CTRL2, align 4
  %42 = call i32 @STMPE_ADC_FREQ(i32 255)
  %43 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %44 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @STMPE_ADC_FREQ(i32 %45)
  %47 = call i32 @stmpe_set_bits(%struct.stmpe* %40, i32 %41, i32 %42, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %52 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %50, %33
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @STMPE_SAMPLE_TIME(i32) #1

declare dso_local i32 @STMPE_MOD_12B(i32) #1

declare dso_local i32 @STMPE_REF_SEL(i32) #1

declare dso_local i32 @stmpe_set_bits(%struct.stmpe*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @STMPE_ADC_FREQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
