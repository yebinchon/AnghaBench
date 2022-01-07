; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_xmac_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_xmac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.TYPE_2__*, %struct.bnx2x* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64, i32, i32, i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"enabling XMAC\0A\00", align 1
@GRCBASE_XMAC1 = common dso_local global i32 0, align 4
@GRCBASE_XMAC0 = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_EMAC0_PORT = common dso_local global i32 0, align 4
@INT_PHY = common dso_local global i64 0, align 8
@FLAGS_TX_ERROR_CHECK = common dso_local global i32 0, align 4
@XMAC_REG_RX_LSS_CTRL = common dso_local global i32 0, align 4
@XMAC_RX_LSS_CTRL_REG_LOCAL_FAULT_DISABLE = common dso_local global i32 0, align 4
@XMAC_RX_LSS_CTRL_REG_REMOTE_FAULT_DISABLE = common dso_local global i32 0, align 4
@XMAC_REG_CLEAR_RX_LSS_STATUS = common dso_local global i32 0, align 4
@XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS = common dso_local global i32 0, align 4
@XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS = common dso_local global i32 0, align 4
@XMAC_REG_RX_MAX_SIZE = common dso_local global i32 0, align 4
@XMAC_REG_TX_CTRL = common dso_local global i32 0, align 4
@SHMEM_EEE_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Setting XMAC for EEE\0A\00", align 1
@XMAC_REG_EEE_TIMERS_HI = common dso_local global i32 0, align 4
@XMAC_REG_EEE_CTRL = common dso_local global i32 0, align 4
@XMAC_CTRL_REG_TX_EN = common dso_local global i32 0, align 4
@XMAC_CTRL_REG_RX_EN = common dso_local global i32 0, align 4
@SPEED_20000 = common dso_local global i64 0, align 8
@SUPPORTED_20000baseKR2_Full = common dso_local global i32 0, align 4
@XMAC_CTRL_REG_XLGMII_ALIGN_ENB = common dso_local global i32 0, align 4
@XMAC_CTRL_REG_LINE_LOCAL_LPBK = common dso_local global i32 0, align 4
@XMAC_REG_CTRL = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@MAC_TYPE_XMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.link_vars*, i64)* @bnx2x_xmac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_xmac_enable(%struct.link_params* %0, %struct.link_vars* %1, i64 %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.link_params*, %struct.link_params** %4, align 8
  %11 = getelementptr inbounds %struct.link_params, %struct.link_params* %10, i32 0, i32 2
  %12 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  store %struct.bnx2x* %12, %struct.bnx2x** %9, align 8
  %13 = load i32, i32* @NETIF_MSG_LINK, align 4
  %14 = call i32 @DP(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.link_params*, %struct.link_params** %4, align 8
  %16 = getelementptr inbounds %struct.link_params, %struct.link_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @GRCBASE_XMAC1, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @GRCBASE_XMAC0, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  %25 = load %struct.link_params*, %struct.link_params** %4, align 8
  %26 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %27 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bnx2x_xmac_init(%struct.link_params* %25, i64 %28)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %31 = load i32, i32* @NIG_REG_EGRESS_EMAC0_PORT, align 4
  %32 = load %struct.link_params*, %struct.link_params** %4, align 8
  %33 = getelementptr inbounds %struct.link_params, %struct.link_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 4
  %36 = add nsw i32 %31, %35
  %37 = call i32 @REG_WR(%struct.bnx2x* %30, i32 %36, i32 0)
  %38 = load %struct.link_params*, %struct.link_params** %4, align 8
  %39 = getelementptr inbounds %struct.link_params, %struct.link_params* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @INT_PHY, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FLAGS_TX_ERROR_CHECK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %23
  %49 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @XMAC_REG_RX_LSS_CTRL, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @XMAC_RX_LSS_CTRL_REG_LOCAL_FAULT_DISABLE, align 4
  %54 = load i32, i32* @XMAC_RX_LSS_CTRL_REG_REMOTE_FAULT_DISABLE, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @REG_WR(%struct.bnx2x* %49, i32 %52, i32 %55)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @XMAC_REG_CLEAR_RX_LSS_STATUS, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @REG_WR(%struct.bnx2x* %57, i32 %60, i32 0)
  %62 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @XMAC_REG_CLEAR_RX_LSS_STATUS, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS, align 4
  %67 = load i32, i32* @XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @REG_WR(%struct.bnx2x* %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %48, %23
  %71 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @XMAC_REG_RX_MAX_SIZE, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i32 @REG_WR(%struct.bnx2x* %71, i32 %74, i32 10000)
  %76 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @XMAC_REG_TX_CTRL, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @REG_WR(%struct.bnx2x* %76, i32 %79, i32 51200)
  %81 = load %struct.link_params*, %struct.link_params** %4, align 8
  %82 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %83 = call i32 @bnx2x_update_pfc_xmac(%struct.link_params* %81, %struct.link_vars* %82, i32 0)
  %84 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %85 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SHMEM_EEE_ADV_STATUS_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %70
  %91 = load i32, i32* @NETIF_MSG_LINK, align 4
  %92 = call i32 @DP(i32 %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @XMAC_REG_EEE_TIMERS_HI, align 4
  %96 = add nsw i32 %94, %95
  %97 = call i32 @REG_WR(%struct.bnx2x* %93, i32 %96, i32 20447240)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @XMAC_REG_EEE_CTRL, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i32 @REG_WR(%struct.bnx2x* %98, i32 %101, i32 1)
  br label %109

103:                                              ; preds = %70
  %104 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @XMAC_REG_EEE_CTRL, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @REG_WR(%struct.bnx2x* %104, i32 %107, i32 0)
  br label %109

109:                                              ; preds = %103, %90
  %110 = load i32, i32* @XMAC_CTRL_REG_TX_EN, align 4
  %111 = load i32, i32* @XMAC_CTRL_REG_RX_EN, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %7, align 4
  %113 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %114 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SPEED_20000, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %109
  %119 = load %struct.link_params*, %struct.link_params** %4, align 8
  %120 = getelementptr inbounds %struct.link_params, %struct.link_params* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i64, i64* @INT_PHY, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SUPPORTED_20000baseKR2_Full, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = load i32, i32* @XMAC_CTRL_REG_XLGMII_ALIGN_ENB, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %118, %109
  %134 = load i64, i64* %6, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* @XMAC_CTRL_REG_LINE_LOCAL_LPBK, align 4
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %136, %133
  %141 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @XMAC_REG_CTRL, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @REG_WR(%struct.bnx2x* %141, i32 %144, i32 %145)
  %147 = load %struct.link_params*, %struct.link_params** %4, align 8
  %148 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %149 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @bnx2x_set_xumac_nig(%struct.link_params* %147, i32 %154, i32 1)
  %156 = load i32, i32* @MAC_TYPE_XMAC, align 4
  %157 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %158 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  ret i32 0
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_xmac_init(%struct.link_params*, i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_update_pfc_xmac(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_set_xumac_nig(%struct.link_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
