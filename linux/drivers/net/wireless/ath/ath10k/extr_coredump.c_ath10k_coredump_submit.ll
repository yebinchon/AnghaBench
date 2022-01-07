; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_coredump.c_ath10k_coredump_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_coredump.c_ath10k_coredump_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_dump_file_data = type { i32 }

@ath10k_coredump_mask = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"no crash dump data found for devcoredump\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_coredump_submit(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_dump_file_data*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load i64, i64* @ath10k_coredump_mask, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = call %struct.ath10k_dump_file_data* @ath10k_coredump_build(%struct.ath10k* %9)
  store %struct.ath10k_dump_file_data* %10, %struct.ath10k_dump_file_data** %4, align 8
  %11 = load %struct.ath10k_dump_file_data*, %struct.ath10k_dump_file_data** %4, align 8
  %12 = icmp ne %struct.ath10k_dump_file_data* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = call i32 @ath10k_warn(%struct.ath10k* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %8
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ath10k_dump_file_data*, %struct.ath10k_dump_file_data** %4, align 8
  %23 = load %struct.ath10k_dump_file_data*, %struct.ath10k_dump_file_data** %4, align 8
  %24 = getelementptr inbounds %struct.ath10k_dump_file_data, %struct.ath10k_dump_file_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @dev_coredumpv(i32 %21, %struct.ath10k_dump_file_data* %22, i32 %26, i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %13, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.ath10k_dump_file_data* @ath10k_coredump_build(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @dev_coredumpv(i32, %struct.ath10k_dump_file_data*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
