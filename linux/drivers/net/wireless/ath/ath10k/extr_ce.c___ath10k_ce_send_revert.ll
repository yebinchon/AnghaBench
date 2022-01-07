; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c___ath10k_ce_send_revert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c___ath10k_ce_send_revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { i32, %struct.ath10k_ce_ring*, %struct.ath10k* }
%struct.ath10k_ce_ring = type { i64, i64, i64, i32** }
%struct.ath10k = type { i32 }
%struct.ath10k_ce = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ath10k_ce_send_revert(%struct.ath10k_ce_pipe* %0) #0 {
  %2 = alloca %struct.ath10k_ce_pipe*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_ce*, align 8
  %5 = alloca %struct.ath10k_ce_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %2, align 8
  %7 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %8 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %7, i32 0, i32 2
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %3, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %11 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %10)
  store %struct.ath10k_ce* %11, %struct.ath10k_ce** %4, align 8
  %12 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %13 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %12, i32 0, i32 1
  %14 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %13, align 8
  store %struct.ath10k_ce_ring* %14, %struct.ath10k_ce_ring** %5, align 8
  %15 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %16 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ath10k_ce*, %struct.ath10k_ce** %4, align 8
  %19 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %18, i32 0, i32 0
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %22 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %25 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %63

32:                                               ; preds = %1
  %33 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %34 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @ath10k_ce_src_ring_write_index_get(%struct.ath10k* %36, i32 %37)
  %39 = icmp eq i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON_ONCE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %63

44:                                               ; preds = %32
  %45 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %46 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %50 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %53 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %57 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %56, i32 0, i32 3
  %58 = load i32**, i32*** %57, align 8
  %59 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %5, align 8
  %60 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32*, i32** %58, i64 %61
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %44, %43, %31
  ret void
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ath10k_ce_src_ring_write_index_get(%struct.ath10k*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
