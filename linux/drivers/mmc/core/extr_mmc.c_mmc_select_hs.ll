; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_HS_TIMING = common dso_local global i32 0, align 4
@EXT_CSD_TIMING_HS = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: switch to high-speed failed, err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_select_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_select_hs(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %4 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %5 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %6 = load i32, i32* @EXT_CSD_HS_TIMING, align 4
  %7 = load i32, i32* @EXT_CSD_TIMING_HS, align 4
  %8 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MMC_TIMING_MMC_HS, align 4
  %13 = call i32 @__mmc_switch(%struct.mmc_card* %4, i32 %5, i32 %6, i32 %7, i32 %11, i32 %12, i32 1, i32 1, i32 1)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %18 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mmc_hostname(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @__mmc_switch(%struct.mmc_card*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
