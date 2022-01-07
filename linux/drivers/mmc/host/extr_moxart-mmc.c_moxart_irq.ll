; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxart_host = type { i32, i32, i32*, i32, i64, i32, i32, i64 }

@REG_STATUS = common dso_local global i64 0, align 8
@CARD_CHANGE = common dso_local global i32 0, align 4
@CARD_DETECT = common dso_local global i32 0, align 4
@MASK_INTR_PIO = common dso_local global i32 0, align 4
@REG_CLEAR = common dso_local global i64 0, align 8
@REG_INTERRUPT_MASK = common dso_local global i64 0, align 8
@FIFO_ORUN = common dso_local global i32 0, align 4
@FIFO_URUN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @moxart_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.moxart_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.moxart_host*
  store %struct.moxart_host* %9, %struct.moxart_host** %5, align 8
  %10 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %11 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %10, i32 0, i32 1
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %15 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REG_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CARD_CHANGE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @CARD_DETECT, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %29 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %31 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %24
  %35 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %36 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %41 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dmaengine_terminate_all(i32 %42)
  %44 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %45 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dmaengine_terminate_all(i32 %46)
  br label %48

48:                                               ; preds = %39, %34, %24
  %49 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %50 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* @MASK_INTR_PIO, align 4
  %52 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %53 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @REG_CLEAR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  %58 = load i32, i32* @CARD_CHANGE, align 4
  %59 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %60 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REG_INTERRUPT_MASK, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %66 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @mmc_detect_change(i32 %67, i32 0)
  br label %69

69:                                               ; preds = %48, %2
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @FIFO_ORUN, align 4
  %72 = load i32, i32* @FIFO_URUN, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %78 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %83 = call i32 @moxart_transfer_pio(%struct.moxart_host* %82)
  br label %84

84:                                               ; preds = %81, %76, %69
  %85 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %86 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %85, i32 0, i32 1
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mmc_detect_change(i32, i32) #1

declare dso_local i32 @moxart_transfer_pio(%struct.moxart_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
