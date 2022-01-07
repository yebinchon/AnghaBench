; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.phylink_link_state = type { i64, i32, i64, i32 }
%struct.stmmac_priv = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 (i32, i32)* }

@MAC_CTRL_REG = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_USXGMII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink_config*, i32, %struct.phylink_link_state*)* @stmmac_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_mac_config(%struct.phylink_config* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca %struct.phylink_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phylink_link_state*, align 8
  %7 = alloca %struct.stmmac_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.phylink_config* %0, %struct.phylink_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %6, align 8
  %9 = load %struct.phylink_config*, %struct.phylink_config** %4, align 8
  %10 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @to_net_dev(i32 %11)
  %13 = call %struct.stmmac_priv* @netdev_priv(i32 %12)
  store %struct.stmmac_priv* %13, %struct.stmmac_priv** %7, align 8
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %15 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAC_CTRL_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %21 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %30 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PHY_INTERFACE_MODE_USXGMII, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %3
  %35 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %36 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %68 [
    i32 130, label %38
    i32 128, label %48
    i32 129, label %58
  ]

38:                                               ; preds = %34
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %69

48:                                               ; preds = %34
  %49 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %50 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %69

58:                                               ; preds = %34
  %59 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %60 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %69

68:                                               ; preds = %34
  br label %182

69:                                               ; preds = %58, %48, %38
  br label %112

70:                                               ; preds = %3
  %71 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %72 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %110 [
    i32 129, label %74
    i32 131, label %83
    i32 132, label %92
    i32 133, label %101
  ]

74:                                               ; preds = %70
  %75 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %76 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %111

83:                                               ; preds = %70
  %84 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %85 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %111

92:                                               ; preds = %70
  %93 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %94 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %111

101:                                              ; preds = %70
  %102 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %103 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %111

110:                                              ; preds = %70
  br label %182

111:                                              ; preds = %101, %92, %83, %74
  br label %112

112:                                              ; preds = %111, %69
  %113 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %114 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %117 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %119 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32 (i32, i32)*, i32 (i32, i32)** %121, align 8
  %123 = icmp ne i32 (i32, i32)* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %112
  %125 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %126 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32 (i32, i32)*, i32 (i32, i32)** %128, align 8
  %130 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %131 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %130, i32 0, i32 2
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %136 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 %129(i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %124, %112
  %140 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %141 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %139
  %145 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %146 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %145, i32 0, i32 1
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %8, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %8, align 4
  br label %163

154:                                              ; preds = %139
  %155 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %156 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %154, %144
  %164 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %165 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %170 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %171 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @stmmac_mac_flow_ctrl(%struct.stmmac_priv* %169, i32 %172)
  br label %174

174:                                              ; preds = %168, %163
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %177 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @MAC_CTRL_REG, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @writel(i32 %175, i64 %180)
  br label %182

182:                                              ; preds = %174, %110, %68
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @stmmac_mac_flow_ctrl(%struct.stmmac_priv*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
