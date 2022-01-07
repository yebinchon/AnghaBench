; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_cmd_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_cmd_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { i32*, i32, i32 }

@AU6601_INT_CMD_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Got command interrupt 0x%08x even though no command operation was in progress.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*, i32)* @alcor_cmd_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_cmd_irq_thread(%struct.alcor_sdmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.alcor_sdmmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @AU6601_INT_CMD_END, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %41

11:                                               ; preds = %2
  %12 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AU6601_INT_CMD_END, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %16, %11
  %28 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %34 = call i32 @alcor_request_complete(%struct.alcor_sdmmc_host* %33, i32 1)
  br label %38

35:                                               ; preds = %27
  %36 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %37 = call i32 @alcor_trigger_data_transfer(%struct.alcor_sdmmc_host* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %40 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %38, %10
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @alcor_request_complete(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_trigger_data_transfer(%struct.alcor_sdmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
