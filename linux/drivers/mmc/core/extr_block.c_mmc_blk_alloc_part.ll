; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_alloc_part.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_alloc_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_blk_data = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@STRING_UNITS_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: %s %s partition %u %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.mmc_blk_data*, i32, i32, i32, i8*, i32)* @mmc_blk_alloc_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_alloc_part(%struct.mmc_card* %0, %struct.mmc_blk_data* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmc_card*, align 8
  %10 = alloca %struct.mmc_blk_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [10 x i8], align 1
  %17 = alloca %struct.mmc_blk_data*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %9, align 8
  store %struct.mmc_blk_data* %1, %struct.mmc_blk_data** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %19 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %10, align 8
  %20 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @disk_to_dev(%struct.TYPE_3__* %21)
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i8*, i8** %14, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call %struct.mmc_blk_data* @mmc_blk_alloc_req(%struct.mmc_card* %18, i32 %22, i32 %23, i32 %24, i8* %25, i32 %26)
  store %struct.mmc_blk_data* %27, %struct.mmc_blk_data** %17, align 8
  %28 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %17, align 8
  %29 = call i64 @IS_ERR(%struct.mmc_blk_data* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %17, align 8
  %33 = call i32 @PTR_ERR(%struct.mmc_blk_data* %32)
  store i32 %33, i32* %8, align 4
  br label %65

34:                                               ; preds = %7
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %17, align 8
  %37 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %17, align 8
  %39 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %38, i32 0, i32 2
  %40 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %10, align 8
  %41 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %40, i32 0, i32 2
  %42 = call i32 @list_add(i32* %39, i32* %41)
  %43 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %17, align 8
  %44 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i64 @get_capacity(%struct.TYPE_3__* %45)
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @STRING_UNITS_2, align 4
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %50 = call i32 @string_get_size(i32 %47, i32 512, i32 %48, i8* %49, i32 10)
  %51 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %17, align 8
  %52 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %57 = call i32 @mmc_card_id(%struct.mmc_card* %56)
  %58 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %59 = call i32 @mmc_card_name(%struct.mmc_card* %58)
  %60 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %17, align 8
  %61 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %64 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %57, i32 %59, i32 %62, i8* %63)
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %34, %31
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local %struct.mmc_blk_data* @mmc_blk_alloc_req(%struct.mmc_card*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @disk_to_dev(%struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(%struct.mmc_blk_data*) #1

declare dso_local i32 @PTR_ERR(%struct.mmc_blk_data*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @string_get_size(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @get_capacity(%struct.TYPE_3__*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @mmc_card_id(%struct.mmc_card*) #1

declare dso_local i32 @mmc_card_name(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
