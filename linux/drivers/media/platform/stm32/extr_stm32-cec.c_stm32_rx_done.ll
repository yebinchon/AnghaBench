; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_stm32_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_stm32_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cec = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32*, i64 }

@RXACKE = common dso_local global i32 0, align 4
@RXOVR = common dso_local global i32 0, align 4
@RXBR = common dso_local global i32 0, align 4
@CEC_RXDR = common dso_local global i32 0, align 4
@RXEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cec*, i32)* @stm32_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_rx_done(%struct.stm32_cec* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_cec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm32_cec* %0, %struct.stm32_cec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %7 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RXACKE, align 4
  %10 = load i32, i32* @RXOVR, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %20 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RXBR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %18
  %26 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %27 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CEC_RXDR, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %5)
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 255
  %33 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %34 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %38 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32 %32, i32* %42, align 4
  br label %43

43:                                               ; preds = %25, %18
  %44 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %45 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RXEND, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %52 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %55 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %54, i32 0, i32 1
  %56 = call i32 @cec_received_msg(i32 %53, %struct.TYPE_2__* %55)
  %57 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %58 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %14, %50, %43
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @cec_received_msg(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
