; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.stmmac_priv = type { i32, i64, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MAX_DMA_RIWT = common dso_local global i32 0, align 4
@MIN_DMA_RIWT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STMMAC_MAX_COAL_TX_TICK = common dso_local global i64 0, align 8
@STMMAC_TX_MAX_FRAMES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @stmmac_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.stmmac_priv* %10, %struct.stmmac_priv** %6, align 8
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %12 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 21
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %105, label %20

20:                                               ; preds = %2
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %21, i32 0, i32 20
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %105, label %25

25:                                               ; preds = %20
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 19
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %105, label %30

30:                                               ; preds = %25
  %31 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %31, i32 0, i32 18
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %105, label %35

35:                                               ; preds = %30
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 17
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %105, label %40

40:                                               ; preds = %35
  %41 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %41, i32 0, i32 16
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %105, label %45

45:                                               ; preds = %40
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 15
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %105, label %50

50:                                               ; preds = %45
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 14
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %105, label %55

55:                                               ; preds = %50
  %56 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %56, i32 0, i32 13
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %105, label %60

60:                                               ; preds = %55
  %61 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %61, i32 0, i32 12
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %105, label %65

65:                                               ; preds = %60
  %66 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %66, i32 0, i32 11
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %105, label %70

70:                                               ; preds = %65
  %71 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %71, i32 0, i32 10
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %105, label %75

75:                                               ; preds = %70
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %76, i32 0, i32 9
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %75
  %81 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %80
  %86 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %85
  %91 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %2
  %106 = load i32, i32* @EOPNOTSUPP, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %191

108:                                              ; preds = %100
  %109 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %110 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %147

113:                                              ; preds = %108
  %114 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %115 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %147

118:                                              ; preds = %113
  %119 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %123 = call i32 @stmmac_usec2riwt(i64 %121, %struct.stmmac_priv* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @MAX_DMA_RIWT, align 4
  %126 = icmp ugt i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %118
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @MIN_DMA_RIWT, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127, %118
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %191

134:                                              ; preds = %127
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %137 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %139 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %140 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %143 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @stmmac_rx_watchdog(%struct.stmmac_priv* %138, i32 %141, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %134, %113, %108
  %148 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %149 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %154 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %191

160:                                              ; preds = %152, %147
  %161 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %162 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @STMMAC_MAX_COAL_TX_TICK, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %168 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @STMMAC_TX_MAX_FRAMES, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166, %160
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %191

175:                                              ; preds = %166
  %176 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %177 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %180 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  %181 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %182 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %185 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %184, i32 0, i32 2
  store i64 %183, i64* %185, align 8
  %186 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %187 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %190 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %175, %172, %157, %131, %105
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_usec2riwt(i64, %struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_rx_watchdog(%struct.stmmac_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
