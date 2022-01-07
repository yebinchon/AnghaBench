; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_vec_s = type { i32, i32, i32, %struct.TYPE_2__*, %struct.aq_ring_s** }
%struct.TYPE_2__ = type { i32 (i32, %struct.aq_ring_s*)*, i32 (i32, %struct.aq_ring_s*)* }
%struct.aq_ring_s = type { i32 }

@AQ_VEC_TX_ID = common dso_local global i64 0, align 8
@AQ_VEC_RX_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_vec_start(%struct.aq_vec_s* %0) #0 {
  %2 = alloca %struct.aq_vec_s*, align 8
  %3 = alloca %struct.aq_ring_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aq_vec_s* %0, %struct.aq_vec_s** %2, align 8
  store %struct.aq_ring_s* null, %struct.aq_ring_s** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %7 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %6, i32 0, i32 4
  %8 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %7, align 8
  %9 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %8, i64 0
  %10 = load %struct.aq_ring_s*, %struct.aq_ring_s** %9, align 8
  store %struct.aq_ring_s* %10, %struct.aq_ring_s** %3, align 8
  br label %11

11:                                               ; preds = %50, %1
  %12 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %13 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %11
  %18 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %19 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, %struct.aq_ring_s*)*, i32 (i32, %struct.aq_ring_s*)** %21, align 8
  %23 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %24 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %27 = load i64, i64* @AQ_VEC_TX_ID, align 8
  %28 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %26, i64 %27
  %29 = call i32 %22(i32 %25, %struct.aq_ring_s* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %64

33:                                               ; preds = %17
  %34 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %35 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (i32, %struct.aq_ring_s*)*, i32 (i32, %struct.aq_ring_s*)** %37, align 8
  %39 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %40 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %43 = load i64, i64* @AQ_VEC_RX_ID, align 8
  %44 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %42, i64 %43
  %45 = call i32 %38(i32 %41, %struct.aq_ring_s* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %64

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  %53 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %54 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %53, i32 0, i32 4
  %55 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %55, i64 %57
  %59 = load %struct.aq_ring_s*, %struct.aq_ring_s** %58, align 8
  store %struct.aq_ring_s* %59, %struct.aq_ring_s** %3, align 8
  br label %11

60:                                               ; preds = %11
  %61 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %62 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %61, i32 0, i32 1
  %63 = call i32 @napi_enable(i32* %62)
  br label %64

64:                                               ; preds = %60, %48, %32
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
