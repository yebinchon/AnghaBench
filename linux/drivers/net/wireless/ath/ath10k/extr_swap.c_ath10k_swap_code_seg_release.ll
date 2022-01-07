; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_swap.c_ath10k_swap_code_seg_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_swap.c_ath10k_swap_code_seg_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_fw_file = type { i32*, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_swap_code_seg_release(%struct.ath10k* %0, %struct.ath10k_fw_file* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_fw_file*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ath10k_fw_file* %1, %struct.ath10k_fw_file** %4, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %4, align 8
  %7 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @ath10k_swap_code_seg_free(%struct.ath10k* %5, i32* %8)
  %10 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %10, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %4, align 8
  %13 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  ret void
}

declare dso_local i32 @ath10k_swap_code_seg_free(%struct.ath10k*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
