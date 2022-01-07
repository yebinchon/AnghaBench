; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-adc.c_pcf50633_adc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-adc.c_pcf50633_adc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633_adc = type { i32, i32, %struct.pcf50633_adc_request**, %struct.pcf50633.0* }
%struct.pcf50633_adc_request = type { i32, i32 (%struct.pcf50633*, i32, i32)* }
%struct.pcf50633 = type opaque
%struct.pcf50633.0 = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"pcf50633-adc irq: ADC queue empty!\0A\00", align 1
@PCF50633_MAX_ADC_FIFO_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @pcf50633_adc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcf50633_adc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcf50633_adc*, align 8
  %6 = alloca %struct.pcf50633.0*, align 8
  %7 = alloca %struct.pcf50633_adc_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.pcf50633_adc*
  store %struct.pcf50633_adc* %11, %struct.pcf50633_adc** %5, align 8
  %12 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %5, align 8
  %13 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %12, i32 0, i32 3
  %14 = load %struct.pcf50633.0*, %struct.pcf50633.0** %13, align 8
  store %struct.pcf50633.0* %14, %struct.pcf50633.0** %6, align 8
  %15 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %5, align 8
  %16 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %5, align 8
  %19 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %5, align 8
  %22 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %21, i32 0, i32 2
  %23 = load %struct.pcf50633_adc_request**, %struct.pcf50633_adc_request*** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %23, i64 %25
  %27 = load %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %26, align 8
  store %struct.pcf50633_adc_request* %27, %struct.pcf50633_adc_request** %7, align 8
  %28 = load %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %7, align 8
  %29 = icmp ne %struct.pcf50633_adc_request* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.pcf50633.0*, %struct.pcf50633.0** %6, align 8
  %36 = getelementptr inbounds %struct.pcf50633.0, %struct.pcf50633.0* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %5, align 8
  %40 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %75

42:                                               ; preds = %2
  %43 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %5, align 8
  %44 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %43, i32 0, i32 2
  %45 = load %struct.pcf50633_adc_request**, %struct.pcf50633_adc_request*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %45, i64 %47
  store %struct.pcf50633_adc_request* null, %struct.pcf50633_adc_request** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @PCF50633_MAX_ADC_FIFO_DEPTH, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %50, %52
  %54 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %5, align 8
  %55 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.pcf50633.0*, %struct.pcf50633.0** %6, align 8
  %57 = call i32 @adc_result(%struct.pcf50633.0* %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.pcf50633.0*, %struct.pcf50633.0** %6, align 8
  %59 = call i32 @trigger_next_adc_job_if_any(%struct.pcf50633.0* %58)
  %60 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %5, align 8
  %61 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %7, align 8
  %64 = getelementptr inbounds %struct.pcf50633_adc_request, %struct.pcf50633_adc_request* %63, i32 0, i32 1
  %65 = load i32 (%struct.pcf50633*, i32, i32)*, i32 (%struct.pcf50633*, i32, i32)** %64, align 8
  %66 = load %struct.pcf50633.0*, %struct.pcf50633.0** %6, align 8
  %67 = bitcast %struct.pcf50633.0* %66 to %struct.pcf50633*
  %68 = load %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %7, align 8
  %69 = getelementptr inbounds %struct.pcf50633_adc_request, %struct.pcf50633_adc_request* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 %65(%struct.pcf50633* %67, i32 %70, i32 %71)
  %73 = load %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %7, align 8
  %74 = call i32 @kfree(%struct.pcf50633_adc_request* %73)
  br label %75

75:                                               ; preds = %42, %34
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @adc_result(%struct.pcf50633.0*) #1

declare dso_local i32 @trigger_next_adc_job_if_any(%struct.pcf50633.0*) #1

declare dso_local i32 @kfree(%struct.pcf50633_adc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
