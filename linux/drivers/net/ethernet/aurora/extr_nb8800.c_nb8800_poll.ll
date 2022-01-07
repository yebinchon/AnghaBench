; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.nb8800_priv = type { i32, %struct.nb8800_rx_desc*, i32 }
%struct.nb8800_rx_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RX_DESC_COUNT = common dso_local global i32 0, align 4
@RX_MULTICAST_PKT = common dso_local global i32 0, align 4
@DESC_EOC = common dso_local global i32 0, align 4
@NB8800_RX_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @nb8800_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb8800_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nb8800_priv*, align 8
  %7 = alloca %struct.nb8800_rx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %13 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.nb8800_priv* %16, %struct.nb8800_priv** %6, align 8
  %17 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %18 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @nb8800_tx_done(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %149, %2
  br label %23

23:                                               ; preds = %90, %22
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %24, 1
  %26 = load i32, i32* @RX_DESC_COUNT, align 4
  %27 = urem i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %29 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %28, i32 0, i32 1
  %30 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %30, i64 %32
  store %struct.nb8800_rx_desc* %33, %struct.nb8800_rx_desc** %7, align 8
  %34 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %7, align 8
  %35 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %23
  br label %94

39:                                               ; preds = %23
  %40 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %7, align 8
  %41 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @RX_BYTES_TRANSFERRED(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %7, align 8
  %45 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_RX_ERROR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %7, align 8
  %52 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @nb8800_rx_error(%struct.net_device* %50, i32 %53)
  br label %60

55:                                               ; preds = %39
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @nb8800_receive(%struct.net_device* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %7, align 8
  %73 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RX_MULTICAST_PKT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %60
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %60
  %85 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %7, align 8
  %86 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %85, i32 0, i32 0
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %23, label %94

94:                                               ; preds = %90, %38
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %129

97:                                               ; preds = %94
  %98 = load i32, i32* @DESC_EOC, align 4
  %99 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %100 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %99, i32 0, i32 1
  %101 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %101, i64 %103
  %105 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %98
  store i32 %108, i32* %106, align 4
  %109 = call i32 (...) @wmb()
  %110 = load i32, i32* @DESC_EOC, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %113 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %112, i32 0, i32 1
  %114 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %113, align 8
  %115 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %116 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %114, i64 %118
  %120 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %111
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %126 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = call i32 @nb8800_start_rx(%struct.net_device* %127)
  br label %129

129:                                              ; preds = %97, %94
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %129
  %134 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %135 = load i32, i32* @NB8800_RX_ITR, align 4
  %136 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %137 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @nb8800_writel(%struct.nb8800_priv* %134, i32 %135, i32 %138)
  %140 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %141 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %140, i32 0, i32 1
  %142 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %142, i64 %144
  %146 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %133
  br label %22

150:                                              ; preds = %133
  %151 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @napi_complete_done(%struct.napi_struct* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %129
  %155 = load i32, i32* %10, align 4
  ret i32 %155
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nb8800_tx_done(%struct.net_device*) #1

declare dso_local i32 @RX_BYTES_TRANSFERRED(i32) #1

declare dso_local i64 @IS_RX_ERROR(i32) #1

declare dso_local i32 @nb8800_rx_error(%struct.net_device*, i32) #1

declare dso_local i32 @nb8800_receive(%struct.net_device*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @nb8800_start_rx(%struct.net_device*) #1

declare dso_local i32 @nb8800_writel(%struct.nb8800_priv*, i32, i32) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
