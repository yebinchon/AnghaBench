; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_data_irq_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_data_irq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { i64, i32, i32, i32, i32 }

@AU6601_INT_DATA_MASK = common dso_local global i32 0, align 4
@AU6601_INT_DATA_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Got READ_BUF_RDY and WRITE_BUF_RDY at same time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alcor_sdmmc_host*, i32)* @alcor_data_irq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alcor_data_irq_done(%struct.alcor_sdmmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alcor_sdmmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @AU6601_INT_DATA_MASK, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %74

13:                                               ; preds = %2
  %14 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %15 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AU6601_INT_DATA_END, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %74

23:                                               ; preds = %18, %13
  %24 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %25 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %74

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 131
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %49 [
    i32 0, label %33
    i32 129, label %34
    i32 128, label %37
    i32 130, label %40
  ]

33:                                               ; preds = %29
  br label %54

34:                                               ; preds = %29
  %35 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %36 = call i32 @alcor_trf_block_pio(%struct.alcor_sdmmc_host* %35, i32 1)
  store i32 1, i32* %3, align 4
  br label %74

37:                                               ; preds = %29
  %38 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %39 = call i32 @alcor_trf_block_pio(%struct.alcor_sdmmc_host* %38, i32 0)
  store i32 1, i32* %3, align 4
  br label %74

40:                                               ; preds = %29
  %41 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %42 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %54

46:                                               ; preds = %40
  %47 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %48 = call i32 @alcor_data_set_dma(%struct.alcor_sdmmc_host* %47)
  br label %54

49:                                               ; preds = %29
  %50 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %51 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %46, %45, %33
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @AU6601_INT_DATA_END, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %61 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %59
  %65 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %66 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %71 = call i32 @alcor_trigger_data_transfer(%struct.alcor_sdmmc_host* %70)
  store i32 1, i32* %3, align 4
  br label %74

72:                                               ; preds = %64, %59
  store i32 0, i32* %3, align 4
  br label %74

73:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %72, %69, %37, %34, %28, %22, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @alcor_trf_block_pio(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_data_set_dma(%struct.alcor_sdmmc_host*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @alcor_trigger_data_transfer(%struct.alcor_sdmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
