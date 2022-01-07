; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_coredump.c_ath10k_coredump_get_mem_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_coredump.c_ath10k_coredump_get_mem_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_hw_mem_layout = type { i64, i64 }
%struct.ath10k = type { i64, i64 }

@ATH10K_FW_CRASH_DUMP_RAM_DATA = common dso_local global i32 0, align 4
@ath10k_coredump_mask = common dso_local global i32 0, align 4
@hw_mem_layouts = common dso_local global %struct.ath10k_hw_mem_layout* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath10k_hw_mem_layout* @ath10k_coredump_get_mem_layout(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k_hw_mem_layout*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load i32, i32* @ATH10K_FW_CRASH_DUMP_RAM_DATA, align 4
  %6 = call i32 @test_bit(i32 %5, i32* @ath10k_coredump_mask)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.ath10k_hw_mem_layout* null, %struct.ath10k_hw_mem_layout** %2, align 8
  br label %56

9:                                                ; preds = %1
  %10 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store %struct.ath10k_hw_mem_layout* null, %struct.ath10k_hw_mem_layout** %2, align 8
  br label %56

18:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %52, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** @hw_mem_layouts, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.ath10k_hw_mem_layout* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** @hw_mem_layouts, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ath10k_hw_mem_layout, %struct.ath10k_hw_mem_layout* %28, i64 %30
  %32 = getelementptr inbounds %struct.ath10k_hw_mem_layout, %struct.ath10k_hw_mem_layout* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %27, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %24
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** @hw_mem_layouts, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ath10k_hw_mem_layout, %struct.ath10k_hw_mem_layout* %39, i64 %41
  %43 = getelementptr inbounds %struct.ath10k_hw_mem_layout, %struct.ath10k_hw_mem_layout* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %38, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** @hw_mem_layouts, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ath10k_hw_mem_layout, %struct.ath10k_hw_mem_layout* %47, i64 %49
  store %struct.ath10k_hw_mem_layout* %50, %struct.ath10k_hw_mem_layout** %2, align 8
  br label %56

51:                                               ; preds = %35, %24
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %19

55:                                               ; preds = %19
  store %struct.ath10k_hw_mem_layout* null, %struct.ath10k_hw_mem_layout** %2, align 8
  br label %56

56:                                               ; preds = %55, %46, %17, %8
  %57 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** %2, align 8
  ret %struct.ath10k_hw_mem_layout* %57
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ath10k_hw_mem_layout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
