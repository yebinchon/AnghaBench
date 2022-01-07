; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c__ath10k_ce_completed_send_next_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c__ath10k_ce_completed_send_next_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { %struct.ath10k*, i32, %struct.ath10k_ce_ring* }
%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ath10k_ce_ring = type { i32, i32, i32, i32, i32** }
%struct.ce_desc = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_ce_pipe*, i8**)* @_ath10k_ce_completed_send_next_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ath10k_ce_completed_send_next_nolock(%struct.ath10k_ce_pipe* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k_ce_pipe*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ath10k_ce_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ce_desc*, align 8
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %4, align 8
  store i8** %1, i8*** %5, align 8
  %13 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %4, align 8
  %14 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %13, i32 0, i32 2
  %15 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %14, align 8
  store %struct.ath10k_ce_ring* %15, %struct.ath10k_ce_ring** %6, align 8
  %16 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %19, i32 0, i32 0
  %21 = load %struct.ath10k*, %struct.ath10k** %20, align 8
  store %struct.ath10k* %21, %struct.ath10k** %8, align 8
  %22 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %23 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %26 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %29 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %2
  %34 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ath10k_ce_src_ring_read_index_get(%struct.ath10k* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %103

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %48 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %2
  %50 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %51 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ath10k_ce_src_ring_read_index_get(%struct.ath10k* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  br label %63

59:                                               ; preds = %49
  %60 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %61 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %103

70:                                               ; preds = %63
  %71 = load i8**, i8*** %5, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %75 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %74, i32 0, i32 4
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = load i8**, i8*** %5, align 8
  store i8* %81, i8** %82, align 8
  br label %83

83:                                               ; preds = %73, %70
  %84 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %85 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %84, i32 0, i32 4
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  store i32* null, i32** %89, align 8
  %90 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %91 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call %struct.ce_desc* @CE_SRC_RING_TO_DESC(i32 %92, i32 %93)
  store %struct.ce_desc* %94, %struct.ce_desc** %12, align 8
  %95 = load %struct.ce_desc*, %struct.ce_desc** %12, align 8
  %96 = getelementptr inbounds %struct.ce_desc, %struct.ce_desc* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @CE_RING_IDX_INCR(i32 %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %102 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %83, %67, %39
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @ath10k_ce_src_ring_read_index_get(%struct.ath10k*, i32) #1

declare dso_local %struct.ce_desc* @CE_SRC_RING_TO_DESC(i32, i32) #1

declare dso_local i32 @CE_RING_IDX_INCR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
