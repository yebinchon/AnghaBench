; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_core_destroy(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %3 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %4 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @flush_workqueue(i32 %5)
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @destroy_workqueue(i32 %9)
  %11 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @flush_workqueue(i32 %13)
  %15 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @destroy_workqueue(i32 %17)
  %19 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %20 = call i32 @ath10k_debug_destroy(%struct.ath10k* %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %22 = call i32 @ath10k_coredump_destroy(%struct.ath10k* %21)
  %23 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 0
  %25 = call i32 @ath10k_htt_tx_destroy(i32* %24)
  %26 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %27 = call i32 @ath10k_wmi_free_host_mem(%struct.ath10k* %26)
  %28 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %29 = call i32 @ath10k_mac_destroy(%struct.ath10k* %28)
  ret void
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @ath10k_debug_destroy(%struct.ath10k*) #1

declare dso_local i32 @ath10k_coredump_destroy(%struct.ath10k*) #1

declare dso_local i32 @ath10k_htt_tx_destroy(i32*) #1

declare dso_local i32 @ath10k_wmi_free_host_mem(%struct.ath10k*) #1

declare dso_local i32 @ath10k_mac_destroy(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
