; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c___ath10k_ce_rx_post_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c___ath10k_ce_rx_post_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { i32, i32, %struct.ath10k_ce_ring*, %struct.ath10k* }
%struct.ath10k_ce_ring = type { i32, i32, i32, i8**, %struct.ce_desc* }
%struct.ce_desc = type { i64, i32 }
%struct.ath10k = type { i32 }
%struct.ath10k_ce = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_ce_pipe*, i8*, i32)* @__ath10k_ce_rx_post_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath10k_ce_rx_post_buf(%struct.ath10k_ce_pipe* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_ce_pipe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca %struct.ath10k_ce*, align 8
  %10 = alloca %struct.ath10k_ce_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ce_desc*, align 8
  %15 = alloca %struct.ce_desc*, align 8
  %16 = alloca i32, align 4
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %5, align 8
  %18 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %17, i32 0, i32 3
  %19 = load %struct.ath10k*, %struct.ath10k** %18, align 8
  store %struct.ath10k* %19, %struct.ath10k** %8, align 8
  %20 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %21 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %20)
  store %struct.ath10k_ce* %21, %struct.ath10k_ce** %9, align 8
  %22 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %22, i32 0, i32 2
  %24 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %23, align 8
  store %struct.ath10k_ce_ring* %24, %struct.ath10k_ce_ring** %10, align 8
  %25 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %10, align 8
  %26 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %10, align 8
  %29 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %10, align 8
  %32 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %10, align 8
  %35 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %34, i32 0, i32 4
  %36 = load %struct.ce_desc*, %struct.ce_desc** %35, align 8
  store %struct.ce_desc* %36, %struct.ce_desc** %14, align 8
  %37 = load %struct.ce_desc*, %struct.ce_desc** %14, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call %struct.ce_desc* @CE_DEST_RING_TO_DESC(%struct.ce_desc* %37, i32 %38)
  store %struct.ce_desc* %39, %struct.ce_desc** %15, align 8
  %40 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %5, align 8
  %41 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  %43 = load %struct.ath10k_ce*, %struct.ath10k_ce** %9, align 8
  %44 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %43, i32 0, i32 0
  %45 = call i32 @lockdep_assert_held(i32* %44)
  %46 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %5, align 8
  %47 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 5
  br i1 %49, label %50, label %60

50:                                               ; preds = %3
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub i32 %53, 1
  %55 = call i64 @CE_RING_DELTA(i32 %51, i32 %52, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %84

60:                                               ; preds = %50, %3
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @__cpu_to_le32(i32 %61)
  %63 = load %struct.ce_desc*, %struct.ce_desc** %15, align 8
  %64 = getelementptr inbounds %struct.ce_desc, %struct.ce_desc* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ce_desc*, %struct.ce_desc** %15, align 8
  %66 = getelementptr inbounds %struct.ce_desc, %struct.ce_desc* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %10, align 8
  %69 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %68, i32 0, i32 3
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %67, i8** %73, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @CE_RING_IDX_INCR(i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @ath10k_ce_dest_ring_write_index_set(%struct.ath10k* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %10, align 8
  %83 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %60, %57
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local %struct.ce_desc* @CE_DEST_RING_TO_DESC(%struct.ce_desc*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @CE_RING_DELTA(i32, i32, i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @CE_RING_IDX_INCR(i32, i32) #1

declare dso_local i32 @ath10k_ce_dest_ring_write_index_set(%struct.ath10k*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
