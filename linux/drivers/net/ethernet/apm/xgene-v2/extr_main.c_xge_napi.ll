; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.xge_pdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @xge_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xge_napi(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xge_pdata*, align 8
  %7 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %9 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %11)
  store %struct.xge_pdata* %12, %struct.xge_pdata** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @xge_txc_poll(%struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @xge_rx_poll(%struct.net_device* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @napi_complete_done(%struct.napi_struct* %22, i32 %23)
  %25 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %26 = call i32 @xge_intr_enable(%struct.xge_pdata* %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xge_txc_poll(%struct.net_device*) #1

declare dso_local i32 @xge_rx_poll(%struct.net_device*, i32) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @xge_intr_enable(%struct.xge_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
