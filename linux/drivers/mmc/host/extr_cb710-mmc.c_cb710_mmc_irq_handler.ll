; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }
%struct.mmc_host = type { i32 }
%struct.cb710_mmc_reader = type { i32 }

@CB710_MMC_STATUS_PORT = common dso_local global i32 0, align 4
@CB710_MMC_IRQ_ENABLE_PORT = common dso_local global i32 0, align 4
@CB710_MMC_CONFIGB_PORT = common dso_local global i32 0, align 4
@CB710_MMC_CONFIG_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"interrupt; status: %08X, ie: %08X, c2: %08X, c1: %08X\0A\00", align 1
@CB710_MMC_S1_CARD_CHANGED = common dso_local global i32 0, align 4
@CB710_MMC_STATUS1_PORT = common dso_local global i32 0, align 4
@CB710_MMC_IE_CISTATUS_MASK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown interrupt (test)\0A\00", align 1
@CB710_MMC_IE_TEST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cb710_slot*)* @cb710_mmc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_mmc_irq_handler(%struct.cb710_slot* %0) #0 {
  %2 = alloca %struct.cb710_slot*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.cb710_mmc_reader*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cb710_slot* %0, %struct.cb710_slot** %2, align 8
  %9 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %10 = call %struct.mmc_host* @cb710_slot_to_mmc(%struct.cb710_slot* %9)
  store %struct.mmc_host* %10, %struct.mmc_host** %3, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = call %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host* %11)
  store %struct.cb710_mmc_reader* %12, %struct.cb710_mmc_reader** %4, align 8
  %13 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %14 = load i32, i32* @CB710_MMC_STATUS_PORT, align 4
  %15 = call i32 @cb710_read_port_32(%struct.cb710_slot* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %17 = load i32, i32* @CB710_MMC_IRQ_ENABLE_PORT, align 4
  %18 = call i32 @cb710_read_port_32(%struct.cb710_slot* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %20 = load i32, i32* @CB710_MMC_CONFIGB_PORT, align 4
  %21 = call i32 @cb710_read_port_32(%struct.cb710_slot* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %23 = load i32, i32* @CB710_MMC_CONFIG_PORT, align 4
  %24 = call i32 @cb710_read_port_32(%struct.cb710_slot* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %26 = call i32 @cb710_slot_dev(%struct.cb710_slot* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, ...) @dev_dbg(i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CB710_MMC_S1_CARD_CHANGED, align 4
  %34 = shl i32 %33, 8
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %1
  %38 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %39 = load i32, i32* @CB710_MMC_STATUS1_PORT, align 4
  %40 = load i32, i32* @CB710_MMC_S1_CARD_CHANGED, align 4
  %41 = call i32 @cb710_write_port_8(%struct.cb710_slot* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CB710_MMC_IE_CISTATUS_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @CB710_MMC_IE_CISTATUS_MASK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %49 = load i32, i32* @HZ, align 4
  %50 = sdiv i32 %49, 5
  %51 = call i32 @mmc_detect_change(%struct.mmc_host* %48, i32 %50)
  br label %52

52:                                               ; preds = %47, %37
  br label %66

53:                                               ; preds = %1
  %54 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %55 = call i32 @cb710_slot_dev(%struct.cb710_slot* %54)
  %56 = call i32 (i32, i8*, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %4, align 8
  %58 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %57, i32 0, i32 0
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %61 = load i32, i32* @CB710_MMC_IE_TEST_MASK, align 4
  %62 = call i32 @__cb710_mmc_enable_irq(%struct.cb710_slot* %60, i32 0, i32 %61)
  %63 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %4, align 8
  %64 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  br label %66

66:                                               ; preds = %53, %52
  ret i32 1
}

declare dso_local %struct.mmc_host* @cb710_slot_to_mmc(%struct.cb710_slot*) #1

declare dso_local %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @cb710_read_port_32(%struct.cb710_slot*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @cb710_slot_dev(%struct.cb710_slot*) #1

declare dso_local i32 @cb710_write_port_8(%struct.cb710_slot*, i32, i32) #1

declare dso_local i32 @mmc_detect_change(%struct.mmc_host*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__cb710_mmc_enable_irq(%struct.cb710_slot*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
