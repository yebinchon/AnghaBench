; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_validate_used_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_validate_used_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, i32, i32, i32, i64* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"BUG: free block counts don't match the bitmap\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*)* @msb_validate_used_block_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_validate_used_block_bitmap(%struct.msb_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msb_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @debug, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

9:                                                ; preds = %1
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %13 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %18 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %17, i32 0, i32 4
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %33 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %36 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %39 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bitmap_weight(i32 %37, i32 %40)
  %42 = sub nsw i32 %34, %41
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %52

46:                                               ; preds = %31
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %49 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %45, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
