; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_select_clk_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_select_clk_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i64 }

@CSI_PIX_CLK_MUX_SEL = common dso_local global i64 0, align 8
@CSI_RDI_CLK_MUX_SEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispif_device*, i32, i32, i32, i32)* @ispif_select_clk_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ispif_select_clk_mux(%struct.ispif_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ispif_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ispif_device* %0, %struct.ispif_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %169 [
    i32 132, label %13
    i32 130, label %43
    i32 131, label %73
    i32 129, label %105
    i32 128, label %137
  ]

13:                                               ; preds = %5
  %14 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %15 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CSI_PIX_CLK_MUX_SEL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 %20, 8
  %22 = shl i32 15, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %13
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 %30, 8
  %32 = shl i32 %29, %31
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %28, %13
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %38 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CSI_PIX_CLK_MUX_SEL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 %36, i64 %41)
  br label %169

43:                                               ; preds = %5
  %44 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %45 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CSI_RDI_CLK_MUX_SEL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl_relaxed(i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 12
  %52 = shl i32 15, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %43
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 12
  %62 = shl i32 %59, %61
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %58, %43
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %68 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CSI_RDI_CLK_MUX_SEL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel_relaxed(i32 %66, i64 %71)
  br label %169

73:                                               ; preds = %5
  %74 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %75 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CSI_PIX_CLK_MUX_SEL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl_relaxed(i64 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %80, 8
  %82 = add nsw i32 4, %81
  %83 = shl i32 15, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %73
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %91, 8
  %93 = add nsw i32 4, %92
  %94 = shl i32 %90, %93
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %89, %73
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %100 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CSI_PIX_CLK_MUX_SEL, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel_relaxed(i32 %98, i64 %103)
  br label %169

105:                                              ; preds = %5
  %106 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %107 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CSI_RDI_CLK_MUX_SEL, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @readl_relaxed(i64 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 %112, 12
  %114 = add nsw i32 4, %113
  %115 = shl i32 15, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %105
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = mul nsw i32 %123, 12
  %125 = add nsw i32 4, %124
  %126 = shl i32 %122, %125
  %127 = load i32, i32* %11, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %121, %105
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %132 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CSI_RDI_CLK_MUX_SEL, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel_relaxed(i32 %130, i64 %135)
  br label %169

137:                                              ; preds = %5
  %138 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %139 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CSI_RDI_CLK_MUX_SEL, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @readl_relaxed(i64 %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %9, align 4
  %145 = mul nsw i32 %144, 12
  %146 = add nsw i32 8, %145
  %147 = shl i32 15, %146
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %11, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %137
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = mul nsw i32 %155, 12
  %157 = add nsw i32 8, %156
  %158 = shl i32 %154, %157
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %153, %137
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %164 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @CSI_RDI_CLK_MUX_SEL, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @writel_relaxed(i32 %162, i64 %167)
  br label %169

169:                                              ; preds = %5, %161, %129, %97, %65, %35
  %170 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
