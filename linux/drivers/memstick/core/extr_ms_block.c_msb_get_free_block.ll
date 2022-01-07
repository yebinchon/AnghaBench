; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_get_free_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_get_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32*, i32, i32, i32 }

@MS_BLOCKS_IN_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"NO free blocks in the zone %d, to use for a write, (media is WORN out) switching to RO mode\00", align 1
@MS_BLOCK_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"have %d choices for a free block, selected randomly: %d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"result of the free blocks scan: pba %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"BUG: cant get a free block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32)* @msb_get_free_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_get_free_block(%struct.msb_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MS_BLOCKS_IN_ZONE, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = call i32 @get_random_bytes(i32* %6, i32 4)
  %13 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %14 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %25 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* @MS_BLOCK_INVALID, align 4
  store i32 %26, i32* %3, align 4
  br label %94

27:                                               ; preds = %2
  %28 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %29 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = srem i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %38 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i8*, i32, ...) @dbg_verbose(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %47 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %50 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @find_next_zero_bit(i32 %48, i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %68, %27
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %60 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %63 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @find_next_zero_bit(i32 %61, i32 %64, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %54

71:                                               ; preds = %54
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i8*, i32, ...) @dbg_verbose(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %76 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @msb_get_zone_from_pba(i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %79, %71
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %87 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  %88 = load i32, i32* @MS_BLOCK_INVALID, align 4
  store i32 %88, i32* %3, align 4
  br label %94

89:                                               ; preds = %79
  %90 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @msb_mark_block_used(%struct.msb_data* %90, i32 %91)
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %84, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @dbg_verbose(i8*, i32, ...) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @msb_get_zone_from_pba(i32) #1

declare dso_local i32 @msb_mark_block_used(%struct.msb_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
