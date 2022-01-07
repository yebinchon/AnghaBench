; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_stm32_cec_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_stm32_cec_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.stm32_cec* }
%struct.stm32_cec = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"fail to enable cec clock\0A\00", align 1
@CEC_CR = common dso_local global i32 0, align 4
@CECEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @stm32_cec_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cec_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_cec*, align 8
  %6 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %7, i32 0, i32 0
  %9 = load %struct.stm32_cec*, %struct.stm32_cec** %8, align 8
  store %struct.stm32_cec* %9, %struct.stm32_cec** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %14 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_enable(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %12
  %25 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %26 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_enable(i32 %27)
  %29 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %30 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CEC_CR, align 4
  %33 = load i32, i32* @CECEN, align 4
  %34 = load i32, i32* @CECEN, align 4
  %35 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %34)
  br label %51

36:                                               ; preds = %2
  %37 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_disable(i32 %39)
  %41 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %42 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable(i32 %43)
  %45 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %46 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CEC_CR, align 4
  %49 = load i32, i32* @CECEN, align 4
  %50 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %36, %24
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
