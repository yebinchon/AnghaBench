; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_disable.c"
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
define dso_local void @qlcnic_82xx_napi_disable(%struct.qlcnic_adapter* %0) #0 {
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
  br label %87

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %24, i32 0, i32 0
  %26 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %26, i64 %28
  store %struct.qlcnic_host_sds_ring* %29, %struct.qlcnic_host_sds_ring** %4, align 8
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %31 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %32 = call i32 @qlcnic_disable_sds_intr(%struct.qlcnic_adapter* %30, %struct.qlcnic_host_sds_ring* %31)
  %33 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %34 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %33, i32 0, i32 0
  %35 = call i32 @napi_synchronize(i32* %34)
  %36 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %37 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %36, i32 0, i32 0
  %38 = call i32 @napi_disable(i32* %37)
  br label %39

39:                                               ; preds = %23
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %17

42:                                               ; preds = %17
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %42
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 5
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %87, label %56

56:                                               ; preds = %49
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %58 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %83, %60
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %61
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %68, i32 0, i32 4
  %70 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %70, i64 %72
  store %struct.qlcnic_host_tx_ring* %73, %struct.qlcnic_host_tx_ring** %5, align 8
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %75 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %76 = call i32 @qlcnic_disable_tx_intr(%struct.qlcnic_adapter* %74, %struct.qlcnic_host_tx_ring* %75)
  %77 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %78 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %77, i32 0, i32 0
  %79 = call i32 @napi_synchronize(i32* %78)
  %80 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %81 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %80, i32 0, i32 0
  %82 = call i32 @napi_disable(i32* %81)
  br label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %61

86:                                               ; preds = %61
  br label %87

87:                                               ; preds = %15, %86, %56, %49, %42
  ret void
}

declare dso_local i32 @qlcnic_disable_sds_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_disable_tx_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
