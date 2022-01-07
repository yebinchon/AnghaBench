; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_mark_block_unused.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_mark_block_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [53 x i8] c"BUG: attempt to mark already unused pba %d as unused\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msb_data*, i32)* @msb_mark_block_unused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msb_mark_block_unused(%struct.msb_data* %0, i32 %1) #0 {
  %3 = alloca %struct.msb_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @msb_get_zone_from_pba(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %10 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @test_bit(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %18 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %21 = call i64 @msb_validate_used_block_bitmap(%struct.msb_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %27 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @__clear_bit(i32 %25, i32 %28)
  %30 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %31 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %24, %23, %14
  ret void
}

declare dso_local i32 @msb_get_zone_from_pba(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @msb_validate_used_block_bitmap(%struct.msb_data*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
