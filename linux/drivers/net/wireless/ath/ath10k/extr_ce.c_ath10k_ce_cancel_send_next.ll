; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_cancel_send_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_cancel_send_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { %struct.TYPE_2__*, %struct.ath10k*, %struct.ath10k_ce_ring* }
%struct.TYPE_2__ = type { i32 (%struct.ath10k*, %struct.ath10k_ce_ring*, i32, i32*, i32*, i32*)* }
%struct.ath10k = type { i32 }
%struct.ath10k_ce_ring = type { i32, i32, i32, i32** }
%struct.ath10k_ce = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_ce_cancel_send_next(%struct.ath10k_ce_pipe* %0, i8** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_ce_pipe*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ath10k_ce_ring*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ath10k*, align 8
  %18 = alloca %struct.ath10k_ce*, align 8
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %7, align 8
  %20 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %19, i32 0, i32 2
  %21 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %20, align 8
  store %struct.ath10k_ce_ring* %21, %struct.ath10k_ce_ring** %12, align 8
  %22 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %12, align 8
  %23 = icmp ne %struct.ath10k_ce_ring* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %94

27:                                               ; preds = %5
  %28 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %7, align 8
  %29 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %28, i32 0, i32 1
  %30 = load %struct.ath10k*, %struct.ath10k** %29, align 8
  store %struct.ath10k* %30, %struct.ath10k** %17, align 8
  %31 = load %struct.ath10k*, %struct.ath10k** %17, align 8
  %32 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %31)
  store %struct.ath10k_ce* %32, %struct.ath10k_ce** %18, align 8
  %33 = load %struct.ath10k_ce*, %struct.ath10k_ce** %18, align 8
  %34 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %12, align 8
  %37 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %13, align 4
  %39 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %12, align 8
  %40 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %12, align 8
  %43 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %27
  %49 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %7, align 8
  %50 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.ath10k*, %struct.ath10k_ce_ring*, i32, i32*, i32*, i32*)*, i32 (%struct.ath10k*, %struct.ath10k_ce_ring*, i32, i32*, i32*, i32*)** %52, align 8
  %54 = load %struct.ath10k*, %struct.ath10k** %17, align 8
  %55 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %12, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 %53(%struct.ath10k* %54, %struct.ath10k_ce_ring* %55, i32 %56, i32* %57, i32* %58, i32* %59)
  %61 = load i8**, i8*** %8, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %48
  %64 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %12, align 8
  %65 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %64, i32 0, i32 3
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = bitcast i32* %70 to i8*
  %72 = load i8**, i8*** %8, align 8
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %63, %48
  %74 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %12, align 8
  %75 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %74, i32 0, i32 3
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* null, i32** %79, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @CE_RING_IDX_INCR(i32 %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %12, align 8
  %85 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %16, align 4
  br label %89

86:                                               ; preds = %27
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %86, %73
  %90 = load %struct.ath10k_ce*, %struct.ath10k_ce** %18, align 8
  %91 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock_bh(i32* %91)
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %89, %24
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @CE_RING_IDX_INCR(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
