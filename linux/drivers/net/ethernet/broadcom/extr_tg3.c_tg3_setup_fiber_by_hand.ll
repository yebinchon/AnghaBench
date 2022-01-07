; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_setup_fiber_by_hand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_setup_fiber_by_hand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MAC_STATUS_PCS_SYNCED = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ANEG_CFG_PS1 = common dso_local global i32 0, align 4
@ADVERTISE_1000XPAUSE = common dso_local global i32 0, align 4
@ANEG_CFG_PS2 = common dso_local global i32 0, align 4
@ADVERTISE_1000XPSE_ASYM = common dso_local global i32 0, align 4
@MR_LP_ADV_SYM_PAUSE = common dso_local global i32 0, align 4
@LPA_1000XPAUSE = common dso_local global i32 0, align 4
@MR_LP_ADV_ASYM_PAUSE = common dso_local global i32 0, align 4
@LPA_1000XPAUSE_ASYM = common dso_local global i32 0, align 4
@MAC_STATUS = common dso_local global i32 0, align 4
@MAC_STATUS_SYNC_CHANGED = common dso_local global i32 0, align 4
@MAC_STATUS_CFG_CHANGED = common dso_local global i32 0, align 4
@MAC_STATUS_RCVD_CFG = common dso_local global i32 0, align 4
@MAC_MODE = common dso_local global i32 0, align 4
@MAC_MODE_SEND_CONFIGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_setup_fiber_by_hand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_setup_fiber_by_hand(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAC_STATUS_PCS_SYNCED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %132

16:                                               ; preds = %2
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = getelementptr inbounds %struct.tg3, %struct.tg3* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AUTONEG_ENABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %114

23:                                               ; preds = %16
  %24 = load %struct.tg3*, %struct.tg3** %3, align 8
  %25 = call i64 @fiber_autoneg(%struct.tg3* %24, i32* %6, i32* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ANEG_CFG_PS1, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ANEG_CFG_PS2, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MR_LP_ADV_SYM_PAUSE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @LPA_1000XPAUSE, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MR_LP_ADV_ASYM_PAUSE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @LPA_1000XPAUSE_ASYM, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @mii_adv_to_ethtool_adv_x(i32 %64)
  %66 = load %struct.tg3*, %struct.tg3** %3, align 8
  %67 = getelementptr inbounds %struct.tg3, %struct.tg3* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.tg3*, %struct.tg3** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @tg3_setup_flow_control(%struct.tg3* %69, i32 %70, i32 %71)
  store i32 1, i32* %5, align 4
  br label %73

73:                                               ; preds = %63, %23
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %94, %73
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 30
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = call i32 @udelay(i32 20)
  %79 = load i32, i32* @MAC_STATUS, align 4
  %80 = load i32, i32* @MAC_STATUS_SYNC_CHANGED, align 4
  %81 = load i32, i32* @MAC_STATUS_CFG_CHANGED, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @tw32_f(i32 %79, i32 %82)
  %84 = call i32 @udelay(i32 40)
  %85 = load i32, i32* @MAC_STATUS, align 4
  %86 = call i32 @tr32(i32 %85)
  %87 = load i32, i32* @MAC_STATUS_SYNC_CHANGED, align 4
  %88 = load i32, i32* @MAC_STATUS_CFG_CHANGED, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  br label %97

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %74

97:                                               ; preds = %92, %74
  %98 = load i32, i32* @MAC_STATUS, align 4
  %99 = call i32 @tr32(i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @MAC_STATUS_PCS_SYNCED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @MAC_STATUS_RCVD_CFG, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  store i32 1, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %107, %102, %97
  br label %131

114:                                              ; preds = %16
  %115 = load %struct.tg3*, %struct.tg3** %3, align 8
  %116 = call i32 @tg3_setup_flow_control(%struct.tg3* %115, i32 0, i32 0)
  store i32 1, i32* %5, align 4
  %117 = load i32, i32* @MAC_MODE, align 4
  %118 = load %struct.tg3*, %struct.tg3** %3, align 8
  %119 = getelementptr inbounds %struct.tg3, %struct.tg3* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @MAC_MODE_SEND_CONFIGS, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @tw32_f(i32 %117, i32 %122)
  %124 = call i32 @udelay(i32 40)
  %125 = load i32, i32* @MAC_MODE, align 4
  %126 = load %struct.tg3*, %struct.tg3** %3, align 8
  %127 = getelementptr inbounds %struct.tg3, %struct.tg3* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @tw32_f(i32 %125, i32 %128)
  %130 = call i32 @udelay(i32 40)
  br label %131

131:                                              ; preds = %114, %113
  br label %132

132:                                              ; preds = %131, %15
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i64 @fiber_autoneg(%struct.tg3*, i32*, i32*) #1

declare dso_local i32 @mii_adv_to_ethtool_adv_x(i32) #1

declare dso_local i32 @tg3_setup_flow_control(%struct.tg3*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @tr32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
