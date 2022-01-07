; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i32, i32, i32, %struct.qlcnic_host_tx_ring*, %struct.TYPE_2__*, %struct.qlcnic_recv_context* }
%struct.qlcnic_host_tx_ring = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }

@QLCNIC_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_82xx_napi_enable(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %5 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %6 = alloca %struct.qlcnic_recv_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 6
  %9 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  store %struct.qlcnic_recv_context* %9, %struct.qlcnic_recv_context** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QLCNIC_ADAPTER_UP_MAGIC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %81

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %24, i32 0, i32 0
  %26 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %26, i64 %28
  store %struct.qlcnic_host_sds_ring* %29, %struct.qlcnic_host_sds_ring** %4, align 8
  %30 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %31 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %30, i32 0, i32 0
  %32 = call i32 @napi_enable(i32* %31)
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %34 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %35 = call i32 @qlcnic_enable_sds_intr(%struct.qlcnic_adapter* %33, %struct.qlcnic_host_sds_ring* %34)
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %41 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %43
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 5
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 4
  %67 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %67, i64 %69
  store %struct.qlcnic_host_tx_ring* %70, %struct.qlcnic_host_tx_ring** %5, align 8
  %71 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %72 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %71, i32 0, i32 0
  %73 = call i32 @napi_enable(i32* %72)
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %75 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %76 = call i32 @qlcnic_enable_tx_intr(%struct.qlcnic_adapter* %74, %struct.qlcnic_host_tx_ring* %75)
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %58

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %15, %80, %50, %43, %39
  ret void
}

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @qlcnic_enable_sds_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*) #1

declare dso_local i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_enable_tx_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
