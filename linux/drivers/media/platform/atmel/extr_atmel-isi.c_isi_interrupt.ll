; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_isi = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ISI_STATUS = common dso_local global i32 0, align 4
@ISI_INTMASK = common dso_local global i32 0, align 4
@ISI_CTRL_SRST = common dso_local global i32 0, align 4
@ISI_INTDIS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ISI_CTRL_DIS = common dso_local global i32 0, align 4
@ISI_SR_CXFR_DONE = common dso_local global i32 0, align 4
@ISI_SR_PXFR_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @isi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.atmel_isi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.atmel_isi*
  store %struct.atmel_isi* %11, %struct.atmel_isi** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %14 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %17 = load i32, i32* @ISI_STATUS, align 4
  %18 = call i32 @isi_readl(%struct.atmel_isi* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %20 = load i32, i32* @ISI_INTMASK, align 4
  %21 = call i32 @isi_readl(%struct.atmel_isi* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ISI_CTRL_SRST, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %30, i32 0, i32 1
  %32 = call i32 @complete(i32* %31)
  %33 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %34 = load i32, i32* @ISI_INTDIS, align 4
  %35 = load i32, i32* @ISI_CTRL_SRST, align 4
  %36 = call i32 @isi_writel(%struct.atmel_isi* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %9, align 4
  br label %69

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ISI_CTRL_DIS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %45 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %44, i32 0, i32 1
  %46 = call i32 @complete(i32* %45)
  %47 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %48 = load i32, i32* @ISI_INTDIS, align 4
  %49 = load i32, i32* @ISI_CTRL_DIS, align 4
  %50 = call i32 @isi_writel(%struct.atmel_isi* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %9, align 4
  br label %68

52:                                               ; preds = %38
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ISI_SR_CXFR_DONE, align 4
  %55 = and i32 %53, %54
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @ISI_SR_PXFR_DONE, align 4
  %61 = and i32 %59, %60
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %52
  %65 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %66 = call i32 @atmel_isi_handle_streaming(%struct.atmel_isi* %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %58
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %68, %29
  %70 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %71 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @isi_readl(%struct.atmel_isi*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @isi_writel(%struct.atmel_isi*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atmel_isi_handle_streaming(%struct.atmel_isi*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
