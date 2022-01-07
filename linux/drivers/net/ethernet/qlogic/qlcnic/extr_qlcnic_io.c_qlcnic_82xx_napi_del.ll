; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.qlcnic_host_tx_ring*, %struct.TYPE_2__*, %struct.qlcnic_recv_context* }
%struct.qlcnic_host_tx_ring = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_82xx_napi_del(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %5 = alloca %struct.qlcnic_recv_context*, align 8
  %6 = alloca %struct.qlcnic_host_tx_ring*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 4
  %9 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  store %struct.qlcnic_recv_context* %9, %struct.qlcnic_recv_context** %5, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %5, align 8
  %18 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %17, i32 0, i32 0
  %19 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %19, i64 %21
  store %struct.qlcnic_host_sds_ring* %22, %struct.qlcnic_host_sds_ring** %4, align 8
  %23 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %24 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %23, i32 0, i32 0
  %25 = call i32 @netif_napi_del(i32* %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 4
  %32 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %31, align 8
  %33 = call i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context* %32)
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %35 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %29
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 2
  %54 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %54, i64 %56
  store %struct.qlcnic_host_tx_ring* %57, %struct.qlcnic_host_tx_ring** %6, align 8
  %58 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %59 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %58, i32 0, i32 0
  %60 = call i32 @netif_napi_del(i32* %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %45

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64, %37, %29
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %67 = call i32 @qlcnic_free_tx_rings(%struct.qlcnic_adapter* %66)
  ret void
}

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context*) #1

declare dso_local i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_free_tx_rings(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
