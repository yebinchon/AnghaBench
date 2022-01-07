; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_powerclass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_powerclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MMC_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_DDR_52 = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@EXT_CSD_DDR_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@EXT_CSD_DDR_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@EXT_CSD_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@EXT_CSD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s: power class selection to bus width %d ddr %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_select_powerclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_select_powerclass(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %9 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 1
  %11 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  store %struct.mmc_host* %11, %struct.mmc_host** %4, align 8
  %12 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %13 = call i32 @mmc_can_ext_csd(%struct.mmc_card* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

16:                                               ; preds = %1
  %17 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MMC_BUS_WIDTH_1, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %68

25:                                               ; preds = %16
  %26 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EXT_CSD_CARD_TYPE_DDR_52, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MMC_BUS_WIDTH_8, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @EXT_CSD_DDR_BUS_WIDTH_8, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EXT_CSD_DDR_BUS_WIDTH_4, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %6, align 4
  br label %53

43:                                               ; preds = %25
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MMC_BUS_WIDTH_8, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @EXT_CSD_BUS_WIDTH_8, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @EXT_CSD_BUS_WIDTH_4, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %41
  %54 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @__mmc_select_powerclass(%struct.mmc_card* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %61 = call i32 @mmc_hostname(%struct.mmc_host* %60)
  %62 = load i32, i32* %5, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %53
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %24, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @mmc_can_ext_csd(%struct.mmc_card*) #1

declare dso_local i32 @__mmc_select_powerclass(%struct.mmc_card*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
