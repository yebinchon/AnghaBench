; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*)* @mmc_test_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_test_remove(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %3 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @mmc_claim_host(i32 %10)
  %12 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %13 = call i32 @mmc_cmdq_enable(%struct.mmc_card* %12)
  %14 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mmc_release_host(i32 %16)
  br label %18

18:                                               ; preds = %7, %1
  %19 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %20 = call i32 @mmc_test_free_result(%struct.mmc_card* %19)
  %21 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %22 = call i32 @mmc_test_free_dbgfs_file(%struct.mmc_card* %21)
  ret void
}

declare dso_local i32 @mmc_claim_host(i32) #1

declare dso_local i32 @mmc_cmdq_enable(%struct.mmc_card*) #1

declare dso_local i32 @mmc_release_host(i32) #1

declare dso_local i32 @mmc_test_free_result(%struct.mmc_card*) #1

declare dso_local i32 @mmc_test_free_dbgfs_file(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
