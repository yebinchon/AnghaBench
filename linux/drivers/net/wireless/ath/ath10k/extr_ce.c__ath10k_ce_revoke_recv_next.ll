; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c__ath10k_ce_revoke_recv_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c__ath10k_ce_revoke_recv_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { %struct.ath10k*, %struct.ath10k_ce_ring* }
%struct.ath10k = type { i32 }
%struct.ath10k_ce_ring = type { i32, i32, i32, i32**, %struct.ce_desc* }
%struct.ce_desc = type { i64, i32 }
%struct.ath10k_ce = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_ce_pipe*, i8**, i32*)* @_ath10k_ce_revoke_recv_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ath10k_ce_revoke_recv_next(%struct.ath10k_ce_pipe* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_ce_pipe*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ath10k_ce_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath10k*, align 8
  %14 = alloca %struct.ath10k_ce*, align 8
  %15 = alloca %struct.ce_desc*, align 8
  %16 = alloca %struct.ce_desc*, align 8
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %5, align 8
  %18 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %17, i32 0, i32 1
  %19 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %18, align 8
  store %struct.ath10k_ce_ring* %19, %struct.ath10k_ce_ring** %8, align 8
  %20 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %21 = icmp ne %struct.ath10k_ce_ring* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %93

25:                                               ; preds = %3
  %26 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %5, align 8
  %27 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %26, i32 0, i32 0
  %28 = load %struct.ath10k*, %struct.ath10k** %27, align 8
  store %struct.ath10k* %28, %struct.ath10k** %13, align 8
  %29 = load %struct.ath10k*, %struct.ath10k** %13, align 8
  %30 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %29)
  store %struct.ath10k_ce* %30, %struct.ath10k_ce** %14, align 8
  %31 = load %struct.ath10k_ce*, %struct.ath10k_ce** %14, align 8
  %32 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %35 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %38 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %41 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %25
  %47 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %48 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %47, i32 0, i32 4
  %49 = load %struct.ce_desc*, %struct.ce_desc** %48, align 8
  store %struct.ce_desc* %49, %struct.ce_desc** %15, align 8
  %50 = load %struct.ce_desc*, %struct.ce_desc** %15, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.ce_desc* @CE_DEST_RING_TO_DESC(%struct.ce_desc* %50, i32 %51)
  store %struct.ce_desc* %52, %struct.ce_desc** %16, align 8
  %53 = load %struct.ce_desc*, %struct.ce_desc** %16, align 8
  %54 = getelementptr inbounds %struct.ce_desc, %struct.ce_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @__le32_to_cpu(i32 %55)
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i8**, i8*** %6, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %46
  %61 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %62 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %61, i32 0, i32 3
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to i8*
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %60, %46
  %71 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %72 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %71, i32 0, i32 3
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  store i32* null, i32** %76, align 8
  %77 = load %struct.ce_desc*, %struct.ce_desc** %16, align 8
  %78 = getelementptr inbounds %struct.ce_desc, %struct.ce_desc* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @CE_RING_IDX_INCR(i32 %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %84 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %12, align 4
  br label %88

85:                                               ; preds = %25
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %85, %70
  %89 = load %struct.ath10k_ce*, %struct.ath10k_ce** %14, align 8
  %90 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock_bh(i32* %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %88, %22
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ce_desc* @CE_DEST_RING_TO_DESC(%struct.ce_desc*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @CE_RING_IDX_INCR(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
