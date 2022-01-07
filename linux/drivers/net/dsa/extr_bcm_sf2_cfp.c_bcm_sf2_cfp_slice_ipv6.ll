; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_slice_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_slice_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i32 }

@SLICE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sf2_priv*, i32*, i32, i32, i32)* @bcm_sf2_cfp_slice_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_cfp_slice_ipv6(%struct.bcm_sf2_priv* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bcm_sf2_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @be16_to_cpu(i32 %19)
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 8
  %23 = load i32, i32* %11, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = or i32 %22, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = call i32 @CORE_CFP_MASK_PORT(i32 4)
  store i32 %30, i32* %14, align 4
  br label %33

31:                                               ; preds = %5
  %32 = call i32 @CORE_CFP_DATA_PORT(i32 4)
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @core_writel(%struct.bcm_sf2_priv* %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 255
  %44 = shl i32 %43, 24
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, 16
  %47 = shl i32 %46, 8
  %48 = or i32 %44, %47
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = or i32 %48, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %33
  %56 = call i32 @CORE_CFP_MASK_PORT(i32 3)
  store i32 %56, i32* %14, align 4
  br label %59

57:                                               ; preds = %33
  %58 = call i32 @CORE_CFP_DATA_PORT(i32 3)
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @core_writel(%struct.bcm_sf2_priv* %60, i32 %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32_to_cpu(i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, 255
  %70 = shl i32 %69, 24
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 16
  %73 = shl i32 %72, 8
  %74 = or i32 %70, %73
  %75 = load i32, i32* %11, align 4
  %76 = ashr i32 %75, 8
  %77 = and i32 %76, 255
  %78 = or i32 %74, %77
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %59
  %82 = call i32 @CORE_CFP_MASK_PORT(i32 2)
  store i32 %82, i32* %14, align 4
  br label %85

83:                                               ; preds = %59
  %84 = call i32 @CORE_CFP_DATA_PORT(i32 2)
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @core_writel(%struct.bcm_sf2_priv* %86, i32 %87, i32 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be32_to_cpu(i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, 255
  %96 = shl i32 %95, 24
  %97 = load i32, i32* %11, align 4
  %98 = ashr i32 %97, 16
  %99 = shl i32 %98, 8
  %100 = or i32 %96, %99
  %101 = load i32, i32* %12, align 4
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 255
  %104 = or i32 %100, %103
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %85
  %108 = call i32 @CORE_CFP_MASK_PORT(i32 1)
  store i32 %108, i32* %14, align 4
  br label %111

109:                                              ; preds = %85
  %110 = call i32 @CORE_CFP_DATA_PORT(i32 1)
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @core_writel(%struct.bcm_sf2_priv* %112, i32 %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = and i32 %116, 255
  %118 = shl i32 %117, 24
  %119 = load i32, i32* %12, align 4
  %120 = ashr i32 %119, 16
  %121 = shl i32 %120, 8
  %122 = or i32 %118, %121
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @SLICE_NUM(i32 %123)
  %125 = or i32 %122, %124
  %126 = load i32, i32* @SLICE_VALID, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %111
  %131 = call i32 @CORE_CFP_MASK_PORT(i32 0)
  store i32 %131, i32* %14, align 4
  br label %134

132:                                              ; preds = %111
  %133 = call i32 @CORE_CFP_DATA_PORT(i32 0)
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @core_writel(%struct.bcm_sf2_priv* %135, i32 %136, i32 %137)
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @CORE_CFP_MASK_PORT(i32) #1

declare dso_local i32 @CORE_CFP_DATA_PORT(i32) #1

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @SLICE_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
