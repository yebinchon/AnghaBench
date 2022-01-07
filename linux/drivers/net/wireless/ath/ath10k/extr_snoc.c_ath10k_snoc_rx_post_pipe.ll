; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_rx_post_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_rx_post_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_snoc_pipe = type { i64, %struct.ath10k_ce_pipe*, %struct.ath10k* }
%struct.ath10k_ce_pipe = type { i32 }
%struct.ath10k = type { i32 }
%struct.ath10k_ce = type { i32 }
%struct.ath10k_snoc = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to post rx buf: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ATH10K_SNOC_RX_POST_RETRY_MS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_snoc_pipe*)* @ath10k_snoc_rx_post_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_snoc_rx_post_pipe(%struct.ath10k_snoc_pipe* %0) #0 {
  %2 = alloca %struct.ath10k_snoc_pipe*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_ce*, align 8
  %5 = alloca %struct.ath10k_snoc*, align 8
  %6 = alloca %struct.ath10k_ce_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_snoc_pipe* %0, %struct.ath10k_snoc_pipe** %2, align 8
  %9 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %2, align 8
  %10 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %9, i32 0, i32 2
  %11 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  store %struct.ath10k* %11, %struct.ath10k** %3, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %12)
  store %struct.ath10k_ce* %13, %struct.ath10k_ce** %4, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %14)
  store %struct.ath10k_snoc* %15, %struct.ath10k_snoc** %5, align 8
  %16 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %2, align 8
  %17 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %16, i32 0, i32 1
  %18 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %17, align 8
  store %struct.ath10k_ce_pipe* %18, %struct.ath10k_ce_pipe** %6, align 8
  %19 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %2, align 8
  %20 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %65

24:                                               ; preds = %1
  %25 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %26 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %65

30:                                               ; preds = %24
  %31 = load %struct.ath10k_ce*, %struct.ath10k_ce** %4, align 8
  %32 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %35 = call i32 @__ath10k_ce_rx_num_free_bufs(%struct.ath10k_ce_pipe* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.ath10k_ce*, %struct.ath10k_ce** %4, align 8
  %37 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  br label %39

39:                                               ; preds = %64, %30
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %8, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %2, align 8
  %45 = call i32 @__ath10k_snoc_rx_post_buf(%struct.ath10k_snoc_pipe* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ENOSPC, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %65

54:                                               ; preds = %48
  %55 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ath10k_warn(%struct.ath10k* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %5, align 8
  %59 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %58, i32 0, i32 0
  %60 = load i64, i64* @jiffies, align 8
  %61 = load i64, i64* @ATH10K_SNOC_RX_POST_RETRY_MS, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @mod_timer(i32* %59, i64 %62)
  br label %65

64:                                               ; preds = %43
  br label %39

65:                                               ; preds = %23, %29, %54, %53, %39
  ret void
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__ath10k_ce_rx_num_free_bufs(%struct.ath10k_ce_pipe*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__ath10k_snoc_rx_post_buf(%struct.ath10k_snoc_pipe*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
