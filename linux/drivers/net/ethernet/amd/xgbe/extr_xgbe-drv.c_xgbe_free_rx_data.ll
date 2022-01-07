; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_free_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_free_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.TYPE_2__**, %struct.xgbe_desc_if }
%struct.TYPE_2__ = type { %struct.xgbe_ring* }
%struct.xgbe_ring = type { i32 }
%struct.xgbe_desc_if = type { i32 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring_data*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_ring_data = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"-->xgbe_free_rx_data\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"<--xgbe_free_rx_data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_free_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_free_rx_data(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_desc_if*, align 8
  %4 = alloca %struct.xgbe_ring*, align 8
  %5 = alloca %struct.xgbe_ring_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 2
  store %struct.xgbe_desc_if* %9, %struct.xgbe_desc_if** %3, align 8
  %10 = call i32 @DBGPR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %52, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.xgbe_ring*, %struct.xgbe_ring** %25, align 8
  store %struct.xgbe_ring* %26, %struct.xgbe_ring** %4, align 8
  %27 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %28 = icmp ne %struct.xgbe_ring* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %55

30:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %34 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %38, i32 %39)
  store %struct.xgbe_ring_data* %40, %struct.xgbe_ring_data** %5, align 8
  %41 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %3, align 8
  %42 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %41, i32 0, i32 0
  %43 = load i32 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring_data*)*, i32 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring_data*)** %42, align 8
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %45 = bitcast %struct.xgbe_prv_data* %44 to %struct.xgbe_prv_data.0*
  %46 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %47 = call i32 %43(%struct.xgbe_prv_data.0* %45, %struct.xgbe_ring_data* %46)
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %31

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %11

55:                                               ; preds = %29, %11
  %56 = call i32 @DBGPR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
