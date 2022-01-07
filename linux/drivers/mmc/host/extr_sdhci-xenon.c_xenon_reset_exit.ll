; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_reset_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_reset_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i8, i32)* @xenon_reset_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_reset_exit(%struct.sdhci_host* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %22

12:                                               ; preds = %3
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %14 = call i32 @xenon_retune_setup(%struct.sdhci_host* %13)
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %16 = call i32 @xenon_set_acg(%struct.sdhci_host* %15, i32 1)
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %18 = load i8, i8* %5, align 1
  %19 = call i32 @xenon_set_sdclk_off_idle(%struct.sdhci_host* %17, i8 zeroext %18, i32 0)
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %21 = call i32 @xenon_mask_cmd_conflict_err(%struct.sdhci_host* %20)
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @xenon_retune_setup(%struct.sdhci_host*) #1

declare dso_local i32 @xenon_set_acg(%struct.sdhci_host*, i32) #1

declare dso_local i32 @xenon_set_sdclk_off_idle(%struct.sdhci_host*, i8 zeroext, i32) #1

declare dso_local i32 @xenon_mask_cmd_conflict_err(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
