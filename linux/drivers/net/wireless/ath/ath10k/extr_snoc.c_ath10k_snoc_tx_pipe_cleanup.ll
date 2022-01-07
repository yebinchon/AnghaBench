; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_tx_pipe_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_tx_pipe_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_snoc_pipe = type { i32, %struct.ath10k_ce_pipe*, %struct.ath10k* }
%struct.ath10k_ce_pipe = type { %struct.ath10k_ce_ring* }
%struct.ath10k_ce_ring = type { i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.ath10k = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_snoc_pipe*)* @ath10k_snoc_tx_pipe_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_snoc_tx_pipe_cleanup(%struct.ath10k_snoc_pipe* %0) #0 {
  %2 = alloca %struct.ath10k_snoc_pipe*, align 8
  %3 = alloca %struct.ath10k_ce_pipe*, align 8
  %4 = alloca %struct.ath10k_ce_ring*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k_snoc_pipe* %0, %struct.ath10k_snoc_pipe** %2, align 8
  %8 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %2, align 8
  %9 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %8, i32 0, i32 2
  %10 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  store %struct.ath10k* %10, %struct.ath10k** %6, align 8
  %11 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %2, align 8
  %12 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %11, i32 0, i32 1
  %13 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %12, align 8
  store %struct.ath10k_ce_pipe* %13, %struct.ath10k_ce_pipe** %3, align 8
  %14 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %14, i32 0, i32 0
  %16 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %15, align 8
  store %struct.ath10k_ce_ring* %16, %struct.ath10k_ce_ring** %4, align 8
  %17 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %4, align 8
  %18 = icmp ne %struct.ath10k_ce_ring* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %57

20:                                               ; preds = %1
  %21 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %2, align 8
  %22 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %57

26:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %54, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %4, align 8
  %30 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %4, align 8
  %35 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %34, i32 0, i32 1
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %36, i64 %38
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %5, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %54

44:                                               ; preds = %33
  %45 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %4, align 8
  %46 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %45, i32 0, i32 1
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %49
  store %struct.sk_buff* null, %struct.sk_buff** %50, align 8
  %51 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @ath10k_htc_tx_completion_handler(%struct.ath10k* %51, %struct.sk_buff* %52)
  br label %54

54:                                               ; preds = %44, %43
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %27

57:                                               ; preds = %19, %25, %27
  ret void
}

declare dso_local i32 @ath10k_htc_tx_completion_handler(%struct.ath10k*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
