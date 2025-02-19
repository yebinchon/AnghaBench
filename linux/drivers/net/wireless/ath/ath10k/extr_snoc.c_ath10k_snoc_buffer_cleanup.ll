; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_buffer_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_buffer_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.ath10k_snoc_pipe*, i32 }
%struct.ath10k_snoc_pipe = type { i32 }

@CE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_snoc_buffer_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_snoc_buffer_cleanup(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_snoc*, align 8
  %4 = alloca %struct.ath10k_snoc_pipe*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %7 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %6)
  store %struct.ath10k_snoc* %7, %struct.ath10k_snoc** %3, align 8
  %8 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %8, i32 0, i32 1
  %10 = call i32 @del_timer_sync(i32* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CE_COUNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %16, i32 0, i32 0
  %18 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %18, i64 %20
  store %struct.ath10k_snoc_pipe* %21, %struct.ath10k_snoc_pipe** %4, align 8
  %22 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %4, align 8
  %23 = call i32 @ath10k_snoc_rx_pipe_cleanup(%struct.ath10k_snoc_pipe* %22)
  %24 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %4, align 8
  %25 = call i32 @ath10k_snoc_tx_pipe_cleanup(%struct.ath10k_snoc_pipe* %24)
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %11

29:                                               ; preds = %11
  ret void
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ath10k_snoc_rx_pipe_cleanup(%struct.ath10k_snoc_pipe*) #1

declare dso_local i32 @ath10k_snoc_tx_pipe_cleanup(%struct.ath10k_snoc_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
