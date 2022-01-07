; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c___msdc_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c___msdc_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i64 }

@MSDC_INTEN = common dso_local global i64 0, align 8
@MSDC_INTEN_SDIOIRQ = common dso_local global i32 0, align 4
@SDC_CFG = common dso_local global i64 0, align 8
@SDC_CFG_SDIOIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*, i32)* @__msdc_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__msdc_enable_sdio_irq(%struct.msdc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.msdc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.msdc_host* %0, %struct.msdc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %9 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MSDC_INTEN, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* @MSDC_INTEN_SDIOIRQ, align 4
  %14 = call i32 @sdr_set_bits(i64 %12, i32 %13)
  %15 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %16 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SDC_CFG, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* @SDC_CFG_SDIOIDE, align 4
  %21 = call i32 @sdr_set_bits(i64 %19, i32 %20)
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %24 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MSDC_INTEN, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @MSDC_INTEN_SDIOIRQ, align 4
  %29 = call i32 @sdr_clr_bits(i64 %27, i32 %28)
  %30 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %31 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SDC_CFG, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @SDC_CFG_SDIOIDE, align 4
  %36 = call i32 @sdr_clr_bits(i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @sdr_set_bits(i64, i32) #1

declare dso_local i32 @sdr_clr_bits(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
