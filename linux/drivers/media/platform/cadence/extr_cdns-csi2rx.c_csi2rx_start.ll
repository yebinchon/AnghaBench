; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2rx.c_csi2rx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2rx.c_csi2rx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi2rx_priv = type { i32, i32*, i32, i32, i32, i32*, i32, i64, i32 }

@CSI2RX_STATIC_CFG_REG = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@CSI2RX_STREAM_CFG_FIFO_MODE_LARGE_BUF = common dso_local global i32 0, align 4
@CSI2RX_STREAM_DATA_CFG_EN_VC_SELECT = common dso_local global i32 0, align 4
@CSI2RX_STREAM_CTRL_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi2rx_priv*)* @csi2rx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2rx_start(%struct.csi2rx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csi2rx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.csi2rx_priv* %0, %struct.csi2rx_priv** %3, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %180

17:                                               ; preds = %1
  %18 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %19 = call i32 @csi2rx_reset(%struct.csi2rx_priv* %18)
  %20 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %21 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 8
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %50, %17
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %27 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %33 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CSI2RX_STATIC_CFG_DLANE_MAP(i32 %31, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %43 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @set_bit(i32 %48, i64* %5)
  br label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %55 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %73, %53
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %60 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = call i32 @find_first_zero_bit(i64* %5, i32 8)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @set_bit(i32 %65, i64* %5)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  %70 = call i32 @CSI2RX_STATIC_CFG_DLANE_MAP(i32 %67, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %4, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %57

76:                                               ; preds = %57
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %79 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CSI2RX_STATIC_CFG_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %85 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @video, align 4
  %88 = load i32, i32* @s_stream, align 4
  %89 = call i32 @v4l2_subdev_call(i32 %86, i32 %87, i32 %88, i32 1)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %174

93:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %140, %93
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %97 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %100, label %143

100:                                              ; preds = %94
  %101 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %102 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @clk_prepare_enable(i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %156

112:                                              ; preds = %100
  %113 = load i32, i32* @CSI2RX_STREAM_CFG_FIFO_MODE_LARGE_BUF, align 4
  %114 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %115 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i64 @CSI2RX_STREAM_CFG_REG(i32 %117)
  %119 = add nsw i64 %116, %118
  %120 = call i32 @writel(i32 %113, i64 %119)
  %121 = load i32, i32* @CSI2RX_STREAM_DATA_CFG_EN_VC_SELECT, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @CSI2RX_STREAM_DATA_CFG_VC_SELECT(i32 %122)
  %124 = or i32 %121, %123
  %125 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %126 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i64 @CSI2RX_STREAM_DATA_CFG_REG(i32 %128)
  %130 = add nsw i64 %127, %129
  %131 = call i32 @writel(i32 %124, i64 %130)
  %132 = load i32, i32* @CSI2RX_STREAM_CTRL_START, align 4
  %133 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %134 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i64 @CSI2RX_STREAM_CTRL_REG(i32 %136)
  %138 = add nsw i64 %135, %137
  %139 = call i32 @writel(i32 %132, i64 %138)
  br label %140

140:                                              ; preds = %112
  %141 = load i32, i32* %4, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %94

143:                                              ; preds = %94
  %144 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %145 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @clk_prepare_enable(i32 %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %156

151:                                              ; preds = %143
  %152 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %153 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @clk_disable_unprepare(i32 %154)
  store i32 0, i32* %2, align 4
  br label %180

156:                                              ; preds = %150, %111
  br label %157

157:                                              ; preds = %170, %156
  %158 = load i32, i32* %4, align 4
  %159 = icmp ugt i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %162 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %161, i32 0, i32 5
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sub i32 %164, 1
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @clk_disable_unprepare(i32 %168)
  br label %170

170:                                              ; preds = %160
  %171 = load i32, i32* %4, align 4
  %172 = add i32 %171, -1
  store i32 %172, i32* %4, align 4
  br label %157

173:                                              ; preds = %157
  br label %174

174:                                              ; preds = %173, %92
  %175 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %176 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @clk_disable_unprepare(i32 %177)
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %174, %151, %15
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @csi2rx_reset(%struct.csi2rx_priv*) #1

declare dso_local i32 @CSI2RX_STATIC_CFG_DLANE_MAP(i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @find_first_zero_bit(i64*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i64 @CSI2RX_STREAM_CFG_REG(i32) #1

declare dso_local i32 @CSI2RX_STREAM_DATA_CFG_VC_SELECT(i32) #1

declare dso_local i64 @CSI2RX_STREAM_DATA_CFG_REG(i32) #1

declare dso_local i64 @CSI2RX_STREAM_CTRL_REG(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
