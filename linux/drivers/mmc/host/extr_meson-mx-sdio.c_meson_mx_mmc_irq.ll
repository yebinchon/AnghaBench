; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_mx_mmc_host = type { i32, i64 }

@MESON_MX_SDIO_IRQS = common dso_local global i64 0, align 8
@MESON_MX_SDIO_SEND = common dso_local global i64 0, align 8
@MESON_MX_SDIO_IRQS_CMD_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @meson_mx_mmc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mx_mmc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.meson_mx_mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.meson_mx_mmc_host*
  store %struct.meson_mx_mmc_host* %11, %struct.meson_mx_mmc_host** %5, align 8
  %12 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %13 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %17 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MESON_MX_SDIO_IRQS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %23 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MESON_MX_SDIO_SEND, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MESON_MX_SDIO_IRQS_CMD_INT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @meson_mx_mmc_process_cmd_irq(%struct.meson_mx_mmc_host* %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %42 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MESON_MX_SDIO_IRQS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %48 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @meson_mx_mmc_process_cmd_irq(%struct.meson_mx_mmc_host*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
