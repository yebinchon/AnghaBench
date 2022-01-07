; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c___dw_mci_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c___dw_mci_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, i32, i32, i64, i64, i64, i64, i64, %struct.mmc_request* }
%struct.mmc_request = type { i32 }
%struct.dw_mci_slot = type { i32, i32, %struct.mmc_request* }
%struct.mmc_command = type { i64, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32 }

@TMOUT = common dso_local global i32 0, align 4
@BYTCNT = common dso_local global i32 0, align 4
@BLKSIZ = common dso_local global i32 0, align 4
@DW_MMC_CARD_NEED_INIT = common dso_local global i32 0, align 4
@SDMMC_CMD_INIT = common dso_local global i32 0, align 4
@SD_SWITCH_VOLTAGE = common dso_local global i64 0, align 8
@EVENT_CMD_COMPLETE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.dw_mci_slot*, %struct.mmc_command*)* @__dw_mci_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dw_mci_start_request(%struct.dw_mci* %0, %struct.dw_mci_slot* %1, %struct.mmc_command* %2) #0 {
  %4 = alloca %struct.dw_mci*, align 8
  %5 = alloca %struct.dw_mci_slot*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca %struct.mmc_request*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %4, align 8
  store %struct.dw_mci_slot* %1, %struct.dw_mci_slot** %5, align 8
  store %struct.mmc_command* %2, %struct.mmc_command** %6, align 8
  %11 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %12 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %11, i32 0, i32 2
  %13 = load %struct.mmc_request*, %struct.mmc_request** %12, align 8
  store %struct.mmc_request* %13, %struct.mmc_request** %7, align 8
  %14 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %15 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %16 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %15, i32 0, i32 8
  store %struct.mmc_request* %14, %struct.mmc_request** %16, align 8
  %17 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %18 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %20 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %22 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %24 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %26 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %28 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %27, i32 0, i32 1
  %29 = load %struct.mmc_data*, %struct.mmc_data** %28, align 8
  store %struct.mmc_data* %29, %struct.mmc_data** %8, align 8
  %30 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %31 = icmp ne %struct.mmc_data* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %3
  %33 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %34 = load i32, i32* @TMOUT, align 4
  %35 = call i32 @mci_writel(%struct.dw_mci* %33, i32 %34, i32 -1)
  %36 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %37 = load i32, i32* @BYTCNT, align 4
  %38 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %42 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = call i32 @mci_writel(%struct.dw_mci* %36, i32 %37, i32 %44)
  %46 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %47 = load i32, i32* @BLKSIZ, align 4
  %48 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %49 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mci_writel(%struct.dw_mci* %46, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %32, %3
  %53 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %54 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %57 = call i32 @dw_mci_prepare_command(i32 %55, %struct.mmc_command* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @DW_MMC_CARD_NEED_INIT, align 4
  %59 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %60 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %59, i32 0, i32 0
  %61 = call i64 @test_and_clear_bit(i32 %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @SDMMC_CMD_INIT, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %52
  %68 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %69 = icmp ne %struct.mmc_data* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %72 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %73 = call i32 @dw_mci_submit_data(%struct.dw_mci* %71, %struct.mmc_data* %72)
  %74 = call i32 (...) @wmb()
  br label %75

75:                                               ; preds = %70, %67
  %76 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %77 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @dw_mci_start_command(%struct.dw_mci* %76, %struct.mmc_command* %77, i32 %78)
  %80 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %81 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SD_SWITCH_VOLTAGE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %75
  %86 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %87 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %86, i32 0, i32 1
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load i32, i32* @EVENT_CMD_COMPLETE, align 4
  %91 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %92 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %91, i32 0, i32 3
  %93 = call i32 @test_bit(i32 %90, i64* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %85
  %96 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %97 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %96, i32 0, i32 2
  %98 = load i64, i64* @jiffies, align 8
  %99 = call i64 @msecs_to_jiffies(i32 500)
  %100 = add nsw i64 %98, %99
  %101 = add nsw i64 %100, 1
  %102 = call i32 @mod_timer(i32* %97, i64 %101)
  br label %103

103:                                              ; preds = %95, %85
  %104 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %105 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %104, i32 0, i32 1
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  br label %108

108:                                              ; preds = %103, %75
  %109 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %110 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %111 = call i32 @dw_mci_prep_stop_abort(%struct.dw_mci* %109, %struct.mmc_command* %110)
  %112 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %113 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  ret void
}

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @dw_mci_prepare_command(i32, %struct.mmc_command*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @dw_mci_submit_data(%struct.dw_mci*, %struct.mmc_data*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dw_mci_start_command(%struct.dw_mci*, %struct.mmc_command*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dw_mci_prep_stop_abort(%struct.dw_mci*, %struct.mmc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
