; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32 }
%struct.xgbe_ring = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"rdesc=%p, rdesc_dma=%pad, rdata=%p, node=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, %struct.xgbe_ring*, i32)* @xgbe_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_init_ring(%struct.xgbe_prv_data* %0, %struct.xgbe_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca %struct.xgbe_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %5, align 8
  store %struct.xgbe_ring* %1, %struct.xgbe_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %10 = icmp ne %struct.xgbe_ring* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, 4
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %18 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %24 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %23, i32 0, i32 3
  %25 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %26 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xgbe_dma_alloc_node(i32 %21, i64 %22, i32* %24, i32 %27)
  %29 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %30 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %32 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %12
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %74

38:                                               ; preds = %12
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, 4
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %44 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xgbe_alloc_node(i64 %42, i32 %45)
  %47 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %48 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %50 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %74

56:                                               ; preds = %38
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %58 = load i32, i32* @drv, align 4
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %60 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %63 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %66 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %65, i32 0, i32 3
  %67 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %68 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %71 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @netif_dbg(%struct.xgbe_prv_data* %57, i32 %58, i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %64, i32* %66, i32 %69, i32 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %56, %53, %35, %11
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @xgbe_dma_alloc_node(i32, i64, i32*, i32) #1

declare dso_local i32 @xgbe_alloc_node(i64, i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
