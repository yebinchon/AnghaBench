; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.stmmac_priv = type { i64, %struct.TYPE_8__, i32, i32, i64, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@STMMAC_SAFETY_FEAT_SIZE = common dso_local global i32 0, align 4
@STMMAC_MMC_STATS_LEN = common dso_local global i32 0, align 4
@stmmac_mmc = common dso_local global %struct.TYPE_9__* null, align 8
@DWMAC_CORE_3_50 = common dso_local global i64 0, align 8
@STMMAC_STATS_LEN = common dso_local global i32 0, align 4
@stmmac_gstrings_stats = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @stmmac_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.stmmac_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.stmmac_priv* %18, %struct.stmmac_priv** %7, align 8
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %20 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %19, i32 0, i32 9
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %25 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %24, i32 0, i32 9
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %29 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %30 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @STMMAC_SAFETY_FEAT_SIZE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @stmmac_safety_feat_dump(%struct.stmmac_priv* %40, i32* %42, i32 %43, i64* %10, i32* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %10, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  store i64 %47, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %39
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %35

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %63 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %62, i32 0, i32 1
  %64 = bitcast %struct.TYPE_8__* %63 to i8*
  %65 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %66 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @stmmac_dma_diagnostic_fr(%struct.stmmac_priv* %59, i32* %61, i8* %64, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %163

71:                                               ; preds = %58
  %72 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %73 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %127

77:                                               ; preds = %71
  %78 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %79 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %80 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %83 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %82, i32 0, i32 5
  %84 = call i32 @stmmac_mmc_read(%struct.stmmac_priv* %78, i32 %81, i32* %83)
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %123, %77
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @STMMAC_MMC_STATS_LEN, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %126

89:                                               ; preds = %85
  %90 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %91 = bitcast %struct.stmmac_priv* %90 to i8*
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stmmac_mmc, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %91, i64 %98
  store i8* %99, i8** %14, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stmmac_mmc, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp eq i64 %106, 8
  br i1 %107, label %108, label %112

108:                                              ; preds = %89
  %109 = load i8*, i8** %14, align 8
  %110 = bitcast i8* %109 to i64*
  %111 = load i64, i64* %110, align 8
  br label %116

112:                                              ; preds = %89
  %113 = load i8*, i8** %14, align 8
  %114 = bitcast i8* %113 to i64*
  %115 = load i64, i64* %114, align 8
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i64 [ %111, %108 ], [ %115, %112 ]
  %118 = load i64*, i64** %6, align 8
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  store i64 %117, i64* %122, align 8
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %85

126:                                              ; preds = %85
  br label %127

127:                                              ; preds = %126, %71
  %128 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %129 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %134 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @phylink_get_eee_err(i32 %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %142 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  br label %144

144:                                              ; preds = %139, %132
  br label %145

145:                                              ; preds = %144, %127
  %146 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %147 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @DWMAC_CORE_3_50, align 8
  %150 = icmp sge i64 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %153 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %154 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %157 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %156, i32 0, i32 1
  %158 = bitcast %struct.TYPE_8__* %157 to i8*
  %159 = load i64, i64* %8, align 8
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @stmmac_mac_debug(%struct.stmmac_priv* %152, i32 %155, i8* %158, i64 %159, i64 %160)
  br label %162

162:                                              ; preds = %151, %145
  br label %163

163:                                              ; preds = %162, %58
  store i32 0, i32* %11, align 4
  br label %164

164:                                              ; preds = %202, %163
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @STMMAC_STATS_LEN, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %205

168:                                              ; preds = %164
  %169 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %170 = bitcast %struct.stmmac_priv* %169 to i8*
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stmmac_gstrings_stats, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %170, i64 %177
  store i8* %178, i8** %16, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stmmac_gstrings_stats, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp eq i64 %185, 8
  br i1 %186, label %187, label %191

187:                                              ; preds = %168
  %188 = load i8*, i8** %16, align 8
  %189 = bitcast i8* %188 to i64*
  %190 = load i64, i64* %189, align 8
  br label %195

191:                                              ; preds = %168
  %192 = load i8*, i8** %16, align 8
  %193 = bitcast i8* %192 to i64*
  %194 = load i64, i64* %193, align 8
  br label %195

195:                                              ; preds = %191, %187
  %196 = phi i64 [ %190, %187 ], [ %194, %191 ]
  %197 = load i64*, i64** %6, align 8
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i64, i64* %197, i64 %200
  store i64 %196, i64* %201, align 8
  br label %202

202:                                              ; preds = %195
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %164

205:                                              ; preds = %164
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_safety_feat_dump(%struct.stmmac_priv*, i32*, i32, i64*, i32*) #1

declare dso_local i32 @stmmac_dma_diagnostic_fr(%struct.stmmac_priv*, i32*, i8*, i32) #1

declare dso_local i32 @stmmac_mmc_read(%struct.stmmac_priv*, i32, i32*) #1

declare dso_local i32 @phylink_get_eee_err(i32) #1

declare dso_local i32 @stmmac_mac_debug(%struct.stmmac_priv*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
