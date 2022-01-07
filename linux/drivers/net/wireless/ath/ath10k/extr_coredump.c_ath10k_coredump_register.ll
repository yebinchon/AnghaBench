; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_coredump.c_ath10k_coredump_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_coredump.c_ath10k_coredump_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath10k_fw_crash_data* }
%struct.ath10k_fw_crash_data = type { i32, i32 }

@ATH10K_FW_CRASH_DUMP_RAM_DATA = common dso_local global i32 0, align 4
@ath10k_coredump_mask = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_coredump_register(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_fw_crash_data*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %7, align 8
  store %struct.ath10k_fw_crash_data* %8, %struct.ath10k_fw_crash_data** %4, align 8
  %9 = load i32, i32* @ATH10K_FW_CRASH_DUMP_RAM_DATA, align 4
  %10 = call i64 @test_bit(i32 %9, i32* @ath10k_coredump_mask)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %14 = call i32 @ath10k_coredump_get_ramdump_size(%struct.ath10k* %13)
  %15 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %16 = getelementptr inbounds %struct.ath10k_fw_crash_data, %struct.ath10k_fw_crash_data* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %18 = getelementptr inbounds %struct.ath10k_fw_crash_data, %struct.ath10k_fw_crash_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vzalloc(i32 %19)
  %21 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %22 = getelementptr inbounds %struct.ath10k_fw_crash_data, %struct.ath10k_fw_crash_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %24 = getelementptr inbounds %struct.ath10k_fw_crash_data, %struct.ath10k_fw_crash_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %12
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %30, %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath10k_coredump_get_ramdump_size(%struct.ath10k*) #1

declare dso_local i32 @vzalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
