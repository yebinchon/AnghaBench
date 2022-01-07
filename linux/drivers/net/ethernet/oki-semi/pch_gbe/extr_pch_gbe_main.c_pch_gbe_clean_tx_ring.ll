; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pch_gbe_tx_ring = type { i32, i64, i32, i64, i64, %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer* }
%struct.pch_gbe_buffer = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"call pch_gbe_unmap_and_free_tx_resource() %d count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*)* @pch_gbe_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_clean_tx_ring(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_tx_ring* %1) #0 {
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.pch_gbe_tx_ring*, align 8
  %5 = alloca %struct.pch_gbe_hw*, align 8
  %6 = alloca %struct.pch_gbe_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  store %struct.pch_gbe_tx_ring* %1, %struct.pch_gbe_tx_ring** %4, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 1
  store %struct.pch_gbe_hw* %10, %struct.pch_gbe_hw** %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %18, i32 0, i32 6
  %20 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %20, i64 %22
  store %struct.pch_gbe_buffer* %23, %struct.pch_gbe_buffer** %6, align 8
  %24 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %25 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %26 = call i32 @pch_gbe_unmap_and_free_tx_resource(%struct.pch_gbe_adapter* %24, %struct.pch_gbe_buffer* %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @netdev_dbg(i32 %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %37 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = zext i32 %38 to i64
  %40 = mul i64 4, %39
  store i64 %40, i64* %7, align 8
  %41 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %41, i32 0, i32 6
  %43 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @memset(%struct.pch_gbe_buffer* %43, i32 0, i64 %44)
  %46 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %47 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %46, i32 0, i32 5
  %48 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %47, align 8
  %49 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @memset(%struct.pch_gbe_buffer* %48, i32 0, i64 %51)
  %53 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %54 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %56 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %58 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %61 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @iowrite32(i32 %59, i32* %63)
  %65 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %66 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %67, 16
  %69 = trunc i64 %68 to i32
  %70 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %71 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @iowrite32(i32 %69, i32* %73)
  ret void
}

declare dso_local i32 @pch_gbe_unmap_and_free_tx_resource(%struct.pch_gbe_adapter*, %struct.pch_gbe_buffer*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.pch_gbe_buffer*, i32, i64) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
