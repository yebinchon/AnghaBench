; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_tap_correction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_tap_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { i32 }

@TUNING_WORD_BIT_SIZE = common dso_local global i32 0, align 4
@SDHCI_VNDR_TUN_CTRL0_0 = common dso_local global i32 0, align 4
@SDHCI_VNDR_TUN_CTRL0_TUN_WORD_SEL_MASK = common dso_local global i32 0, align 4
@SDHCI_TEGRA_VNDR_TUN_STATUS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"no edge detected, continue with hw tuned delay.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32, i32, i32)* @tegra_sdhci_tap_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_tap_correction(%struct.sdhci_host* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdhci_pltfm_host*, align 8
  %10 = alloca %struct.sdhci_tegra*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %30 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %29)
  store %struct.sdhci_pltfm_host* %30, %struct.sdhci_pltfm_host** %9, align 8
  %31 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %9, align 8
  %32 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %31)
  store %struct.sdhci_tegra* %32, %struct.sdhci_tegra** %10, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %34 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TUNING_WORD_BIT_SIZE, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %28, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %157, %4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %28, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %160

42:                                               ; preds = %38
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %44 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_0, align 4
  %45 = call i32 @sdhci_readl(%struct.sdhci_host* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_TUN_WORD_SEL_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_0, align 4
  %56 = call i32 @sdhci_writel(%struct.sdhci_host* %53, i32 %54, i32 %55)
  %57 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %58 = load i32, i32* @SDHCI_TEGRA_VNDR_TUN_STATUS0, align 4
  %59 = call i32 @sdhci_readl(%struct.sdhci_host* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %153, %42
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @TUNING_WORD_BIT_SIZE, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %156

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @TUNING_WORD_BIT_SIZE, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %14, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %19, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  store i32 1, i32* %19, align 4
  %80 = load i32, i32* %22, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %26, align 4
  store i32 1, i32* %22, align 4
  br label %84

84:                                               ; preds = %82, %79
  br label %153

85:                                               ; preds = %76, %64
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %24, align 4
  store i32 1, i32* %20, align 4
  %96 = load i32, i32* %23, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %27, align 4
  store i32 1, i32* %23, align 4
  br label %100

100:                                              ; preds = %98, %94
  br label %152

101:                                              ; preds = %91, %88, %85
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i32, i32* %20, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %21, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %16, align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %25, align 4
  store i32 1, i32* %21, align 4
  br label %151

116:                                              ; preds = %110, %107, %104, %101
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %150

119:                                              ; preds = %116
  %120 = load i32, i32* %20, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %119
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %122
  %126 = load i32, i32* %21, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %125
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %24, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135, %128
  %140 = load i32, i32* %16, align 4
  store i32 %140, i32* %24, align 4
  store i32 0, i32* %21, align 4
  br label %149

141:                                              ; preds = %135
  %142 = load i32, i32* %24, align 4
  %143 = load i32, i32* %17, align 4
  %144 = sdiv i32 %143, 2
  %145 = add nsw i32 %142, %144
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %10, align 8
  %148 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %193

149:                                              ; preds = %139
  br label %150

150:                                              ; preds = %149, %125, %122, %119, %116
  br label %151

151:                                              ; preds = %150, %113
  br label %152

152:                                              ; preds = %151, %100
  br label %153

153:                                              ; preds = %152, %84
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %60

156:                                              ; preds = %60
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %38

160:                                              ; preds = %38
  %161 = load i32, i32* %22, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %193

165:                                              ; preds = %160
  %166 = load i32, i32* %23, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %192

168:                                              ; preds = %165
  %169 = load i32, i32* %26, align 4
  %170 = load i32, i32* %27, align 4
  %171 = load i32, i32* %26, align 4
  %172 = sub nsw i32 %170, %171
  %173 = sdiv i32 %172, 2
  %174 = add nsw i32 %169, %173
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = sub nsw i32 %175, 1
  %177 = load i32, i32* %8, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %168
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 %180, %181
  %183 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %10, align 8
  %184 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 4
  br label %191

185:                                              ; preds = %168
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %186, %187
  %189 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %10, align 8
  %190 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %185, %179
  br label %192

192:                                              ; preds = %191, %165
  br label %193

193:                                              ; preds = %141, %192, %163
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
