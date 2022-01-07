; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32 }

@CTL_STATUS = common dso_local global i32 0, align 4
@TMIO_MASK_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmio_mmc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tmio_mmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tmio_mmc_host*
  store %struct.tmio_mmc_host* %10, %struct.tmio_mmc_host** %6, align 8
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %12 = load i32, i32* @CTL_STATUS, align 4
  %13 = call i32 @sd_ctrl_read16_and_16_as_32(%struct.tmio_mmc_host* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @TMIO_MASK_IRQ, align 4
  %16 = and i32 %14, %15
  %17 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %18 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %23 = load i32, i32* @CTL_STATUS, align 4
  %24 = load i32, i32* @TMIO_MASK_IRQ, align 4
  %25 = call i32 @sd_ctrl_write32_as_16_and_16(%struct.tmio_mmc_host* %22, i32 %23, i32 %24)
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @__tmio_mmc_card_detect_irq(%struct.tmio_mmc_host* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %2
  %34 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @__tmio_mmc_sdcard_irq(%struct.tmio_mmc_host* %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %33
  %42 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %43 = call i64 @__tmio_mmc_sdio_irq(%struct.tmio_mmc_host* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @IRQ_NONE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %45, %39, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @sd_ctrl_read16_and_16_as_32(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @sd_ctrl_write32_as_16_and_16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i64 @__tmio_mmc_card_detect_irq(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i64 @__tmio_mmc_sdcard_irq(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i64 @__tmio_mmc_sdio_irq(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
