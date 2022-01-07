; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_port_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_port_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i64, i64, i64, i32, i64, i64, i8*, i32 }
%struct.vio_net_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VNET_TX_RING_SIZE = common dso_local global i64 0, align 8
@VIO_MAX_RING_COOKIES = common dso_local global i32 0, align 4
@LDC_MAP_SHADOW = common dso_local global i32 0, align 4
@LDC_MAP_DIRECT = common dso_local global i32 0, align 4
@LDC_MAP_RW = common dso_local global i32 0, align 4
@VIO_DESC_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*)* @vnet_port_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_port_alloc_tx_ring(%struct.vnet_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnet_port*, align 8
  %4 = alloca %struct.vio_dring_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vio_net_desc*, align 8
  store %struct.vnet_port* %0, %struct.vnet_port** %3, align 8
  %12 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %13 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.vio_dring_state*, %struct.vio_dring_state** %14, align 8
  %16 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %17 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %15, i64 %16
  store %struct.vio_dring_state* %17, %struct.vio_dring_state** %4, align 8
  store i64 12, i64* %6, align 8
  %18 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %19 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %18, i32 0, i32 1
  %20 = call i64 @vio_version_after_eq(%struct.TYPE_4__* %19, i32 1, i32 7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 4
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i64, i64* @VNET_TX_RING_SIZE, align 8
  %27 = load i64, i64* %6, align 8
  %28 = mul i64 %26, %27
  store i64 %28, i64* %5, align 8
  %29 = load i32, i32* @VIO_MAX_RING_COOKIES, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %31 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %36 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @LDC_MAP_SHADOW, align 4
  %39 = load i32, i32* @LDC_MAP_DIRECT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @LDC_MAP_RW, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @ldc_alloc_exp_dring(i32 %33, i64 %34, i32 %37, i32* %9, i32 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %25
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %8, align 4
  br label %89

50:                                               ; preds = %25
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %53 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %56 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* @VNET_TX_RING_SIZE, align 8
  %58 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %59 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %61 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %63 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %65 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i64, i64* @VNET_TX_RING_SIZE, align 8
  %67 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %68 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %71 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %85, %50
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @VNET_TX_RING_SIZE, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call %struct.vio_net_desc* @vio_dring_entry(%struct.vio_dring_state* %78, i32 %79)
  store %struct.vio_net_desc* %80, %struct.vio_net_desc** %11, align 8
  %81 = load i32, i32* @VIO_DESC_FREE, align 4
  %82 = load %struct.vio_net_desc*, %struct.vio_net_desc** %11, align 8
  %83 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %72

88:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %93

89:                                               ; preds = %47
  %90 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %91 = call i32 @sunvnet_port_free_tx_bufs_common(%struct.vnet_port* %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %88
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @vio_version_after_eq(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @ldc_alloc_exp_dring(i32, i64, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.vio_net_desc* @vio_dring_entry(%struct.vio_dring_state*, i32) #1

declare dso_local i32 @sunvnet_port_free_tx_bufs_common(%struct.vnet_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
