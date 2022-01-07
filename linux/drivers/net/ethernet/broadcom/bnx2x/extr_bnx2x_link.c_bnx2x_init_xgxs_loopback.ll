; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_init_xgxs_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_init_xgxs_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64*, i64, i64, i32, %struct.bnx2x_phy*, %struct.bnx2x* }
%struct.bnx2x_phy = type { i32, i32 (%struct.bnx2x_phy*, %struct.link_params*)* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i64, i32, i32 }

@INT_PHY = common dso_local global i64 0, align 8
@BNX2X_FLOW_CTRL_NONE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_20000 = common dso_local global i64 0, align 8
@FLAGS_WC_DUAL_MODE = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@LOOPBACK_XGXS = common dso_local global i64 0, align 8
@EXT_PHY1 = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@LED_MODE_OPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.link_vars*)* @bnx2x_init_xgxs_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_xgxs_loopback(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.link_vars*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_phy*, align 8
  %7 = alloca i64, align 8
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.link_vars* %1, %struct.link_vars** %4, align 8
  %8 = load %struct.link_params*, %struct.link_params** %3, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 5
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %5, align 8
  %11 = load %struct.link_params*, %struct.link_params** %3, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 4
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %12, align 8
  %14 = load i64, i64* @INT_PHY, align 8
  %15 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %13, i64 %14
  store %struct.bnx2x_phy* %15, %struct.bnx2x_phy** %6, align 8
  %16 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %17 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @BNX2X_FLOW_CTRL_NONE, align 4
  %19 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %20 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @DUPLEX_FULL, align 4
  %22 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %23 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.link_params*, %struct.link_params** %3, align 8
  %25 = getelementptr inbounds %struct.link_params, %struct.link_params* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SPEED_1000, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i64, i64* @SPEED_1000, align 8
  %33 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %34 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %59

35:                                               ; preds = %2
  %36 = load %struct.link_params*, %struct.link_params** %3, align 8
  %37 = getelementptr inbounds %struct.link_params, %struct.link_params* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SPEED_20000, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %45 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FLAGS_WC_DUAL_MODE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43, %35
  %51 = load i64, i64* @SPEED_20000, align 8
  %52 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %53 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %58

54:                                               ; preds = %43
  %55 = load i64, i64* @SPEED_10000, align 8
  %56 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %57 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %31
  %60 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %61 = call i64 @USES_WARPCORE(%struct.bnx2x* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load %struct.link_params*, %struct.link_params** %3, align 8
  %65 = call i32 @bnx2x_xgxs_deassert(%struct.link_params* %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load %struct.link_params*, %struct.link_params** %3, align 8
  %68 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %69 = call i32 @bnx2x_link_initialize(%struct.link_params* %67, %struct.link_vars* %68)
  %70 = load %struct.link_params*, %struct.link_params** %3, align 8
  %71 = getelementptr inbounds %struct.link_params, %struct.link_params* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SPEED_1000, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %66
  %78 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %79 = call i64 @USES_WARPCORE(%struct.bnx2x* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.link_params*, %struct.link_params** %3, align 8
  %83 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %84 = call i32 @bnx2x_umac_enable(%struct.link_params* %82, %struct.link_vars* %83, i32 0)
  br label %92

85:                                               ; preds = %77
  %86 = load %struct.link_params*, %struct.link_params** %3, align 8
  %87 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %88 = call i32 @bnx2x_emac_program(%struct.link_params* %86, %struct.link_vars* %87)
  %89 = load %struct.link_params*, %struct.link_params** %3, align 8
  %90 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %91 = call i32 @bnx2x_emac_enable(%struct.link_params* %89, %struct.link_vars* %90, i32 0)
  br label %92

92:                                               ; preds = %85, %81
  br label %106

93:                                               ; preds = %66
  %94 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %95 = call i64 @USES_WARPCORE(%struct.bnx2x* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.link_params*, %struct.link_params** %3, align 8
  %99 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %100 = call i32 @bnx2x_xmac_enable(%struct.link_params* %98, %struct.link_vars* %99, i32 0)
  br label %105

101:                                              ; preds = %93
  %102 = load %struct.link_params*, %struct.link_params** %3, align 8
  %103 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %104 = call i32 @bnx2x_bmac_enable(%struct.link_params* %102, %struct.link_vars* %103, i32 0, i32 1)
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %92
  %107 = load %struct.link_params*, %struct.link_params** %3, align 8
  %108 = getelementptr inbounds %struct.link_params, %struct.link_params* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @LOOPBACK_XGXS, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %114 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %113, i32 0, i32 1
  %115 = load i32 (%struct.bnx2x_phy*, %struct.link_params*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*)** %114, align 8
  %116 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %117 = load %struct.link_params*, %struct.link_params** %3, align 8
  %118 = call i32 %115(%struct.bnx2x_phy* %116, %struct.link_params* %117)
  br label %156

119:                                              ; preds = %106
  %120 = load i64, i64* @EXT_PHY1, align 8
  store i64 %120, i64* %7, align 8
  br label %121

121:                                              ; preds = %152, %119
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.link_params*, %struct.link_params** %3, align 8
  %124 = getelementptr inbounds %struct.link_params, %struct.link_params* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ult i64 %122, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %121
  %128 = load %struct.link_params*, %struct.link_params** %3, align 8
  %129 = getelementptr inbounds %struct.link_params, %struct.link_params* %128, i32 0, i32 4
  %130 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %130, i64 %131
  %133 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %132, i32 0, i32 1
  %134 = load i32 (%struct.bnx2x_phy*, %struct.link_params*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*)** %133, align 8
  %135 = icmp ne i32 (%struct.bnx2x_phy*, %struct.link_params*)* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %127
  %137 = load %struct.link_params*, %struct.link_params** %3, align 8
  %138 = getelementptr inbounds %struct.link_params, %struct.link_params* %137, i32 0, i32 4
  %139 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %138, align 8
  %140 = load i64, i64* %7, align 8
  %141 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %139, i64 %140
  %142 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %141, i32 0, i32 1
  %143 = load i32 (%struct.bnx2x_phy*, %struct.link_params*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*)** %142, align 8
  %144 = load %struct.link_params*, %struct.link_params** %3, align 8
  %145 = getelementptr inbounds %struct.link_params, %struct.link_params* %144, i32 0, i32 4
  %146 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %145, align 8
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %146, i64 %147
  %149 = load %struct.link_params*, %struct.link_params** %3, align 8
  %150 = call i32 %143(%struct.bnx2x_phy* %148, %struct.link_params* %149)
  br label %151

151:                                              ; preds = %136, %127
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %7, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %7, align 8
  br label %121

155:                                              ; preds = %121
  br label %156

156:                                              ; preds = %155, %112
  %157 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %158 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %159 = load %struct.link_params*, %struct.link_params** %3, align 8
  %160 = getelementptr inbounds %struct.link_params, %struct.link_params* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %161, 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %158, %163
  %165 = call i32 @REG_WR(%struct.bnx2x* %157, i64 %164, i32 0)
  %166 = load %struct.link_params*, %struct.link_params** %3, align 8
  %167 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %168 = load i32, i32* @LED_MODE_OPER, align 4
  %169 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %170 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @bnx2x_set_led(%struct.link_params* %166, %struct.link_vars* %167, i32 %168, i64 %171)
  ret void
}

declare dso_local i64 @USES_WARPCORE(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_xgxs_deassert(%struct.link_params*) #1

declare dso_local i32 @bnx2x_link_initialize(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_umac_enable(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_emac_program(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_emac_enable(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_xmac_enable(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_bmac_enable(%struct.link_params*, %struct.link_vars*, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_set_led(%struct.link_params*, %struct.link_vars*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
