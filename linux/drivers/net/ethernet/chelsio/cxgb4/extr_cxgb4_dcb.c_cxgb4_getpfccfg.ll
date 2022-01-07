; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getpfccfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getpfccfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { %struct.port_dcb_info }
%struct.port_dcb_info = type { i32, i32 }

@CXGB4_MAX_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @cxgb4_getpfccfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_getpfccfg(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.port_dcb_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %9)
  store %struct.port_info* %10, %struct.port_info** %7, align 8
  %11 = load %struct.port_info*, %struct.port_info** %7, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 0
  store %struct.port_dcb_info* %12, %struct.port_dcb_info** %8, align 8
  %13 = load %struct.port_dcb_info*, %struct.port_dcb_info** %8, align 8
  %14 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cxgb4_dcb_state_synced(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @CXGB4_MAX_PRIORITY, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %3
  %23 = load i32*, i32** %6, align 8
  store i32 0, i32* %23, align 4
  br label %34

24:                                               ; preds = %18
  %25 = load %struct.port_info*, %struct.port_info** %7, align 8
  %26 = getelementptr inbounds %struct.port_info, %struct.port_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 7, %29
  %31 = ashr i32 %28, %30
  %32 = and i32 %31, 1
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %22
  ret void
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @cxgb4_dcb_state_synced(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
