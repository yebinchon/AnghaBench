; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_vec_s = type { i32, i32, i32, %struct.TYPE_2__*, %struct.aq_ring_s** }
%struct.TYPE_2__ = type { i32 (i32, %struct.aq_ring_s*)*, i32 (i32, %struct.aq_ring_s*)* }
%struct.aq_ring_s = type { i32 }

@AQ_VEC_TX_ID = common dso_local global i64 0, align 8
@AQ_VEC_RX_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_vec_stop(%struct.aq_vec_s* %0) #0 {
  %2 = alloca %struct.aq_vec_s*, align 8
  %3 = alloca %struct.aq_ring_s*, align 8
  %4 = alloca i32, align 4
  store %struct.aq_vec_s* %0, %struct.aq_vec_s** %2, align 8
  store %struct.aq_ring_s* null, %struct.aq_ring_s** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %6 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %5, i32 0, i32 4
  %7 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %6, align 8
  %8 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %7, i64 0
  %9 = load %struct.aq_ring_s*, %struct.aq_ring_s** %8, align 8
  store %struct.aq_ring_s* %9, %struct.aq_ring_s** %3, align 8
  br label %10

10:                                               ; preds = %41, %1
  %11 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %12 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %10
  %17 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %18 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (i32, %struct.aq_ring_s*)*, i32 (i32, %struct.aq_ring_s*)** %20, align 8
  %22 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %23 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %26 = load i64, i64* @AQ_VEC_TX_ID, align 8
  %27 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %25, i64 %26
  %28 = call i32 %21(i32 %24, %struct.aq_ring_s* %27)
  %29 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %30 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.aq_ring_s*)*, i32 (i32, %struct.aq_ring_s*)** %32, align 8
  %34 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %35 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %38 = load i64, i64* @AQ_VEC_RX_ID, align 8
  %39 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %37, i64 %38
  %40 = call i32 %33(i32 %36, %struct.aq_ring_s* %39)
  br label %41

41:                                               ; preds = %16
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %45 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %44, i32 0, i32 4
  %46 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %46, i64 %48
  %50 = load %struct.aq_ring_s*, %struct.aq_ring_s** %49, align 8
  store %struct.aq_ring_s* %50, %struct.aq_ring_s** %3, align 8
  br label %10

51:                                               ; preds = %10
  %52 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %53 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %52, i32 0, i32 1
  %54 = call i32 @napi_disable(i32* %53)
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
