; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_update_pfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_update_pfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, i32, i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64, i32, i32, i32 }
%struct.bnx2x_nig_brb_pfc_port_params = type { i32 }

@LOOPBACK_BMAC = common dso_local global i64 0, align 8
@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@LINK_STATUS_PFC_ENABLED = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"About to update PFC in BMAC\0A\00", align 1
@MAC_TYPE_XMAC = common dso_local global i64 0, align 8
@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"About to update PFC in EMAC\0A\00", align 1
@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_PAUSE_OUT_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_update_pfc(%struct.link_params* %0, %struct.link_vars* %1, %struct.bnx2x_nig_brb_pfc_port_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x_nig_brb_pfc_port_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x*, align 8
  %10 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %5, align 8
  store %struct.link_vars* %1, %struct.link_vars** %6, align 8
  store %struct.bnx2x_nig_brb_pfc_port_params* %2, %struct.bnx2x_nig_brb_pfc_port_params** %7, align 8
  %11 = load %struct.link_params*, %struct.link_params** %5, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 3
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %9, align 8
  %14 = load %struct.link_params*, %struct.link_params** %5, align 8
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LOOPBACK_BMAC, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load %struct.link_params*, %struct.link_params** %5, align 8
  %21 = getelementptr inbounds %struct.link_params, %struct.link_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @LINK_STATUS_PFC_ENABLED, align 4
  %28 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %29 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* @LINK_STATUS_PFC_ENABLED, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %36 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.link_params*, %struct.link_params** %5, align 8
  %41 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %42 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bnx2x_update_mng(%struct.link_params* %40, i32 %43)
  %45 = load %struct.link_params*, %struct.link_params** %5, align 8
  %46 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %47 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %7, align 8
  %48 = call i32 @bnx2x_update_pfc_nig(%struct.link_params* %45, %struct.link_vars* %46, %struct.bnx2x_nig_brb_pfc_port_params* %47)
  %49 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %50 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %129

54:                                               ; preds = %39
  %55 = load i32, i32* @NETIF_MSG_LINK, align 4
  %56 = call i32 @DP(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %58 = call i64 @CHIP_IS_E3(%struct.bnx2x* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %62 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MAC_TYPE_XMAC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.link_params*, %struct.link_params** %5, align 8
  %68 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %69 = call i32 @bnx2x_update_pfc_xmac(%struct.link_params* %67, %struct.link_vars* %68, i32 0)
  br label %70

70:                                               ; preds = %66, %60
  br label %128

71:                                               ; preds = %54
  %72 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %73 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %74 = call i32 @REG_RD(%struct.bnx2x* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %77 = load %struct.link_params*, %struct.link_params** %5, align 8
  %78 = getelementptr inbounds %struct.link_params, %struct.link_params* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %76, %79
  %81 = and i32 %75, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %71
  %84 = load i32, i32* @NETIF_MSG_LINK, align 4
  %85 = call i32 @DP(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.link_params*, %struct.link_params** %5, align 8
  %87 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %88 = call i32 @bnx2x_emac_enable(%struct.link_params* %86, %struct.link_vars* %87, i32 0)
  store i32 0, i32* %4, align 4
  br label %129

89:                                               ; preds = %71
  %90 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %91 = call i64 @CHIP_IS_E2(%struct.bnx2x* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.link_params*, %struct.link_params** %5, align 8
  %95 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @bnx2x_update_pfc_bmac2(%struct.link_params* %94, %struct.link_vars* %95, i32 %96)
  br label %102

98:                                               ; preds = %89
  %99 = load %struct.link_params*, %struct.link_params** %5, align 8
  %100 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %101 = call i32 @bnx2x_update_pfc_bmac1(%struct.link_params* %99, %struct.link_vars* %100)
  br label %102

102:                                              ; preds = %98, %93
  store i32 0, i32* %8, align 4
  %103 = load %struct.link_params*, %struct.link_params** %5, align 8
  %104 = getelementptr inbounds %struct.link_params, %struct.link_params* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %111 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109, %102
  store i32 1, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %109
  %118 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %119 = load i64, i64* @NIG_REG_BMAC0_PAUSE_OUT_EN, align 8
  %120 = load %struct.link_params*, %struct.link_params** %5, align 8
  %121 = getelementptr inbounds %struct.link_params, %struct.link_params* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %119, %124
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @REG_WR(%struct.bnx2x* %118, i64 %125, i32 %126)
  br label %128

128:                                              ; preds = %117, %70
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %83, %53
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @bnx2x_update_mng(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_update_pfc_nig(%struct.link_params*, %struct.link_vars*, %struct.bnx2x_nig_brb_pfc_port_params*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_update_pfc_xmac(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_emac_enable(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_update_pfc_bmac2(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_update_pfc_bmac1(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
