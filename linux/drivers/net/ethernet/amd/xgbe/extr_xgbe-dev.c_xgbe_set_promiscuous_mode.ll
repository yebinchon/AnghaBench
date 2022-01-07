; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_set_promiscuous_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_set_promiscuous_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAC_PFR = common dso_local global i32 0, align 4
@PR = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s promiscuous mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"entering\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32)* @xgbe_set_promiscuous_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_promiscuous_mode(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 1, i32 0
  store i32 %10, i32* %6, align 4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %12 = load i32, i32* @MAC_PFR, align 4
  %13 = load i32, i32* @PR, align 4
  %14 = call i32 @XGMAC_IOREAD_BITS(%struct.xgbe_prv_data* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %20 = load i32, i32* @drv, align 4
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %22 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @netif_dbg(%struct.xgbe_prv_data* %19, i32 %20, %struct.TYPE_2__* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %30 = load i32, i32* @MAC_PFR, align 4
  %31 = load i32, i32* @PR, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %38 = call i32 @xgbe_disable_rx_vlan_filtering(%struct.xgbe_prv_data* %37)
  br label %52

39:                                               ; preds = %18
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %41 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %50 = call i32 @xgbe_enable_rx_vlan_filtering(%struct.xgbe_prv_data* %49)
  br label %51

51:                                               ; preds = %48, %39
  br label %52

52:                                               ; preds = %51, %36
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @XGMAC_IOREAD_BITS(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, %struct.TYPE_2__*, i8*, i8*) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @xgbe_disable_rx_vlan_filtering(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_enable_rx_vlan_filtering(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
