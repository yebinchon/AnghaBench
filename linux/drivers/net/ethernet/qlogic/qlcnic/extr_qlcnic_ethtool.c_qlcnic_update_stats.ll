; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__, %struct.qlcnic_host_tx_ring* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.qlcnic_host_tx_ring = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.qlcnic_tx_queue_stats = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_update_stats(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_tx_queue_stats, align 4
  %4 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %6 = call i32 @memset(%struct.qlcnic_tx_queue_stats* %3, i32 0, i32 20)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %65, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %7
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 2
  %16 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %16, i64 %18
  store %struct.qlcnic_host_tx_ring* %19, %struct.qlcnic_host_tx_ring** %4, align 8
  %20 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.qlcnic_tx_queue_stats, %struct.qlcnic_tx_queue_stats* %3, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %23
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.qlcnic_tx_queue_stats, %struct.qlcnic_tx_queue_stats* %3, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %32
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.qlcnic_tx_queue_stats, %struct.qlcnic_tx_queue_stats* %3, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %41
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %48 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.qlcnic_tx_queue_stats, %struct.qlcnic_tx_queue_stats* %3, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %50
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %57 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.qlcnic_tx_queue_stats, %struct.qlcnic_tx_queue_stats* %3, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %59
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  br label %65

65:                                               ; preds = %13
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %7

68:                                               ; preds = %7
  %69 = getelementptr inbounds %struct.qlcnic_tx_queue_stats, %struct.qlcnic_tx_queue_stats* %3, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 4
  %74 = getelementptr inbounds %struct.qlcnic_tx_queue_stats, %struct.qlcnic_tx_queue_stats* %3, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = getelementptr inbounds %struct.qlcnic_tx_queue_stats, %struct.qlcnic_tx_queue_stats* %3, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  %84 = getelementptr inbounds %struct.qlcnic_tx_queue_stats, %struct.qlcnic_tx_queue_stats* %3, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = getelementptr inbounds %struct.qlcnic_tx_queue_stats, %struct.qlcnic_tx_queue_stats* %3, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  ret void
}

declare dso_local i32 @memset(%struct.qlcnic_tx_queue_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
