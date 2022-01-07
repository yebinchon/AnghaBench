; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_ethtool_fec_caps_to_mcdi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_ethtool_fec_caps_to_mcdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETHTOOL_FEC_OFF = common dso_local global i32 0, align 4
@ETHTOOL_FEC_AUTO = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_BASER_FEC_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_25G_BASER_FEC_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_RS_FEC_LBN = common dso_local global i32 0, align 4
@ETHTOOL_FEC_RS = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_RS_FEC_REQUESTED_LBN = common dso_local global i32 0, align 4
@ETHTOOL_FEC_BASER = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_BASER_FEC_REQUESTED_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_25G_BASER_FEC_REQUESTED_LBN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ethtool_fec_caps_to_mcdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethtool_fec_caps_to_mcdi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ETHTOOL_FEC_OFF, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ETHTOOL_FEC_AUTO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i32, i32* @MC_CMD_PHY_CAP_BASER_FEC_LBN, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @MC_CMD_PHY_CAP_25G_BASER_FEC_LBN, align 4
  %19 = shl i32 1, %18
  %20 = or i32 %17, %19
  %21 = load i32, i32* @MC_CMD_PHY_CAP_RS_FEC_LBN, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %15, %10
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ETHTOOL_FEC_RS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @MC_CMD_PHY_CAP_RS_FEC_LBN, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* @MC_CMD_PHY_CAP_RS_FEC_REQUESTED_LBN, align 4
  %35 = shl i32 1, %34
  %36 = or i32 %33, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %26
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ETHTOOL_FEC_BASER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i32, i32* @MC_CMD_PHY_CAP_BASER_FEC_LBN, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* @MC_CMD_PHY_CAP_25G_BASER_FEC_LBN, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  %50 = load i32, i32* @MC_CMD_PHY_CAP_BASER_FEC_REQUESTED_LBN, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* @MC_CMD_PHY_CAP_25G_BASER_FEC_REQUESTED_LBN, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %44, %39
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %9
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
