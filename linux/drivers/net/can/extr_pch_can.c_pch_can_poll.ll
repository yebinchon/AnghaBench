; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.pch_can_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCH_STATUS_INT = common dso_local global i64 0, align 8
@PCH_BUS_OFF = common dso_local global i64 0, align 8
@PCH_LEC_ALL = common dso_local global i64 0, align 8
@PCH_TX_OK = common dso_local global i64 0, align 8
@PCH_RX_OK = common dso_local global i64 0, align 8
@PCH_RX_OBJ_START = common dso_local global i64 0, align 8
@PCH_RX_OBJ_END = common dso_local global i64 0, align 8
@PCH_TX_OBJ_START = common dso_local global i64 0, align 8
@PCH_TX_OBJ_END = common dso_local global i64 0, align 8
@PCH_CAN_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @pch_can_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_can_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pch_can_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.pch_can_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.pch_can_priv* %14, %struct.pch_can_priv** %6, align 8
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %17 = call i64 @pch_can_int_pending(%struct.pch_can_priv* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %105

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @PCH_STATUS_INT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  %26 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %27 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i64 @ioread32(i32* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @PCH_BUS_OFF, align 8
  %33 = load i64, i64* @PCH_LEC_ALL, align 8
  %34 = or i64 %32, %33
  %35 = and i64 %31, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %25
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @PCH_LEC_ALL, align 8
  %40 = and i64 %38, %39
  %41 = load i64, i64* @PCH_LEC_ALL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @pch_can_error(%struct.net_device* %44, i64 %45)
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %37, %25
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @PCH_TX_OK, align 8
  %52 = load i64, i64* @PCH_RX_OK, align 8
  %53 = or i64 %51, %52
  %54 = and i64 %50, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %58 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @PCH_TX_OK, align 8
  %63 = load i64, i64* @PCH_RX_OK, align 8
  %64 = or i64 %62, %63
  %65 = and i64 %61, %64
  %66 = call i32 @pch_can_bit_clear(i32* %60, i64 %65)
  br label %67

67:                                               ; preds = %56, %49
  %68 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %69 = call i64 @pch_can_int_pending(%struct.pch_can_priv* %68)
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %67, %21
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %105

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @PCH_RX_OBJ_START, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @PCH_RX_OBJ_END, align 8
  %81 = icmp sle i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i64 @pch_can_rx_normal(%struct.net_device* %83, i64 %84, i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %104

91:                                               ; preds = %78, %74
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @PCH_TX_OBJ_START, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @PCH_TX_OBJ_END, align 8
  %98 = icmp sle i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.net_device*, %struct.net_device** %5, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @pch_can_tx_complete(%struct.net_device* %100, i64 %101)
  br label %103

103:                                              ; preds = %99, %95, %91
  br label %104

104:                                              ; preds = %103, %82
  br label %105

105:                                              ; preds = %104, %73, %20
  %106 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %107 = call i32 @napi_complete(%struct.napi_struct* %106)
  %108 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %109 = load i32, i32* @PCH_CAN_ALL, align 4
  %110 = call i32 @pch_can_set_int_enables(%struct.pch_can_priv* %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %4, align 4
  %113 = sub nsw i32 %111, %112
  ret i32 %113
}

declare dso_local %struct.pch_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pch_can_int_pending(%struct.pch_can_priv*) #1

declare dso_local i64 @ioread32(i32*) #1

declare dso_local i32 @pch_can_error(%struct.net_device*, i64) #1

declare dso_local i32 @pch_can_bit_clear(i32*, i64) #1

declare dso_local i64 @pch_can_rx_normal(%struct.net_device*, i64, i32) #1

declare dso_local i32 @pch_can_tx_complete(%struct.net_device*, i64) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @pch_can_set_int_enables(%struct.pch_can_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
