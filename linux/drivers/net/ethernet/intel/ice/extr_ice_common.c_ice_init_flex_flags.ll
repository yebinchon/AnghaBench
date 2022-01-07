; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_init_flex_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_init_flex_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }

@ICE_FLG_PKT_FRG = common dso_local global i32 0, align 4
@ICE_FLG_UDP_GRE = common dso_local global i32 0, align 4
@ICE_FLG_PKT_DSI = common dso_local global i32 0, align 4
@ICE_FLG_FIN = common dso_local global i32 0, align 4
@ICE_FLG_SYN = common dso_local global i32 0, align 4
@ICE_FLG_RST = common dso_local global i32 0, align 4
@ICE_FLG_EVLAN_x8100 = common dso_local global i32 0, align 4
@ICE_FLG_EVLAN_x9100 = common dso_local global i32 0, align 4
@ICE_FLG_VLAN_x8100 = common dso_local global i32 0, align 4
@ICE_FLG_TNL_VLAN = common dso_local global i32 0, align 4
@ICE_FLG_TNL_MAC = common dso_local global i32 0, align 4
@ICE_FLG_TNL0 = common dso_local global i32 0, align 4
@ICE_FLG_TNL1 = common dso_local global i32 0, align 4
@ICE_FLG_TNL2 = common dso_local global i32 0, align 4
@ICE_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Flag programming for profile ID %d not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, i32)* @ice_init_flex_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_init_flex_flags(%struct.ice_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %52 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ICE_FLG_PKT_FRG, align 4
  %11 = load i32, i32* @ICE_FLG_UDP_GRE, align 4
  %12 = load i32, i32* @ICE_FLG_PKT_DSI, align 4
  %13 = load i32, i32* @ICE_FLG_FIN, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = call i32 @ICE_PROG_FLG_ENTRY(%struct.ice_hw* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14)
  %17 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ICE_FLG_SYN, align 4
  %20 = load i32, i32* @ICE_FLG_RST, align 4
  %21 = load i32, i32* @ICE_FLG_PKT_DSI, align 4
  %22 = load i32, i32* @ICE_FLG_PKT_DSI, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = call i32 @ICE_PROG_FLG_ENTRY(%struct.ice_hw* %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %26 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ICE_FLG_PKT_DSI, align 4
  %29 = load i32, i32* @ICE_FLG_PKT_DSI, align 4
  %30 = load i32, i32* @ICE_FLG_EVLAN_x8100, align 4
  %31 = load i32, i32* @ICE_FLG_EVLAN_x9100, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = call i32 @ICE_PROG_FLG_ENTRY(%struct.ice_hw* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %35 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ICE_FLG_VLAN_x8100, align 4
  %38 = load i32, i32* @ICE_FLG_TNL_VLAN, align 4
  %39 = load i32, i32* @ICE_FLG_TNL_MAC, align 4
  %40 = load i32, i32* @ICE_FLG_TNL0, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = call i32 @ICE_PROG_FLG_ENTRY(%struct.ice_hw* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %44 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ICE_FLG_TNL1, align 4
  %47 = load i32, i32* @ICE_FLG_TNL2, align 4
  %48 = load i32, i32* @ICE_FLG_PKT_DSI, align 4
  %49 = load i32, i32* @ICE_FLG_PKT_DSI, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ICE_PROG_FLG_ENTRY(%struct.ice_hw* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  br label %57

52:                                               ; preds = %2
  %53 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %54 = load i32, i32* @ICE_DBG_INIT, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ice_debug(%struct.ice_hw* %53, i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %7
  ret void
}

declare dso_local i32 @ICE_PROG_FLG_ENTRY(%struct.ice_hw*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
