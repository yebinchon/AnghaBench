; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_vec_s = type { i32, %struct.aq_ring_s** }
%struct.aq_ring_s = type { i32 }

@AQ_VEC_TX_ID = common dso_local global i64 0, align 8
@AQ_VEC_RX_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_vec_deinit(%struct.aq_vec_s* %0) #0 {
  %2 = alloca %struct.aq_vec_s*, align 8
  %3 = alloca %struct.aq_ring_s*, align 8
  %4 = alloca i32, align 4
  store %struct.aq_vec_s* %0, %struct.aq_vec_s** %2, align 8
  store %struct.aq_ring_s* null, %struct.aq_ring_s** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %6 = icmp ne %struct.aq_vec_s* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %40

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  %9 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %10 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %9, i32 0, i32 1
  %11 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %10, align 8
  %12 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %11, i64 0
  %13 = load %struct.aq_ring_s*, %struct.aq_ring_s** %12, align 8
  store %struct.aq_ring_s* %13, %struct.aq_ring_s** %3, align 8
  br label %14

14:                                               ; preds = %29, %8
  %15 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %16 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %22 = load i64, i64* @AQ_VEC_TX_ID, align 8
  %23 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %21, i64 %22
  %24 = call i32 @aq_ring_tx_clean(%struct.aq_ring_s* %23)
  %25 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %26 = load i64, i64* @AQ_VEC_RX_ID, align 8
  %27 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %25, i64 %26
  %28 = call i32 @aq_ring_rx_deinit(%struct.aq_ring_s* %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = load %struct.aq_vec_s*, %struct.aq_vec_s** %2, align 8
  %33 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %32, i32 0, i32 1
  %34 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %34, i64 %36
  %38 = load %struct.aq_ring_s*, %struct.aq_ring_s** %37, align 8
  store %struct.aq_ring_s* %38, %struct.aq_ring_s** %3, align 8
  br label %14

39:                                               ; preds = %14
  br label %40

40:                                               ; preds = %39, %7
  ret void
}

declare dso_local i32 @aq_ring_tx_clean(%struct.aq_ring_s*) #1

declare dso_local i32 @aq_ring_rx_deinit(%struct.aq_ring_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
