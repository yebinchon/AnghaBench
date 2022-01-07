; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_tx_coalescing_timeo_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_tx_coalescing_timeo_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, %struct.bnad_tx_info* }
%struct.bnad_tx_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_tx_coalescing_timeo_set(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  %3 = alloca %struct.bnad_tx_info*, align 8
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  %4 = load %struct.bnad*, %struct.bnad** %2, align 8
  %5 = getelementptr inbounds %struct.bnad, %struct.bnad* %4, i32 0, i32 1
  %6 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %5, align 8
  %7 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %6, i64 0
  store %struct.bnad_tx_info* %7, %struct.bnad_tx_info** %3, align 8
  %8 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %3, align 8
  %9 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %3, align 8
  %15 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bnad*, %struct.bnad** %2, align 8
  %18 = getelementptr inbounds %struct.bnad, %struct.bnad* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bna_tx_coalescing_timeo_set(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @bna_tx_coalescing_timeo_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
