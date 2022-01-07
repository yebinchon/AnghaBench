; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_port_free_tx_bufs_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_port_free_tx_bufs_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32, i32, i64, i64, i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.vio_net_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VNET_TX_RING_SIZE = common dso_local global i32 0, align 4
@VIO_DESC_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunvnet_port_free_tx_bufs_common(%struct.vnet_port* %0) #0 {
  %2 = alloca %struct.vnet_port*, align 8
  %3 = alloca %struct.vio_dring_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vio_net_desc*, align 8
  %6 = alloca i8*, align 8
  store %struct.vnet_port* %0, %struct.vnet_port** %2, align 8
  %7 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %8 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.vio_dring_state*, %struct.vio_dring_state** %9, align 8
  %11 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %12 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %10, i64 %11
  store %struct.vio_dring_state* %12, %struct.vio_dring_state** %3, align 8
  %13 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %14 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %109

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %74, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @VNET_TX_RING_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  %24 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %25 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %74

36:                                               ; preds = %23
  %37 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call %struct.vio_net_desc* @vio_dring_entry(%struct.vio_dring_state* %37, i32 %38)
  store %struct.vio_net_desc* %39, %struct.vio_net_desc** %5, align 8
  %40 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %41 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %45 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %53 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ldc_unmap(i32 %43, i32 %51, i32 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @dev_kfree_skb(i8* %61)
  %63 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %64 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* @VIO_DESC_FREE, align 4
  %71 = load %struct.vio_net_desc*, %struct.vio_net_desc** %5, align 8
  %72 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %36, %35
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %19

77:                                               ; preds = %19
  %78 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %79 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %83 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %86 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %89 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %93 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %96 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ldc_free_exp_dring(i32 %81, i32* %84, i32 %91, i32 %94, i64 %97)
  %99 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %100 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  %101 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %102 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %104 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %106 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %108 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %77, %17
  ret void
}

declare dso_local %struct.vio_net_desc* @vio_dring_entry(%struct.vio_dring_state*, i32) #1

declare dso_local i32 @ldc_unmap(i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i8*) #1

declare dso_local i32 @ldc_free_exp_dring(i32, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
