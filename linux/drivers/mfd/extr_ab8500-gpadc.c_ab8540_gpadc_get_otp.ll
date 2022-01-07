; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8540_gpadc_get_otp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8540_gpadc_get_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_gpadc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ADC_INPUT_VMAIN = common dso_local global i64 0, align 8
@ADC_INPUT_BTEMP = common dso_local global i64 0, align 8
@ADC_INPUT_VBAT = common dso_local global i64 0, align 8
@ADC_INPUT_IBAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ab8540_gpadc_get_otp(%struct.ab8500_gpadc* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.ab8500_gpadc*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.ab8500_gpadc* %0, %struct.ab8500_gpadc** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %19 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %10, align 8
  %20 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @ADC_INPUT_VMAIN, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %10, align 8
  %28 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* @ADC_INPUT_VMAIN, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %10, align 8
  %36 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* @ADC_INPUT_BTEMP, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %10, align 8
  %44 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* @ADC_INPUT_BTEMP, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %14, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %10, align 8
  %52 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* @ADC_INPUT_VBAT, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %15, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %10, align 8
  %60 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @ADC_INPUT_VBAT, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %16, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %10, align 8
  %68 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* @ADC_INPUT_IBAT, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %17, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %10, align 8
  %76 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i64, i64* @ADC_INPUT_IBAT, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %18, align 8
  store i32 %81, i32* %82, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
