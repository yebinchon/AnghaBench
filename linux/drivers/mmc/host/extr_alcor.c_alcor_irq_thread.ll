; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@AU6601_INT_ALL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unexpected IRQ: 0x%04x\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@AU6601_INT_CMD_MASK = common dso_local global i32 0, align 4
@AU6601_INT_DATA_MASK = common dso_local global i32 0, align 4
@AU6601_INT_ERROR_MASK = common dso_local global i32 0, align 4
@AU6601_INT_CARD_INSERT = common dso_local global i32 0, align 4
@AU6601_INT_CARD_REMOVE = common dso_local global i32 0, align 4
@AU6601_INT_OVER_CURRENT_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"warning: over current detected!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"got not handled IRQ: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @alcor_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alcor_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alcor_sdmmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.alcor_sdmmc_host*
  store %struct.alcor_sdmmc_host* %10, %struct.alcor_sdmmc_host** %5, align 8
  %11 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %13 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %16 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @AU6601_INT_ALL_MASK, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ true, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %31 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %6, align 4
  br label %108

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @AU6601_INT_CMD_MASK, align 4
  %39 = load i32, i32* @AU6601_INT_DATA_MASK, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @AU6601_INT_ERROR_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @alcor_err_irq(%struct.alcor_sdmmc_host* %50, i32 %51)
  br label %60

53:                                               ; preds = %44
  %54 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @alcor_cmd_irq_thread(%struct.alcor_sdmmc_host* %54, i32 %55)
  %57 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @alcor_data_irq_thread(%struct.alcor_sdmmc_host* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %49
  %61 = load i32, i32* @AU6601_INT_CMD_MASK, align 4
  %62 = load i32, i32* @AU6601_INT_DATA_MASK, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %60, %36
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @AU6601_INT_CARD_INSERT, align 4
  %70 = load i32, i32* @AU6601_INT_CARD_REMOVE, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @alcor_cd_irq(%struct.alcor_sdmmc_host* %75, i32 %76)
  %78 = load i32, i32* @AU6601_INT_CARD_INSERT, align 4
  %79 = load i32, i32* @AU6601_INT_CARD_REMOVE, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %74, %67
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @AU6601_INT_OVER_CURRENT_ERR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %91 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_warn(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @AU6601_INT_OVER_CURRENT_ERR, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %89, %84
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %103 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %101, %98
  br label %108

108:                                              ; preds = %107, %29
  %109 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %110 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %113 = call i32 @alcor_unmask_sd_irqs(%struct.alcor_sdmmc_host* %112)
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @alcor_err_irq(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_cmd_irq_thread(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_data_irq_thread(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_cd_irq(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @alcor_unmask_sd_irqs(%struct.alcor_sdmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
