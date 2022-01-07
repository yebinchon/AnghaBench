; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_swap.c_ath10k_swap_code_seg_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_swap.c_ath10k_swap_code_seg_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_fw_file = type { %struct.ath10k_swap_code_seg_info* }
%struct.ath10k_swap_code_seg_info = type { i32, i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"boot found firmware code swap binary\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to write Code swap segment information (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_swap_code_seg_configure(%struct.ath10k* %0, %struct.ath10k_fw_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_fw_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_swap_code_seg_info*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ath10k_fw_file* %1, %struct.ath10k_fw_file** %5, align 8
  store %struct.ath10k_swap_code_seg_info* null, %struct.ath10k_swap_code_seg_info** %7, align 8
  %8 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %9 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %8, i32 0, i32 0
  %10 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %9, align 8
  %11 = icmp ne %struct.ath10k_swap_code_seg_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %16 = call i32 @ath10k_dbg(%struct.ath10k* %14, i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %18 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %17, i32 0, i32 0
  %19 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %18, align 8
  store %struct.ath10k_swap_code_seg_info* %19, %struct.ath10k_swap_code_seg_info** %7, align 8
  %20 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %21 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %7, align 8
  %22 = getelementptr inbounds %struct.ath10k_swap_code_seg_info, %struct.ath10k_swap_code_seg_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %7, align 8
  %25 = getelementptr inbounds %struct.ath10k_swap_code_seg_info, %struct.ath10k_swap_code_seg_info* %24, i32 0, i32 0
  %26 = call i32 @ath10k_bmi_write_memory(%struct.ath10k* %20, i32 %23, i32* %25, i32 4)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ath10k_err(%struct.ath10k* %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_bmi_write_memory(%struct.ath10k*, i32, i32*, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
