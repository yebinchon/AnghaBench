; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, %struct.ixgb_desc_ring }
%struct.ixgb_desc_ring = type { i32, i64, i64, i64, %struct.ixgb_buffer*, %struct.ixgb_buffer* }
%struct.ixgb_buffer = type { i32 }

@TDH = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_adapter*)* @ixgb_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_clean_tx_ring(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca %struct.ixgb_desc_ring*, align 8
  %4 = alloca %struct.ixgb_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %7 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %7, i32 0, i32 1
  store %struct.ixgb_desc_ring* %8, %struct.ixgb_desc_ring** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %12 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %17 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %16, i32 0, i32 5
  %18 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %18, i64 %20
  store %struct.ixgb_buffer* %21, %struct.ixgb_buffer** %4, align 8
  %22 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %23 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %4, align 8
  %24 = call i32 @ixgb_unmap_and_free_tx_resource(%struct.ixgb_adapter* %22, %struct.ixgb_buffer* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %30 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = zext i32 %31 to i64
  %33 = mul i64 4, %32
  store i64 %33, i64* %5, align 8
  %34 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %35 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %34, i32 0, i32 5
  %36 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @memset(%struct.ixgb_buffer* %36, i32 0, i64 %37)
  %39 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %40 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %39, i32 0, i32 4
  %41 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %40, align 8
  %42 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %43 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memset(%struct.ixgb_buffer* %41, i32 0, i64 %44)
  %46 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %47 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %49 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* @TDH, align 4
  %53 = call i32 @IXGB_WRITE_REG(i32* %51, i32 %52, i32 0)
  %54 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* @TDT, align 4
  %57 = call i32 @IXGB_WRITE_REG(i32* %55, i32 %56, i32 0)
  ret void
}

declare dso_local i32 @ixgb_unmap_and_free_tx_resource(%struct.ixgb_adapter*, %struct.ixgb_buffer*) #1

declare dso_local i32 @memset(%struct.ixgb_buffer*, i32, i64) #1

declare dso_local i32 @IXGB_WRITE_REG(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
