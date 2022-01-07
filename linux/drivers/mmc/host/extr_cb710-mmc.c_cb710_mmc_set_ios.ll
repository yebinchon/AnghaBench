; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i64, i32 }
%struct.cb710_slot = type { i32 }
%struct.cb710_mmc_reader = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"powerup failed (%d)- retrying\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"powerup retry failed (%d) - expect errors\0A\00", align 1
@MMC_BUS_WIDTH_1 = common dso_local global i64 0, align 8
@CB710_MMC_IE_TEST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @cb710_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.cb710_slot*, align 8
  %6 = alloca %struct.cb710_mmc_reader*, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host* %8)
  store %struct.cb710_slot* %9, %struct.cb710_slot** %5, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host* %10)
  store %struct.cb710_mmc_reader* %11, %struct.cb710_mmc_reader** %6, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @cb710_mmc_select_clock_divider(%struct.mmc_host* %12, i32 %15)
  %17 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %6, align 8
  %21 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %2
  %25 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  switch i64 %27, label %60 [
    i64 129, label %28
    i64 130, label %54
    i64 128, label %59
  ]

28:                                               ; preds = %24
  %29 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %30 = call i32 @cb710_mmc_powerup(%struct.cb710_slot* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %35 = call i32 @cb710_slot_dev(%struct.cb710_slot* %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %39 = call i32 @cb710_mmc_powerdown(%struct.cb710_slot* %38)
  %40 = call i32 @udelay(i32 1)
  %41 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %42 = call i32 @cb710_mmc_powerup(%struct.cb710_slot* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %47 = call i32 @cb710_slot_dev(%struct.cb710_slot* %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_warn(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %33
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %6, align 8
  %53 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %52, i32 0, i32 0
  store i64 129, i64* %53, align 8
  br label %61

54:                                               ; preds = %24
  %55 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %56 = call i32 @cb710_mmc_powerdown(%struct.cb710_slot* %55)
  %57 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %6, align 8
  %58 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %57, i32 0, i32 0
  store i64 130, i64* %58, align 8
  br label %61

59:                                               ; preds = %24
  br label %60

60:                                               ; preds = %24, %59
  br label %61

61:                                               ; preds = %60, %54, %51
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %64 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MMC_BUS_WIDTH_1, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @cb710_mmc_enable_4bit_data(%struct.cb710_slot* %63, i32 %69)
  %71 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %72 = load i32, i32* @CB710_MMC_IE_TEST_MASK, align 4
  %73 = call i32 @cb710_mmc_enable_irq(%struct.cb710_slot* %71, i32 %72, i32 0)
  ret void
}

declare dso_local %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host*) #1

declare dso_local %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @cb710_mmc_select_clock_divider(%struct.mmc_host*, i32) #1

declare dso_local i32 @cb710_mmc_powerup(%struct.cb710_slot*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @cb710_slot_dev(%struct.cb710_slot*) #1

declare dso_local i32 @cb710_mmc_powerdown(%struct.cb710_slot*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cb710_mmc_enable_4bit_data(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_mmc_enable_irq(%struct.cb710_slot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
