; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }
%struct.vnet_port = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32 }
%struct.vio_net_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VNET_TX_RING_SIZE = common dso_local global i32 0, align 4
@VIO_DESC_READY = common dso_local global i64 0, align 8
@VIO_DESC_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"invalid ring buffer state %d\0A\00", align 1
@VIO_DESC_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.vnet_port*, i32*)* @vnet_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @vnet_clean_tx_ring(%struct.vnet_port* %0, i32* %1) #0 {
  %3 = alloca %struct.vnet_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vio_dring_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vio_net_desc*, align 8
  store %struct.vnet_port* %0, %struct.vnet_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %11 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.vio_dring_state*, %struct.vio_dring_state** %12, align 8
  %14 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %15 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %13, i64 %14
  store %struct.vio_dring_state* %15, %struct.vio_dring_state** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %16 = load i32*, i32** %4, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.vio_dring_state*, %struct.vio_dring_state** %5, align 8
  %18 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %141, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @VNET_TX_RING_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %144

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @VNET_TX_RING_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.vio_dring_state*, %struct.vio_dring_state** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.vio_net_desc* @vio_dring_entry(%struct.vio_dring_state* %33, i32 %34)
  store %struct.vio_net_desc* %35, %struct.vio_net_desc** %9, align 8
  %36 = load %struct.vio_net_desc*, %struct.vio_net_desc** %9, align 8
  %37 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VIO_DESC_READY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %141

46:                                               ; preds = %32
  %47 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %48 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %56, label %127

56:                                               ; preds = %46
  %57 = load %struct.vio_net_desc*, %struct.vio_net_desc** %9, align 8
  %58 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VIO_DESC_DONE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.vio_net_desc*, %struct.vio_net_desc** %9, align 8
  %65 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @pr_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %71 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load %struct.sk_buff*, %struct.sk_buff** %76, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = call i32 @BUG_ON(%struct.sk_buff* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %83 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  store %struct.sk_buff* %81, %struct.sk_buff** %90, align 8
  %91 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %92 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load %struct.sk_buff*, %struct.sk_buff** %97, align 8
  store %struct.sk_buff* %98, %struct.sk_buff** %6, align 8
  %99 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %100 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %105, align 8
  %106 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %107 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %111 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %119 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ldc_unmap(i32 %109, i32 %117, i32 %125)
  br label %136

127:                                              ; preds = %46
  %128 = load %struct.vio_net_desc*, %struct.vio_net_desc** %9, align 8
  %129 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @VIO_DESC_FREE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %144

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %69
  %137 = load i64, i64* @VIO_DESC_FREE, align 8
  %138 = load %struct.vio_net_desc*, %struct.vio_net_desc** %9, align 8
  %139 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i64 %137, i64* %140, align 8
  br label %141

141:                                              ; preds = %136, %42
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %20

144:                                              ; preds = %134, %20
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %145
}

declare dso_local %struct.vio_net_desc* @vio_dring_entry(%struct.vio_dring_state*, i32) #1

declare dso_local i32 @pr_notice(i8*, i64) #1

declare dso_local i32 @BUG_ON(%struct.sk_buff*) #1

declare dso_local i32 @ldc_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
