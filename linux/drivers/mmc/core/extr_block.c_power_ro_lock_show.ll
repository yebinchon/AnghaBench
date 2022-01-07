; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_power_ro_lock_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_power_ro_lock_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mmc_blk_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mmc_card* }
%struct.mmc_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EXT_CSD_BOOT_WP_B_PERM_WP_EN = common dso_local global i32 0, align 4
@EXT_CSD_BOOT_WP_B_PWR_WP_EN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @power_ro_lock_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_ro_lock_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_blk_data*, align 8
  %9 = alloca %struct.mmc_card*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @dev_to_disk(%struct.device* %11)
  %13 = call %struct.mmc_blk_data* @mmc_blk_get(i32 %12)
  store %struct.mmc_blk_data* %13, %struct.mmc_blk_data** %8, align 8
  %14 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %8, align 8
  %15 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.mmc_card*, %struct.mmc_card** %16, align 8
  store %struct.mmc_card* %17, %struct.mmc_card** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %19 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EXT_CSD_BOOT_WP_B_PERM_WP_EN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 2, i32* %10, align 4
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %28 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EXT_CSD_BOOT_WP_B_PWR_WP_EN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  br label %35

35:                                               ; preds = %34, %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %8, align 8
  %42 = call i32 @mmc_blk_put(%struct.mmc_blk_data* %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.mmc_blk_data* @mmc_blk_get(i32) #1

declare dso_local i32 @dev_to_disk(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @mmc_blk_put(%struct.mmc_blk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
