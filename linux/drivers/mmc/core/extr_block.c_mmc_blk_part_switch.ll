; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_part_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_part_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mmc_blk_data = type { i32 }

@EXT_CSD_PART_CONFIG_ACC_MASK = common dso_local global i32 0, align 4
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_PART_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32)* @mmc_blk_part_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_part_switch(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_blk_data*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 1
  %11 = call %struct.mmc_blk_data* @dev_get_drvdata(i32* %10)
  store %struct.mmc_blk_data* %11, %struct.mmc_blk_data** %7, align 8
  %12 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %7, align 8
  %13 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %20 = call i64 @mmc_card_mmc(%struct.mmc_card* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %18
  %23 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @mmc_blk_part_switch_pre(%struct.mmc_card* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %73

34:                                               ; preds = %22
  %35 = load i32, i32* @EXT_CSD_PART_CONFIG_ACC_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %43 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %44 = load i32, i32* @EXT_CSD_PART_CONFIG, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mmc_switch(%struct.mmc_card* %42, i32 %43, i32 %44, i32 %45, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %34
  %54 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @mmc_blk_part_switch_post(%struct.mmc_card* %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %73

58:                                               ; preds = %34
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %64 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %7, align 8
  %65 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mmc_blk_part_switch_post(%struct.mmc_card* %63, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %58, %18
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %7, align 8
  %71 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %53, %32, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.mmc_blk_data* @dev_get_drvdata(i32*) #1

declare dso_local i64 @mmc_card_mmc(%struct.mmc_card*) #1

declare dso_local i32 @mmc_blk_part_switch_pre(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_switch(%struct.mmc_card*, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_blk_part_switch_post(%struct.mmc_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
