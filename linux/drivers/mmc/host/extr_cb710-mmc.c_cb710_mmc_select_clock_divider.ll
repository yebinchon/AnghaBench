; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_select_clock_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_select_clock_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.cb710_slot = type { i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@cb710_src_freq_mhz = common dso_local global i32* null, align 8
@CB710_MAX_DIVIDER_IDX = common dso_local global i32 0, align 4
@cb710_clock_divider_log2 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [74 x i8] c"clock set to %d Hz, wanted %d Hz; src_freq_idx = %d, divider_idx = %d|%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @cb710_mmc_select_clock_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_mmc_select_clock_divider(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cb710_slot*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host* %10)
  store %struct.cb710_slot* %11, %struct.cb710_slot** %5, align 8
  %12 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %13 = call %struct.TYPE_2__* @cb710_slot_to_chip(%struct.cb710_slot* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = call i32 @pci_read_config_dword(%struct.pci_dev* %16, i32 72, i32* %7)
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 16
  %20 = and i32 %19, 15
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** @cb710_src_freq_mhz, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 1000000
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %43, %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CB710_MAX_DIVIDER_IDX, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** @cb710_clock_divider_log2, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %33, %38
  %40 = icmp sge i32 %32, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %46

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %27

46:                                               ; preds = %41, %27
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, 8
  store i32 %51, i32* %8, align 4
  br label %57

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %49
  %58 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, 28
  %61 = call i32 @cb710_pci_update_config_reg(%struct.pci_dev* %58, i32 64, i32 268435455, i32 %60)
  %62 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %63 = call i32 @cb710_slot_dev(%struct.cb710_slot* %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** @cb710_clock_divider_log2, align 8
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 7
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %64, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 7
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 8
  %78 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i32 %73, i32 %75, i32 %77)
  ret void
}

declare dso_local %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host*) #1

declare dso_local %struct.TYPE_2__* @cb710_slot_to_chip(%struct.cb710_slot*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cb710_pci_update_config_reg(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cb710_slot_dev(%struct.cb710_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
