; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_pcap_adc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_pcap_adc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_chip = type { i64, i32, %struct.pcap_adc_request** }
%struct.pcap_adc_request = type { i32*, i32, i32 (i32, i32*)* }

@.str = private unnamed_addr constant [33 x i8] c"adc irq without pending request\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PCAP_REG_ADC = common dso_local global i32 0, align 4
@PCAP_ADC_ADA1_MASK = common dso_local global i32 0, align 4
@PCAP_ADC_ADA2_MASK = common dso_local global i32 0, align 4
@PCAP_ADC_ADA1_SHIFT = common dso_local global i32 0, align 4
@PCAP_ADC_ADA2_SHIFT = common dso_local global i32 0, align 4
@PCAP_REG_ADR = common dso_local global i32 0, align 4
@PCAP_ADR_ADD1_MASK = common dso_local global i32 0, align 4
@PCAP_ADR_ADD1_SHIFT = common dso_local global i32 0, align 4
@PCAP_ADR_ADD2_MASK = common dso_local global i32 0, align 4
@PCAP_ADR_ADD2_SHIFT = common dso_local global i32 0, align 4
@PCAP_ADC_MAXQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcap_adc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_adc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcap_chip*, align 8
  %7 = alloca %struct.pcap_adc_request*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pcap_chip*
  store %struct.pcap_chip* %11, %struct.pcap_chip** %6, align 8
  %12 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %13 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %16 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %15, i32 0, i32 2
  %17 = load %struct.pcap_adc_request**, %struct.pcap_adc_request*** %16, align 8
  %18 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %19 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.pcap_adc_request*, %struct.pcap_adc_request** %17, i64 %20
  %22 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %21, align 8
  store %struct.pcap_adc_request* %22, %struct.pcap_adc_request** %7, align 8
  %23 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %7, align 8
  %24 = icmp ne %struct.pcap_adc_request* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %31 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %114

34:                                               ; preds = %2
  %35 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %36 = load i32, i32* @PCAP_REG_ADC, align 4
  %37 = call i32 @ezx_pcap_read(%struct.pcap_chip* %35, i32 %36, i32* %9)
  %38 = load i32, i32* @PCAP_ADC_ADA1_MASK, align 4
  %39 = load i32, i32* @PCAP_ADC_ADA2_MASK, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %7, align 8
  %45 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PCAP_ADC_ADA1_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %7, align 8
  %54 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PCAP_ADC_ADA2_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %63 = load i32, i32* @PCAP_REG_ADC, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ezx_pcap_write(%struct.pcap_chip* %62, i32 %63, i32 %64)
  %66 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %67 = load i32, i32* @PCAP_REG_ADR, align 4
  %68 = call i32 @ezx_pcap_read(%struct.pcap_chip* %66, i32 %67, i32* %9)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @PCAP_ADR_ADD1_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @PCAP_ADR_ADD1_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @PCAP_ADR_ADD2_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @PCAP_ADR_ADD2_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %79, i32* %80, align 4
  %81 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %82 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %81, i32 0, i32 2
  %83 = load %struct.pcap_adc_request**, %struct.pcap_adc_request*** %82, align 8
  %84 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %85 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.pcap_adc_request*, %struct.pcap_adc_request** %83, i64 %86
  store %struct.pcap_adc_request* null, %struct.pcap_adc_request** %87, align 8
  %88 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %89 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  %92 = load i32, i32* @PCAP_ADC_MAXQ, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = and i64 %91, %94
  %96 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %97 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %99 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %98, i32 0, i32 1
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %7, align 8
  %102 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %101, i32 0, i32 2
  %103 = load i32 (i32, i32*)*, i32 (i32, i32*)** %102, align 8
  %104 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %7, align 8
  %105 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %108 = call i32 %103(i32 %106, i32* %107)
  %109 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %7, align 8
  %110 = call i32 @kfree(%struct.pcap_adc_request* %109)
  %111 = load %struct.pcap_chip*, %struct.pcap_chip** %6, align 8
  %112 = call i32 @pcap_adc_trigger(%struct.pcap_chip* %111)
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %34, %29
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ezx_pcap_read(%struct.pcap_chip*, i32, i32*) #1

declare dso_local i32 @ezx_pcap_write(%struct.pcap_chip*, i32, i32) #1

declare dso_local i32 @kfree(%struct.pcap_adc_request*) #1

declare dso_local i32 @pcap_adc_trigger(%struct.pcap_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
