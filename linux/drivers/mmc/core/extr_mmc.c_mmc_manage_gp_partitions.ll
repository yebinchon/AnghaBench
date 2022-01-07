; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_manage_gp_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_manage_gp_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EXT_CSD_PARTITION_SUPPORT = common dso_local global i64 0, align 8
@EXT_CSD_PART_SUPPORT_PART_EN = common dso_local global i32 0, align 4
@EXT_CSD_HC_ERASE_GRP_SIZE = common dso_local global i64 0, align 8
@EXT_CSD_HC_WP_GRP_SIZE = common dso_local global i64 0, align 8
@MMC_NUM_GP_PARTITION = common dso_local global i32 0, align 4
@EXT_CSD_GP_SIZE_MULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s: has partition size defined without partition complete\0A\00", align 1
@EXT_CSD_PART_CONFIG_ACC_GP0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"gp%d\00", align 1
@MMC_BLK_DATA_AREA_GP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*, i32*)* @mmc_manage_gp_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_manage_gp_partitions(%struct.mmc_card* %0, i32* %1) #0 {
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i64, i64* @EXT_CSD_PARTITION_SUPPORT, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EXT_CSD_PART_SUPPORT_PART_EN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %127

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* @EXT_CSD_HC_ERASE_GRP_SIZE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i64, i64* @EXT_CSD_HC_WP_GRP_SIZE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %123, %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MMC_NUM_GP_PARTITION, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %126

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @EXT_CSD_GP_SIZE_MULT, align 4
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 3
  %34 = add nsw i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %29
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @EXT_CSD_GP_SIZE_MULT, align 4
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 3
  %44 = add nsw i32 %41, %43
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %39
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @EXT_CSD_GP_SIZE_MULT, align 4
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 %53, 3
  %55 = add nsw i32 %52, %54
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %51, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %123

62:                                               ; preds = %50, %39, %29
  %63 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %64 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %70 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mmc_hostname(i32 %71)
  %73 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %126

74:                                               ; preds = %62
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @EXT_CSD_GP_SIZE_MULT, align 4
  %77 = load i32, i32* %5, align 4
  %78 = mul nsw i32 %77, 3
  %79 = add nsw i32 %76, %78
  %80 = add nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %75, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 16
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @EXT_CSD_GP_SIZE_MULT, align 4
  %87 = load i32, i32* %5, align 4
  %88 = mul nsw i32 %87, 3
  %89 = add nsw i32 %86, %88
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %85, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 8
  %95 = add nsw i32 %84, %94
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @EXT_CSD_GP_SIZE_MULT, align 4
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 %98, 3
  %100 = add nsw i32 %97, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %96, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %95, %103
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = mul i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %8, align 4
  %113 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %114 = load i32, i32* %8, align 4
  %115 = shl i32 %114, 19
  %116 = load i64, i64* @EXT_CSD_PART_CONFIG_ACC_GP0, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @MMC_BLK_DATA_AREA_GP, align 4
  %122 = call i32 @mmc_part_add(%struct.mmc_card* %113, i32 %115, i64 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 0, i32 %121)
  br label %123

123:                                              ; preds = %74, %61
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %25

126:                                              ; preds = %68, %25
  br label %127

127:                                              ; preds = %126, %2
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mmc_part_add(%struct.mmc_card*, i32, i64, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
