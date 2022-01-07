; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_set_port_config_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_set_port_config_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168_eth_private = type { i32 }

@PCXR_MFL_1518 = common dso_local global i32 0, align 4
@PCXR_MFL_1536 = common dso_local global i32 0, align 4
@PCXR_MFL_2048 = common dso_local global i32 0, align 4
@PCXR_MFL_64K = common dso_local global i32 0, align 4
@PORT_CONFIG_EXT = common dso_local global i32 0, align 4
@PCXR_AN_SPEED_DIS = common dso_local global i32 0, align 4
@PCXR_AN_DUPLEX_DIS = common dso_local global i32 0, align 4
@PCXR_AN_FLOWCTL_DIS = common dso_local global i32 0, align 4
@PCXR_2BSM = common dso_local global i32 0, align 4
@PCXR_DSCP_EN = common dso_local global i32 0, align 4
@PCXR_FLP = common dso_local global i32 0, align 4
@PCXR_TX_HIGH_PRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa168_eth_private*)* @set_port_config_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_port_config_ext(%struct.pxa168_eth_private* %0) #0 {
  %2 = alloca %struct.pxa168_eth_private*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa168_eth_private* %0, %struct.pxa168_eth_private** %2, align 8
  %4 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %5 = call i32 @pxa168_eth_recalc_skb_size(%struct.pxa168_eth_private* %4)
  %6 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %7 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %8, 1518
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @PCXR_MFL_1518, align 4
  store i32 %11, i32* %3, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %14 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 %15, 1536
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @PCXR_MFL_1536, align 4
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %12
  %20 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %21 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %22, 2048
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @PCXR_MFL_2048, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @PCXR_MFL_64K, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %17
  br label %30

30:                                               ; preds = %29, %10
  %31 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %32 = load i32, i32* @PORT_CONFIG_EXT, align 4
  %33 = load i32, i32* @PCXR_AN_SPEED_DIS, align 4
  %34 = load i32, i32* @PCXR_AN_DUPLEX_DIS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PCXR_AN_FLOWCTL_DIS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PCXR_2BSM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PCXR_DSCP_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PCXR_FLP, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PCXR_TX_HIGH_PRI, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @wrl(%struct.pxa168_eth_private* %31, i32 %32, i32 %47)
  ret i32 0
}

declare dso_local i32 @pxa168_eth_recalc_skb_size(%struct.pxa168_eth_private*) #1

declare dso_local i32 @wrl(%struct.pxa168_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
