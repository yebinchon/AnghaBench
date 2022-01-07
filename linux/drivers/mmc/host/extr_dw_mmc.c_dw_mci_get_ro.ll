; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_get_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.dw_mci_slot = type { i32, i32 }

@WRTPRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"card is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"read-write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @dw_mci_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_mci_slot*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %6)
  store %struct.dw_mci_slot* %7, %struct.dw_mci_slot** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %9 = call i32 @mmc_gpio_get_ro(%struct.mmc_host* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %4, align 8
  %16 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WRTPRT, align 4
  %19 = call i32 @mci_readl(i32 %17, i32 %18)
  %20 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %4, align 8
  %21 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %19, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %14, %12
  %29 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 0
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_gpio_get_ro(%struct.mmc_host*) #1

declare dso_local i32 @mci_readl(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
