; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_swap.c_ath10k_swap_code_seg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_swap.c_ath10k_swap_code_seg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_fw_file = type { i8*, i64, %struct.ath10k_swap_code_seg_info* }
%struct.ath10k_swap_code_seg_info = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"failed to allocate fw code swap segment\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to initialize fw code swap segment: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_swap_code_seg_init(%struct.ath10k* %0, %struct.ath10k_fw_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_fw_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_swap_code_seg_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ath10k_fw_file* %1, %struct.ath10k_fw_file** %5, align 8
  %10 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %11 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %14 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %53

22:                                               ; preds = %18
  %23 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call %struct.ath10k_swap_code_seg_info* @ath10k_swap_code_seg_alloc(%struct.ath10k* %23, i64 %24)
  store %struct.ath10k_swap_code_seg_info* %25, %struct.ath10k_swap_code_seg_info** %7, align 8
  %26 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %7, align 8
  %27 = icmp ne %struct.ath10k_swap_code_seg_info* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %30 = call i32 @ath10k_err(%struct.ath10k* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %22
  %34 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %35 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @ath10k_swap_code_seg_fill(%struct.ath10k* %34, %struct.ath10k_swap_code_seg_info* %35, i8* %36, i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ath10k_warn(%struct.ath10k* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %46 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %7, align 8
  %47 = call i32 @ath10k_swap_code_seg_free(%struct.ath10k* %45, %struct.ath10k_swap_code_seg_info* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %33
  %50 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %7, align 8
  %51 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %52 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %51, i32 0, i32 2
  store %struct.ath10k_swap_code_seg_info* %50, %struct.ath10k_swap_code_seg_info** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %41, %28, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.ath10k_swap_code_seg_info* @ath10k_swap_code_seg_alloc(%struct.ath10k*, i64) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*) #1

declare dso_local i32 @ath10k_swap_code_seg_fill(%struct.ath10k*, %struct.ath10k_swap_code_seg_info*, i8*, i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_swap_code_seg_free(%struct.ath10k*, %struct.ath10k_swap_code_seg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
