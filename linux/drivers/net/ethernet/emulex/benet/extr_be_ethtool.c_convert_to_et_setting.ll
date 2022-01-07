; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_convert_to_et_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_convert_to_et_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SUPPORTED_TP = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_1GBPS = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_100MBPS = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_10MBPS = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Backplane = common dso_local global i32 0, align 4
@SUPPORTED_1000baseKX_Full = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_10GBPS = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKX4_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKR_Full = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_20GBPS = common dso_local global i32 0, align 4
@SUPPORTED_20000baseKR2_Full = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_40GBPS = common dso_local global i32 0, align 4
@SUPPORTED_40000baseKR4_Full = common dso_local global i32 0, align 4
@SUPPORTED_40000baseCR4_Full = common dso_local global i32 0, align 4
@SUPPORTED_40000baseLR4_Full = common dso_local global i32 0, align 4
@SUPPORTED_40000baseSR4_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i32)* @convert_to_et_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_et_setting(%struct.be_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %190 [
    i32 140, label %10
    i32 139, label %10
    i32 131, label %10
    i32 135, label %41
    i32 138, label %63
    i32 136, label %85
    i32 137, label %91
    i32 134, label %113
    i32 132, label %137
    i32 130, label %137
    i32 133, label %137
    i32 141, label %159
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load i32, i32* @SUPPORTED_TP, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BE_SUPPORTED_SPEED_1GBPS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %10
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BE_SUPPORTED_SPEED_100MBPS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BE_SUPPORTED_SPEED_10MBPS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %31
  br label %194

41:                                               ; preds = %2
  %42 = load i32, i32* @SUPPORTED_Backplane, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @BE_SUPPORTED_SPEED_1GBPS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @BE_SUPPORTED_SPEED_10GBPS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @SUPPORTED_10000baseKX4_Full, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %53
  br label %194

63:                                               ; preds = %2
  %64 = load i32, i32* @SUPPORTED_Backplane, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @BE_SUPPORTED_SPEED_10GBPS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %63
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @BE_SUPPORTED_SPEED_20GBPS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @SUPPORTED_20000baseKR2_Full, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %75
  br label %194

85:                                               ; preds = %2
  %86 = load i32, i32* @SUPPORTED_Backplane, align 4
  %87 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %194

91:                                               ; preds = %2
  %92 = load i32, i32* @SUPPORTED_Backplane, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @BE_SUPPORTED_SPEED_10GBPS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %91
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @BE_SUPPORTED_SPEED_40GBPS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @SUPPORTED_40000baseKR4_Full, align 4
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %103
  br label %194

113:                                              ; preds = %2
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @BE_SUPPORTED_SPEED_40GBPS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %113
  %119 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %131 [
    i32 129, label %123
    i32 128, label %127
  ]

123:                                              ; preds = %118
  %124 = load i32, i32* @SUPPORTED_40000baseCR4_Full, align 4
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %135

127:                                              ; preds = %118
  %128 = load i32, i32* @SUPPORTED_40000baseLR4_Full, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  br label %135

131:                                              ; preds = %118
  %132 = load i32, i32* @SUPPORTED_40000baseSR4_Full, align 4
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %127, %123
  br label %136

136:                                              ; preds = %135, %113
  br label %137

137:                                              ; preds = %2, %2, %2, %136
  %138 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @BE_SUPPORTED_SPEED_10GBPS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %145, %137
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @BE_SUPPORTED_SPEED_1GBPS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %154, %149
  br label %194

159:                                              ; preds = %2
  %160 = load i32, i32* @SUPPORTED_TP, align 4
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @BE_SUPPORTED_SPEED_10GBPS, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %169 = load i32, i32* %5, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %167, %159
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @BE_SUPPORTED_SPEED_1GBPS, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %178 = load i32, i32* %5, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %176, %171
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @BE_SUPPORTED_SPEED_100MBPS, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %185, %180
  br label %194

190:                                              ; preds = %2
  %191 = load i32, i32* @SUPPORTED_TP, align 4
  %192 = load i32, i32* %5, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %190, %189, %158, %112, %85, %84, %62, %40
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
