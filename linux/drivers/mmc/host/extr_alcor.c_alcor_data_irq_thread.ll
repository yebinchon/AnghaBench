; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_data_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_data_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { i32, i64, i32, i32, i32 }

@AU6601_INT_DATA_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Got data interrupt 0x%08x even though no data operation was in progress.\0A\00", align 1
@AU6601_RESET_DATA = common dso_local global i32 0, align 4
@AU6601_INT_DATA_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*, i32)* @alcor_data_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_data_irq_thread(%struct.alcor_sdmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.alcor_sdmmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @AU6601_INT_DATA_MASK, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %54

11:                                               ; preds = %2
  %12 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %23 = load i32, i32* @AU6601_RESET_DATA, align 4
  %24 = call i32 @alcor_reset(%struct.alcor_sdmmc_host* %22, i32 %23)
  br label %54

25:                                               ; preds = %11
  %26 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @alcor_data_irq_done(%struct.alcor_sdmmc_host* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %54

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @AU6601_INT_DATA_END, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %31
  %37 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %48 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %36, %31
  %52 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %53 = call i32 @alcor_finish_data(%struct.alcor_sdmmc_host* %52)
  br label %54

54:                                               ; preds = %10, %16, %30, %51, %46, %41
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @alcor_reset(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i64 @alcor_data_irq_done(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_finish_data(%struct.alcor_sdmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
