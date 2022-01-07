; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_alloc_parts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_alloc_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mmc_blk_data = type { i32 }

@MMC_BLK_DATA_AREA_RPMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.mmc_blk_data*)* @mmc_blk_alloc_parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_alloc_parts(%struct.mmc_card* %0, %struct.mmc_blk_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca %struct.mmc_blk_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store %struct.mmc_blk_data* %1, %struct.mmc_blk_data** %5, align 8
  %8 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %9 = call i32 @mmc_card_mmc(%struct.mmc_card* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %127, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %130

19:                                               ; preds = %13
  %20 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MMC_BLK_DATA_AREA_RPMB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %19
  %32 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %33 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %34 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 9
  %51 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mmc_blk_alloc_rpmb_part(%struct.mmc_card* %32, %struct.mmc_blk_data* %33, i32 %41, i32 %50, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %31
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %131

64:                                               ; preds = %31
  br label %126

65:                                               ; preds = %19
  %66 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %67 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %125

75:                                               ; preds = %65
  %76 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %77 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %78 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %79 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %87 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 9
  %95 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %96 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %104 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %112 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @mmc_blk_alloc_part(%struct.mmc_card* %76, %struct.mmc_blk_data* %77, i32 %85, i32 %94, i32 %102, i32 %110, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %75
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %131

124:                                              ; preds = %75
  br label %125

125:                                              ; preds = %124, %65
  br label %126

126:                                              ; preds = %125, %64
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %13

130:                                              ; preds = %13
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %122, %62, %11
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @mmc_card_mmc(%struct.mmc_card*) #1

declare dso_local i32 @mmc_blk_alloc_rpmb_part(%struct.mmc_card*, %struct.mmc_blk_data*, i32, i32, i32) #1

declare dso_local i32 @mmc_blk_alloc_part(%struct.mmc_card*, %struct.mmc_blk_data*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
