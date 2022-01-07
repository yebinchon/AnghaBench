; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_coredump.c_ath10k_coredump_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_coredump.c_ath10k_coredump_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_fw_crash_data = type { i32, i32 }
%struct.ath10k = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath10k_fw_crash_data* }

@ath10k_coredump_mask = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath10k_fw_crash_data* @ath10k_coredump_new(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k_fw_crash_data*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_fw_crash_data*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %7, align 8
  store %struct.ath10k_fw_crash_data* %8, %struct.ath10k_fw_crash_data** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load i64, i64* @ath10k_coredump_mask, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.ath10k_fw_crash_data* null, %struct.ath10k_fw_crash_data** %2, align 8
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_fw_crash_data, %struct.ath10k_fw_crash_data* %16, i32 0, i32 1
  %18 = call i32 @guid_gen(i32* %17)
  %19 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k_fw_crash_data, %struct.ath10k_fw_crash_data* %19, i32 0, i32 0
  %21 = call i32 @ktime_get_real_ts64(i32* %20)
  %22 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  store %struct.ath10k_fw_crash_data* %22, %struct.ath10k_fw_crash_data** %2, align 8
  br label %23

23:                                               ; preds = %15, %14
  %24 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %2, align 8
  ret %struct.ath10k_fw_crash_data* %24
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @guid_gen(i32*) #1

declare dso_local i32 @ktime_get_real_ts64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
