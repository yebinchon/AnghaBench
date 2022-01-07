; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_update_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_update_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i64*, i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"start of a block update at lba  %d, pba %d\00", align 1
@MS_BLOCK_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"setting the update flag on the block\00", align 1
@MEMSTICK_OVERWRITE_UDST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"block update: writing updated block to the pba %d\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"block update: erasing the old block\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"block update error after %d tries,  switching to r/o mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i64, %struct.scatterlist*, i32)* @msb_update_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_update_block(%struct.msb_data* %0, i64 %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msb_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %15 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21)
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @MS_BLOCK_INVALID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* @MEMSTICK_OVERWRITE_UDST, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 255, %31
  %33 = call i32 @msb_set_overwrite_flag(%struct.msb_data* %28, i64 %29, i32 0, i32 %32)
  br label %34

34:                                               ; preds = %26, %4
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %81, %34
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %84

38:                                               ; preds = %35
  %39 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @msb_get_zone_from_lba(i64 %40)
  %42 = call i64 @msb_get_free_block(%struct.msb_data* %39, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @MS_BLOCK_INVALID, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %85

49:                                               ; preds = %38
  %50 = load i64, i64* %11, align 8
  %51 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @msb_write_block(%struct.msb_data* %52, i64 %53, i64 %54, %struct.scatterlist* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @EBADMSG, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @msb_mark_bad(%struct.msb_data* %63, i64 %64)
  br label %81

66:                                               ; preds = %49
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %85

70:                                               ; preds = %66
  %71 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @msb_erase_block(%struct.msb_data* %72, i64 %73)
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %77 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %75, i64* %80, align 8
  store i32 0, i32* %5, align 4
  br label %95

81:                                               ; preds = %62
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %35

84:                                               ; preds = %35
  br label %85

85:                                               ; preds = %84, %69, %46
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %92 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %91, i32 0, i32 1
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %70
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @dbg_verbose(i8*, ...) #1

declare dso_local i32 @msb_set_overwrite_flag(%struct.msb_data*, i64, i32, i32) #1

declare dso_local i64 @msb_get_free_block(%struct.msb_data*, i32) #1

declare dso_local i32 @msb_get_zone_from_lba(i64) #1

declare dso_local i32 @msb_write_block(%struct.msb_data*, i64, i64, %struct.scatterlist*, i32) #1

declare dso_local i32 @msb_mark_bad(%struct.msb_data*, i64) #1

declare dso_local i32 @msb_erase_block(%struct.msb_data*, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
