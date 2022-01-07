; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_pcap_adc_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_pcap_adc_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_chip = type { i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i64 }

@PCAP_REG_ADC = common dso_local global i32 0, align 4
@PCAP_ADC_TS_M_MASK = common dso_local global i32 0, align 4
@PCAP_ADC_TS_REF_LOWPWR = common dso_local global i32 0, align 4
@PCAP_ADC_ADEN = common dso_local global i32 0, align 4
@PCAP_ADC_BANK_1 = common dso_local global i64 0, align 8
@PCAP_ADC_AD_SEL1 = common dso_local global i32 0, align 4
@PCAP_REG_ADR = common dso_local global i32 0, align 4
@PCAP_ADR_ASC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcap_chip*)* @pcap_adc_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_adc_trigger(%struct.pcap_chip* %0) #0 {
  %2 = alloca %struct.pcap_chip*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pcap_chip* %0, %struct.pcap_chip** %2, align 8
  %6 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %7 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %6, i32 0, i32 1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %11 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %14 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %22 = call i32 @pcap_disable_adc(%struct.pcap_chip* %21)
  %23 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %24 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %23, i32 0, i32 1
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %75

27:                                               ; preds = %1
  %28 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %29 = load i32, i32* @PCAP_REG_ADC, align 4
  %30 = call i32 @ezx_pcap_read(%struct.pcap_chip* %28, i32 %29, i32* %4)
  %31 = load i32, i32* @PCAP_ADC_TS_M_MASK, align 4
  %32 = load i32, i32* @PCAP_ADC_TS_REF_LOWPWR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %37 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PCAP_ADC_ADEN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %49 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCAP_ADC_BANK_1, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %27
  %59 = load i32, i32* @PCAP_ADC_AD_SEL1, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %27
  %63 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %64 = load i32, i32* @PCAP_REG_ADC, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ezx_pcap_write(%struct.pcap_chip* %63, i32 %64, i32 %65)
  %67 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %68 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %67, i32 0, i32 1
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %72 = load i32, i32* @PCAP_REG_ADR, align 4
  %73 = load i32, i32* @PCAP_ADR_ASC, align 4
  %74 = call i32 @ezx_pcap_write(%struct.pcap_chip* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %20
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pcap_disable_adc(%struct.pcap_chip*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ezx_pcap_read(%struct.pcap_chip*, i32, i32*) #1

declare dso_local i32 @ezx_pcap_write(%struct.pcap_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
