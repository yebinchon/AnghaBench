; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_mx_mmc_host = type { %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timer_list = type { i32 }

@cmd_timeout = common dso_local global i32 0, align 4
@MESON_MX_SDIO_IRQC = common dso_local global i64 0, align 8
@MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Timeout on CMD%u (IRQS = 0x%08x, ARGU = 0x%08x)\0A\00", align 1
@MESON_MX_SDIO_IRQS = common dso_local global i64 0, align 8
@MESON_MX_SDIO_ARGU = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@host = common dso_local global %struct.meson_mx_mmc_host* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @meson_mx_mmc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mx_mmc_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.meson_mx_mmc_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %7 = ptrtoint %struct.meson_mx_mmc_host* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @cmd_timeout, align 4
  %10 = call %struct.meson_mx_mmc_host* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.meson_mx_mmc_host* %10, %struct.meson_mx_mmc_host** %3, align 8
  %11 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %11, i32 0, i32 3
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MESON_MX_SDIO_IRQC, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MESON_MX_SDIO_IRQC, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %32, i32 0, i32 3
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %1
  br label %72

41:                                               ; preds = %1
  %42 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mmc_dev(i32 %44)
  %46 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MESON_MX_SDIO_IRQS, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  %57 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %58 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MESON_MX_SDIO_ARGU, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl(i64 %61)
  %63 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %56, i32 %62)
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  %66 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %67 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %71 = call i32 @meson_mx_mmc_request_done(%struct.meson_mx_mmc_host* %70)
  br label %72

72:                                               ; preds = %41, %40
  ret void
}

declare dso_local %struct.meson_mx_mmc_host* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @meson_mx_mmc_request_done(%struct.meson_mx_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
