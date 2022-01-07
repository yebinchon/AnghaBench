; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hi3660_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hi3660_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci_slot = type { %struct.mmc_host*, %struct.dw_mci* }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dw_mci = type { i32 }

@NUM_PHASES = common dso_local global i32 0, align 4
@TMOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"All phases bad!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"tuning ok best_clksmpl %u tuning_sample_flag %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci_slot*, i32)* @dw_mci_hi3660_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_hi3660_execute_tuning(%struct.dw_mci_slot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_mci_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dw_mci*, align 8
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dw_mci_slot* %0, %struct.dw_mci_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %4, align 8
  %13 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %12, i32 0, i32 1
  %14 = load %struct.dw_mci*, %struct.dw_mci** %13, align 8
  store %struct.dw_mci* %14, %struct.dw_mci** %7, align 8
  %15 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %4, align 8
  %16 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %15, i32 0, i32 0
  %17 = load %struct.mmc_host*, %struct.mmc_host** %16, align 8
  store %struct.mmc_host* %17, %struct.mmc_host** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %51, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NUM_PHASES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = srem i32 %23, 32
  store i32 %24, i32* %9, align 4
  %25 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %26 = load i32, i32* @TMOUT, align 4
  %27 = call i32 @mci_writel(%struct.dw_mci* %25, i32 %26, i32 -1)
  %28 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %29 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dw_mci_hs_set_timing(%struct.dw_mci* %28, i32 %32, i32 %33)
  %35 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mmc_send_tuning(%struct.mmc_host* %35, i32 %36, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %50

44:                                               ; preds = %22
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %44, %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @dw_mci_get_best_clksmpl(i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %63 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %82

68:                                               ; preds = %56
  %69 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %70 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %71 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @dw_mci_hs_set_timing(%struct.dw_mci* %69, i32 %73, i32 %74)
  %76 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %77 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @dev_info(i32 %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %68, %61
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @dw_mci_hs_set_timing(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @mmc_send_tuning(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @dw_mci_get_best_clksmpl(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
