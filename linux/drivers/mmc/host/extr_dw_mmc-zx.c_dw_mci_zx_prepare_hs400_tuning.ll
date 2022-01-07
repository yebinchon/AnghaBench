; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-zx.c_dw_mci_zx_prepare_hs400_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-zx.c_dw_mci_zx_prepare_hs400_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32 }
%struct.mmc_ios = type { i32 }

@DELAY_TYPE_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*, %struct.mmc_ios*)* @dw_mci_zx_prepare_hs400_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_zx_prepare_hs400_tuning(%struct.dw_mci* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_mci*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %7 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %8 = load i32, i32* @DELAY_TYPE_READ, align 4
  %9 = call i32 @dw_mci_zx_emmc_set_delay(%struct.dw_mci* %7, i32 32, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @dw_mci_zx_emmc_set_delay(%struct.dw_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
