; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_start_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i64, i32, i32, i32, %struct.mmc_command* }
%struct.mmc_request = type { i32 }
%struct.mmc_command = type { i32, i64 }

@system_wq = common dso_local global i32 0, align 4
@DAT_TIMEOUT = common dso_local global i32 0, align 4
@MSDC_FIFOCS = common dso_local global i64 0, align 8
@MSDC_FIFOCS_TXCNT = common dso_local global i32 0, align 4
@MSDC_FIFOCS_RXCNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TX/RX FIFO non-empty before start of IO. Reset\0A\00", align 1
@MSDC_INTEN = common dso_local global i64 0, align 8
@cmd_ints_mask = common dso_local global i32 0, align 4
@SDC_ARG = common dso_local global i64 0, align 8
@SDC_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*, %struct.mmc_request*, %struct.mmc_command*)* @msdc_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_start_command(%struct.msdc_host* %0, %struct.mmc_request* %1, %struct.mmc_command* %2) #0 {
  %4 = alloca %struct.msdc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.msdc_host* %0, %struct.msdc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store %struct.mmc_command* %2, %struct.mmc_command** %6, align 8
  %9 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %10 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %9, i32 0, i32 4
  %11 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %12 = call i32 @WARN_ON(%struct.mmc_command* %11)
  %13 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %14 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %15 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %14, i32 0, i32 4
  store %struct.mmc_command* %13, %struct.mmc_command** %15, align 8
  %16 = load i32, i32* @system_wq, align 4
  %17 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %18 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %17, i32 0, i32 3
  %19 = load i32, i32* @DAT_TIMEOUT, align 4
  %20 = call i32 @mod_delayed_work(i32 %16, i32* %18, i32 %19)
  %21 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %22 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %23 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %24 = call i32 @msdc_cmd_is_ready(%struct.msdc_host* %21, %struct.mmc_request* %22, %struct.mmc_command* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %93

27:                                               ; preds = %3
  %28 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %29 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MSDC_FIFOCS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  %34 = load i32, i32* @MSDC_FIFOCS_TXCNT, align 4
  %35 = and i32 %33, %34
  %36 = ashr i32 %35, 16
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %27
  %39 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %40 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MSDC_FIFOCS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  %45 = load i32, i32* @MSDC_FIFOCS_RXCNT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %38, %27
  %49 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %50 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %54 = call i32 @msdc_reset_hw(%struct.msdc_host* %53)
  br label %55

55:                                               ; preds = %48, %38
  %56 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %57 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %59 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %60 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %61 = call i32 @msdc_cmd_prepare_raw_cmd(%struct.msdc_host* %58, %struct.mmc_request* %59, %struct.mmc_command* %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %63 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %62, i32 0, i32 1
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %67 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MSDC_INTEN, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* @cmd_ints_mask, align 4
  %72 = call i32 @sdr_set_bits(i64 %70, i32 %71)
  %73 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %74 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %73, i32 0, i32 1
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %78 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %81 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SDC_ARG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %88 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SDC_CMD, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  br label %93

93:                                               ; preds = %55, %26
  ret void
}

declare dso_local i32 @WARN_ON(%struct.mmc_command*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msdc_cmd_is_ready(%struct.msdc_host*, %struct.mmc_request*, %struct.mmc_command*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msdc_reset_hw(%struct.msdc_host*) #1

declare dso_local i32 @msdc_cmd_prepare_raw_cmd(%struct.msdc_host*, %struct.mmc_request*, %struct.mmc_command*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdr_set_bits(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
