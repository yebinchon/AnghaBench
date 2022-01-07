; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-hw.c_hva_hw_err_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-hw.c_hva_hw_err_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_dev = type { i64, i8*, i8*, i8*, i8*, i8* }

@HVA_HIF_FIFO_STS = common dso_local global i64 0, align 8
@HVA_HIF_REG_SFL = common dso_local global i64 0, align 8
@HVA_HIF_REG_LMI_ERR = common dso_local global i64 0, align 8
@HVA_HIF_REG_EMI_ERR = common dso_local global i64 0, align 8
@HVA_HIF_REG_HEC_MIF_ERR = common dso_local global i64 0, align 8
@HVA_HIF_REG_IT_ACK = common dso_local global i64 0, align 8
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hva_hw_err_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_hw_err_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hva_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.hva_dev*
  store %struct.hva_dev* %7, %struct.hva_dev** %5, align 8
  %8 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %9 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HVA_HIF_FIFO_STS, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i8* @readl_relaxed(i64 %12)
  %14 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %15 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %17 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HVA_HIF_REG_SFL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i8* @readl_relaxed(i64 %20)
  %22 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %23 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %25 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HVA_HIF_REG_LMI_ERR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i8* @readl_relaxed(i64 %28)
  %30 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %31 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %33 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HVA_HIF_REG_EMI_ERR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i8* @readl_relaxed(i64 %36)
  %38 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %39 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %41 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HVA_HIF_REG_HEC_MIF_ERR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i8* @readl_relaxed(i64 %44)
  %46 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %47 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %49 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HVA_HIF_REG_IT_ACK, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel_relaxed(i32 1, i64 %52)
  %54 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %54
}

declare dso_local i8* @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
