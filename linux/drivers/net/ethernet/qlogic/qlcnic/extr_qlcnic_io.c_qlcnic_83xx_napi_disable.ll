; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_napi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_napi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i32, i32, i32, %struct.qlcnic_host_tx_ring*, %struct.qlcnic_recv_context* }
%struct.qlcnic_host_tx_ring = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }

@QLCNIC_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_napi_disable(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %5 = alloca %struct.qlcnic_recv_context*, align 8
  %6 = alloca %struct.qlcnic_host_tx_ring*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 5
  %9 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  store %struct.qlcnic_recv_context* %9, %struct.qlcnic_recv_context** %5, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QLCNIC_ADAPTER_UP_MAGIC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %91

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %5, align 8
  %25 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %24, i32 0, i32 0
  %26 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %26, i64 %28
  store %struct.qlcnic_host_sds_ring* %29, %struct.qlcnic_host_sds_ring** %4, align 8
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %38 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %39 = call i32 @qlcnic_disable_sds_intr(%struct.qlcnic_adapter* %37, %struct.qlcnic_host_sds_ring* %38)
  br label %40

40:                                               ; preds = %36, %23
  %41 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %42 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %41, i32 0, i32 0
  %43 = call i32 @napi_synchronize(i32* %42)
  %44 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %45 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %44, i32 0, i32 0
  %46 = call i32 @napi_disable(i32* %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %50
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %91, label %64

64:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %72, i32 0, i32 4
  %74 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %74, i64 %76
  store %struct.qlcnic_host_tx_ring* %77, %struct.qlcnic_host_tx_ring** %6, align 8
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %79 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %80 = call i32 @qlcnic_disable_tx_intr(%struct.qlcnic_adapter* %78, %struct.qlcnic_host_tx_ring* %79)
  %81 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %82 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %81, i32 0, i32 0
  %83 = call i32 @napi_synchronize(i32* %82)
  %84 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %85 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %84, i32 0, i32 0
  %86 = call i32 @napi_disable(i32* %85)
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %65

90:                                               ; preds = %65
  br label %91

91:                                               ; preds = %15, %90, %57, %50
  ret void
}

declare dso_local i32 @qlcnic_disable_sds_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @qlcnic_disable_tx_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
