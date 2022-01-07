; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_pcap_adc_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_pcap_adc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_chip = type { i64, i32, %struct.pcap_adc_request** }
%struct.pcap_adc_request = type { i8*, i8*, i8**, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PCAP_ADC_MAXQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_adc_async(%struct.pcap_chip* %0, i8* %1, i32 %2, i8** %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcap_chip*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pcap_adc_request*, align 8
  %15 = alloca i64, align 8
  store %struct.pcap_chip* %0, %struct.pcap_chip** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.pcap_adc_request* @kmalloc(i32 40, i32 %16)
  store %struct.pcap_adc_request* %17, %struct.pcap_adc_request** %14, align 8
  %18 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %19 = icmp ne %struct.pcap_adc_request* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %97

23:                                               ; preds = %6
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %26 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %29 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i8**, i8*** %11, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %34 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %32, i8** %36, align 8
  %37 = load i8**, i8*** %11, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %41 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* %39, i8** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %46 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %49 = getelementptr inbounds %struct.pcap_adc_request, %struct.pcap_adc_request* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %51 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %50, i32 0, i32 1
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %55 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %54, i32 0, i32 2
  %56 = load %struct.pcap_adc_request**, %struct.pcap_adc_request*** %55, align 8
  %57 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %58 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.pcap_adc_request*, %struct.pcap_adc_request** %56, i64 %59
  %61 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %60, align 8
  %62 = icmp ne %struct.pcap_adc_request* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %23
  %64 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %65 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %64, i32 0, i32 1
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %69 = call i32 @kfree(%struct.pcap_adc_request* %68)
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %97

72:                                               ; preds = %23
  %73 = load %struct.pcap_adc_request*, %struct.pcap_adc_request** %14, align 8
  %74 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %75 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %74, i32 0, i32 2
  %76 = load %struct.pcap_adc_request**, %struct.pcap_adc_request*** %75, align 8
  %77 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %78 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.pcap_adc_request*, %struct.pcap_adc_request** %76, i64 %79
  store %struct.pcap_adc_request* %73, %struct.pcap_adc_request** %80, align 8
  %81 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %82 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  %85 = load i32, i32* @PCAP_ADC_MAXQ, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = and i64 %84, %87
  %89 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %90 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %92 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %91, i32 0, i32 1
  %93 = load i64, i64* %15, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.pcap_chip*, %struct.pcap_chip** %8, align 8
  %96 = call i32 @pcap_adc_trigger(%struct.pcap_chip* %95)
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %72, %63, %20
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local %struct.pcap_adc_request* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.pcap_adc_request*) #1

declare dso_local i32 @pcap_adc_trigger(%struct.pcap_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
