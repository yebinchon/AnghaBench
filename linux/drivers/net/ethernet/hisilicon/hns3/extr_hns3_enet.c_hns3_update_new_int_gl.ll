; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_update_new_int_gl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_update_new_int_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_tqp_vector = type { i64, %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group }
%struct.hns3_enet_ring_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_tqp_vector*)* @hns3_update_new_int_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_update_new_int_gl(%struct.hns3_enet_tqp_vector* %0) #0 {
  %2 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %3 = alloca %struct.hns3_enet_ring_group*, align 8
  %4 = alloca %struct.hns3_enet_ring_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hns3_enet_tqp_vector* %0, %struct.hns3_enet_tqp_vector** %2, align 8
  %7 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %2, align 8
  %8 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %7, i32 0, i32 2
  store %struct.hns3_enet_ring_group* %8, %struct.hns3_enet_ring_group** %3, align 8
  %9 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %2, align 8
  %10 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %9, i32 0, i32 1
  store %struct.hns3_enet_ring_group* %10, %struct.hns3_enet_ring_group** %4, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %2, align 8
  %13 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @msecs_to_jiffies(i32 1000)
  %16 = add nsw i64 %14, %15
  %17 = call i64 @time_before(i64 %11, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %22 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %28 = call i32 @hns3_get_new_int_gl(%struct.hns3_enet_ring_group* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %2, align 8
  %33 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %34 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @hns3_set_vector_coalesce_rx_gl(%struct.hns3_enet_tqp_vector* %32, i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  br label %39

39:                                               ; preds = %38, %20
  %40 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %4, align 8
  %41 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %4, align 8
  %47 = call i32 @hns3_get_new_int_gl(%struct.hns3_enet_ring_group* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %2, align 8
  %52 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %4, align 8
  %53 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @hns3_set_vector_coalesce_tx_gl(%struct.hns3_enet_tqp_vector* %51, i32 %55)
  br label %57

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i64, i64* @jiffies, align 8
  %60 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %2, align 8
  %61 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %19
  ret void
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @hns3_get_new_int_gl(%struct.hns3_enet_ring_group*) #1

declare dso_local i32 @hns3_set_vector_coalesce_rx_gl(%struct.hns3_enet_tqp_vector*, i32) #1

declare dso_local i32 @hns3_set_vector_coalesce_tx_gl(%struct.hns3_enet_tqp_vector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
