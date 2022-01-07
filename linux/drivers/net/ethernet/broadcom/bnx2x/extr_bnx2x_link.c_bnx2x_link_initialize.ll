; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_link_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_link_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, i32, i32, %struct.bnx2x_phy*, %struct.bnx2x* }
%struct.bnx2x_phy = type { i64, i32, i32, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64, i32 }

@INT_PHY = common dso_local global i64 0, align 8
@LOOPBACK_XGXS = common dso_local global i64 0, align 8
@EXT_PHY1 = common dso_local global i64 0, align 8
@FLAGS_INIT_XGXS_FIRST = common dso_local global i32 0, align 4
@LOOPBACK_EXT_PHY = common dso_local global i64 0, align 8
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@LINK_STATUS_SERDES_LINK = common dso_local global i32 0, align 4
@EXT_PHY2 = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SELECTION_FIRST_PHY = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Not initializing second phy\0A\00", align 1
@NIG_REG_STATUS_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_STATUS_XGXS0_LINK10G = common dso_local global i32 0, align 4
@NIG_STATUS_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_STATUS_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.link_vars*)* @bnx2x_link_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_link_initialize(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.link_vars*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_phy*, align 8
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.link_vars* %1, %struct.link_vars** %4, align 8
  %9 = load %struct.link_params*, %struct.link_params** %3, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %7, align 8
  %12 = load %struct.link_params*, %struct.link_params** %3, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 3
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %13, align 8
  %15 = load i64, i64* @INT_PHY, align 8
  %16 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %14, i64 %15
  %17 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %20 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %22 = call i32 @USES_WARPCORE(%struct.bnx2x* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = load %struct.link_params*, %struct.link_params** %3, align 8
  %26 = getelementptr inbounds %struct.link_params, %struct.link_params* %25, i32 0, i32 3
  %27 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %26, align 8
  %28 = load i64, i64* @INT_PHY, align 8
  %29 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %27, i64 %28
  %30 = load %struct.link_params*, %struct.link_params** %3, align 8
  %31 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %32 = call i32 @bnx2x_prepare_xgxs(%struct.bnx2x_phy* %29, %struct.link_params* %30, %struct.link_vars* %31)
  br label %33

33:                                               ; preds = %24, %2
  %34 = load %struct.link_params*, %struct.link_params** %3, align 8
  %35 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load %struct.link_params*, %struct.link_params** %3, align 8
  %39 = getelementptr inbounds %struct.link_params, %struct.link_params* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LOOPBACK_XGXS, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i1 [ true, %33 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %43
  %49 = load %struct.link_params*, %struct.link_params** %3, align 8
  %50 = getelementptr inbounds %struct.link_params, %struct.link_params* %49, i32 0, i32 3
  %51 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %50, align 8
  %52 = load i64, i64* @EXT_PHY1, align 8
  %53 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %51, i64 %52
  %54 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FLAGS_INIT_XGXS_FIRST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %48
  %60 = load %struct.link_params*, %struct.link_params** %3, align 8
  %61 = getelementptr inbounds %struct.link_params, %struct.link_params* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LOOPBACK_EXT_PHY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %110

65:                                               ; preds = %59, %48, %43
  %66 = load %struct.link_params*, %struct.link_params** %3, align 8
  %67 = getelementptr inbounds %struct.link_params, %struct.link_params* %66, i32 0, i32 3
  %68 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %67, align 8
  %69 = load i64, i64* @INT_PHY, align 8
  %70 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %68, i64 %69
  store %struct.bnx2x_phy* %70, %struct.bnx2x_phy** %8, align 8
  %71 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %72 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %65
  %77 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %78 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %82 = call i64 @CHIP_IS_E2(%struct.bnx2x* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80, %76
  %85 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %8, align 8
  %86 = load %struct.link_params*, %struct.link_params** %3, align 8
  %87 = call i32 @bnx2x_set_parallel_detection(%struct.bnx2x_phy* %85, %struct.link_params* %86)
  br label %88

88:                                               ; preds = %84, %80, %65
  %89 = load %struct.link_params*, %struct.link_params** %3, align 8
  %90 = getelementptr inbounds %struct.link_params, %struct.link_params* %89, i32 0, i32 3
  %91 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %90, align 8
  %92 = load i64, i64* @INT_PHY, align 8
  %93 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %91, i64 %92
  %94 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %93, i32 0, i32 3
  %95 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %94, align 8
  %96 = icmp ne i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %88
  %98 = load %struct.link_params*, %struct.link_params** %3, align 8
  %99 = getelementptr inbounds %struct.link_params, %struct.link_params* %98, i32 0, i32 3
  %100 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %99, align 8
  %101 = load i64, i64* @INT_PHY, align 8
  %102 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %100, i64 %101
  %103 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %102, i32 0, i32 3
  %104 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %103, align 8
  %105 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %8, align 8
  %106 = load %struct.link_params*, %struct.link_params** %3, align 8
  %107 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %108 = call i32 %104(%struct.bnx2x_phy* %105, %struct.link_params* %106, %struct.link_vars* %107)
  br label %109

109:                                              ; preds = %97, %88
  br label %110

110:                                              ; preds = %109, %59
  %111 = load %struct.link_params*, %struct.link_params** %3, align 8
  %112 = getelementptr inbounds %struct.link_params, %struct.link_params* %111, i32 0, i32 3
  %113 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %112, align 8
  %114 = load i64, i64* @INT_PHY, align 8
  %115 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %113, i64 %114
  %116 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %119 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %110
  %123 = load %struct.link_params*, %struct.link_params** %3, align 8
  %124 = getelementptr inbounds %struct.link_params, %struct.link_params* %123, i32 0, i32 3
  %125 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %124, align 8
  %126 = load i64, i64* @INT_PHY, align 8
  %127 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %125, i64 %126
  %128 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %122
  %134 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %135 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %136 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %122
  br label %201

140:                                              ; preds = %110
  %141 = load i64, i64* @EXT_PHY1, align 8
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %197, %140
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.link_params*, %struct.link_params** %3, align 8
  %146 = getelementptr inbounds %struct.link_params, %struct.link_params* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %200

149:                                              ; preds = %143
  %150 = load %struct.link_params*, %struct.link_params** %3, align 8
  %151 = getelementptr inbounds %struct.link_params, %struct.link_params* %150, i32 0, i32 3
  %152 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %152, i64 %154
  %156 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %149
  %162 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %163 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %164 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %161, %149
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @EXT_PHY2, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load %struct.link_params*, %struct.link_params** %3, align 8
  %173 = call i64 @bnx2x_phy_selection(%struct.link_params* %172)
  %174 = load i64, i64* @PORT_HW_CFG_PHY_SELECTION_FIRST_PHY, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* @NETIF_MSG_LINK, align 4
  %178 = call i32 @DP(i32 %177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %197

179:                                              ; preds = %171, %167
  %180 = load %struct.link_params*, %struct.link_params** %3, align 8
  %181 = getelementptr inbounds %struct.link_params, %struct.link_params* %180, i32 0, i32 3
  %182 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %182, i64 %184
  %186 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %185, i32 0, i32 3
  %187 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %186, align 8
  %188 = load %struct.link_params*, %struct.link_params** %3, align 8
  %189 = getelementptr inbounds %struct.link_params, %struct.link_params* %188, i32 0, i32 3
  %190 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %190, i64 %192
  %194 = load %struct.link_params*, %struct.link_params** %3, align 8
  %195 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %196 = call i32 %187(%struct.bnx2x_phy* %193, %struct.link_params* %194, %struct.link_vars* %195)
  br label %197

197:                                              ; preds = %179, %176
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %5, align 4
  br label %143

200:                                              ; preds = %143
  br label %201

201:                                              ; preds = %200, %139
  %202 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %203 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %204 = load %struct.link_params*, %struct.link_params** %3, align 8
  %205 = getelementptr inbounds %struct.link_params, %struct.link_params* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %206, 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %203, %208
  %210 = load i32, i32* @NIG_STATUS_XGXS0_LINK10G, align 4
  %211 = load i32, i32* @NIG_STATUS_XGXS0_LINK_STATUS, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @NIG_STATUS_SERDES0_LINK_STATUS, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %202, i64 %209, i32 %216)
  ret i32 0
}

declare dso_local i32 @USES_WARPCORE(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_prepare_xgxs(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

declare dso_local i64 @SINGLE_MEDIA_DIRECT(%struct.link_params*) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_parallel_detection(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i64 @bnx2x_phy_selection(%struct.link_params*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
