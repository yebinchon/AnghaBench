; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_ieee_get_pfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_ieee_get_pfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_pfc = type { i32, i32 }
%struct.port_info = type { %struct.port_dcb_info }
%struct.port_dcb_info = type { i32, i32, i32 }

@CXGB4_DCB_FW_PFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_pfc*)* @cxgb4_ieee_get_pfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_ieee_get_pfc(%struct.net_device* %0, %struct.ieee_pfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_pfc*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.port_dcb_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_pfc* %1, %struct.ieee_pfc** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %6, align 8
  %10 = load %struct.port_info*, %struct.port_info** %6, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 0
  store %struct.port_dcb_info* %11, %struct.port_dcb_info** %7, align 8
  %12 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %13 = call i32 @memset(%struct.ieee_pfc* %12, i32 0, i32 8)
  %14 = load %struct.port_dcb_info*, %struct.port_dcb_info** %7, align 8
  %15 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CXGB4_DCB_FW_PFC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.port_dcb_info*, %struct.port_dcb_info** %7, align 8
  %23 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %26 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.port_dcb_info*, %struct.port_dcb_info** %7, align 8
  %28 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bitswap_1(i32 %29)
  %31 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %32 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %21, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ieee_pfc*, i32, i32) #1

declare dso_local i32 @bitswap_1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
