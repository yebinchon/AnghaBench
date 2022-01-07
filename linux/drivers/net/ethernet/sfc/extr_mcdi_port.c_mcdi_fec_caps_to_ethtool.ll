; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_mcdi_fec_caps_to_ethtool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_mcdi_fec_caps_to_ethtool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MC_CMD_PHY_CAP_RS_FEC_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_RS_FEC_REQUESTED_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_25G_BASER_FEC_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_BASER_FEC_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_25G_BASER_FEC_REQUESTED_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_BASER_FEC_REQUESTED_LBN = common dso_local global i32 0, align 4
@ETHTOOL_FEC_OFF = common dso_local global i32 0, align 4
@ETHTOOL_FEC_RS = common dso_local global i32 0, align 4
@ETHTOOL_FEC_BASER = common dso_local global i32 0, align 4
@ETHTOOL_FEC_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mcdi_fec_caps_to_ethtool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcdi_fec_caps_to_ethtool(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MC_CMD_PHY_CAP_RS_FEC_LBN, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MC_CMD_PHY_CAP_RS_FEC_REQUESTED_LBN, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MC_CMD_PHY_CAP_25G_BASER_FEC_LBN, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MC_CMD_PHY_CAP_BASER_FEC_LBN, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %24, %20 ], [ %29, %25 ]
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MC_CMD_PHY_CAP_25G_BASER_FEC_REQUESTED_LBN, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  br label %44

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MC_CMD_PHY_CAP_BASER_FEC_REQUESTED_LBN, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i32 [ %38, %34 ], [ %43, %39 ]
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @ETHTOOL_FEC_OFF, align 4
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @ETHTOOL_FEC_RS, align 4
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @ETHTOOL_FEC_BASER, align 4
  br label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = or i32 %60, %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %79

77:                                               ; preds = %72, %66
  %78 = load i32, i32* @ETHTOOL_FEC_AUTO, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ 0, %76 ], [ %78, %77 ]
  %81 = or i32 %68, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %51
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
