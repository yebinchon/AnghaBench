; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_dump_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_dump_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_ring = type { i32 }
%struct.xgbe_ring_data = type { %struct.xgbe_ring_desc* }
%struct.xgbe_ring_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"TX_NORMAL_DESC[%d %s] = %08x:%08x:%08x:%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"QUEUED FOR TX\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"TX BY DEVICE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgbe_dump_tx_desc(%struct.xgbe_prv_data* %0, %struct.xgbe_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.xgbe_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xgbe_ring_data*, align 8
  %12 = alloca %struct.xgbe_ring_desc*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %6, align 8
  store %struct.xgbe_ring* %1, %struct.xgbe_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %13

13:                                               ; preds = %17, %5
  %14 = load i32, i32* %9, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %18, i32 %19)
  store %struct.xgbe_ring_data* %20, %struct.xgbe_ring_data** %11, align 8
  %21 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %11, align 8
  %22 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %21, i32 0, i32 0
  %23 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %22, align 8
  store %struct.xgbe_ring_desc* %23, %struct.xgbe_ring_desc** %12, align 8
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %25 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %12, align 8
  %33 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %12, align 8
  %37 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %12, align 8
  %41 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %12, align 8
  %45 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = call i32 @netdev_dbg(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %31, i32 %35, i32 %39, i32 %43, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %13

51:                                               ; preds = %13
  ret void
}

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
