; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_host_tx_ring*, %struct.TYPE_2__*, %struct.qlcnic_recv_context* }
%struct.qlcnic_host_tx_ring = type { i64 }
%struct.TYPE_2__ = type { i64 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_tx_ring* }
%struct.qlcnic_host_sds_ring = type { i64 }

@QLCNIC_LOOPBACK_TEST = common dso_local global i64 0, align 8
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_free_irq(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %5 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %6 = alloca %struct.qlcnic_recv_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 5
  %9 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  store %struct.qlcnic_recv_context* %9, %struct.qlcnic_recv_context** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QLCNIC_LOOPBACK_TEST, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %106

17:                                               ; preds = %1
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %19 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %23 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %25, %17
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %6, align 8
  %41 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %40, i32 0, i32 0
  %42 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %42, i64 %44
  %46 = bitcast %struct.qlcnic_host_tx_ring* %45 to %struct.qlcnic_host_sds_ring*
  store %struct.qlcnic_host_sds_ring* %46, %struct.qlcnic_host_sds_ring** %4, align 8
  %47 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %48 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %51 = bitcast %struct.qlcnic_host_sds_ring* %50 to %struct.qlcnic_host_tx_ring*
  %52 = call i32 @free_irq(i64 %49, %struct.qlcnic_host_tx_ring* %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %33

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56, %25, %21
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %59 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61, %57
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %70 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %68
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %74 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %72, %61
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %101, %76
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %77
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %84, i32 0, i32 3
  %86 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %86, i64 %88
  store %struct.qlcnic_host_tx_ring* %89, %struct.qlcnic_host_tx_ring** %5, align 8
  %90 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %91 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %96 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %99 = call i32 @free_irq(i64 %97, %struct.qlcnic_host_tx_ring* %98)
  br label %100

100:                                              ; preds = %94, %83
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %77

104:                                              ; preds = %77
  br label %105

105:                                              ; preds = %104, %72, %68
  br label %106

106:                                              ; preds = %105, %1
  ret void
}

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @free_irq(i64, %struct.qlcnic_host_tx_ring*) #1

declare dso_local i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
