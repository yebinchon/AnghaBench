; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_set_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_set_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi_dev = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sun6i_csi_config }
%struct.sun6i_csi_config = type { i32, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"Horizontal length should be 2 times of width for packed YUV formats!\0A\00", align 1
@CSI_CH_HSIZE_REG = common dso_local global i32 0, align 4
@CSI_CH_VSIZE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Calculating pixelformat(0x%x)'s bytesperline as a packed format\0A\00", align 1
@CSI_CH_BUF_LEN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun6i_csi_dev*)* @sun6i_csi_set_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_csi_set_window(%struct.sun6i_csi_dev* %0) #0 {
  %2 = alloca %struct.sun6i_csi_dev*, align 8
  %3 = alloca %struct.sun6i_csi_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sun6i_csi_dev* %0, %struct.sun6i_csi_dev** %2, align 8
  %10 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %11 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.sun6i_csi_config* %12, %struct.sun6i_csi_config** %3, align 8
  %13 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %14 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.sun6i_csi_config*, %struct.sun6i_csi_config** %3, align 8
  %17 = getelementptr inbounds %struct.sun6i_csi_config, %struct.sun6i_csi_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sun6i_csi_config*, %struct.sun6i_csi_config** %3, align 8
  %20 = getelementptr inbounds %struct.sun6i_csi_config, %struct.sun6i_csi_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.sun6i_csi_config*, %struct.sun6i_csi_config** %3, align 8
  %24 = getelementptr inbounds %struct.sun6i_csi_config, %struct.sun6i_csi_config* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %33 [
    i32 130, label %26
    i32 128, label %26
    i32 134, label %26
    i32 133, label %26
  ]

26:                                               ; preds = %1, %1, %1, %1
  %27 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %28 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %9, align 4
  br label %34

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %33, %26
  %35 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %36 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CSI_CH_HSIZE_REG, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @CSI_CH_HSIZE_HOR_LEN(i32 %39)
  %41 = call i32 @CSI_CH_HSIZE_HOR_START(i32 0)
  %42 = or i32 %40, %41
  %43 = call i32 @regmap_write(i32 %37, i32 %38, i32 %42)
  %44 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %45 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CSI_CH_VSIZE_REG, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @CSI_CH_VSIZE_VER_LEN(i32 %48)
  %50 = call i32 @CSI_CH_VSIZE_VER_START(i32 0)
  %51 = or i32 %49, %50
  %52 = call i32 @regmap_write(i32 %46, i32 %47, i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.sun6i_csi_config*, %struct.sun6i_csi_config** %3, align 8
  %56 = getelementptr inbounds %struct.sun6i_csi_config, %struct.sun6i_csi_config* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %105 [
    i32 139, label %58
    i32 138, label %58
    i32 136, label %58
    i32 137, label %58
    i32 135, label %58
    i32 132, label %68
    i32 129, label %68
    i32 131, label %87
  ]

58:                                               ; preds = %34, %34, %34, %34, %34
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 -1, i32* %67, align 4
  br label %126

68:                                               ; preds = %34, %34
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %8, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sdiv i32 %82, 2
  %84 = add nsw i32 %79, %83
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 %84, i32* %86, align 4
  br label %126

87:                                               ; preds = %34
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sdiv i32 %89, 2
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %98, %101
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32 %102, i32* %104, align 4
  br label %126

105:                                              ; preds = %34
  %106 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %107 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sun6i_csi_config*, %struct.sun6i_csi_config** %3, align 8
  %110 = getelementptr inbounds %struct.sun6i_csi_config, %struct.sun6i_csi_config* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, ...) @dev_dbg(i32 %108, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load %struct.sun6i_csi_config*, %struct.sun6i_csi_config** %3, align 8
  %114 = getelementptr inbounds %struct.sun6i_csi_config, %struct.sun6i_csi_config* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sun6i_csi_get_bpp(i32 %115)
  %117 = load %struct.sun6i_csi_config*, %struct.sun6i_csi_config** %3, align 8
  %118 = getelementptr inbounds %struct.sun6i_csi_config, %struct.sun6i_csi_config* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %116, %119
  %121 = sdiv i32 %120, 8
  store i32 %121, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 -1, i32* %123, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32 -1, i32* %125, align 4
  br label %126

126:                                              ; preds = %105, %87, %68, %58
  %127 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %128 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CSI_CH_BUF_LEN_REG, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @CSI_CH_BUF_LEN_BUF_LEN_C(i32 %131)
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @CSI_CH_BUF_LEN_BUF_LEN_Y(i32 %133)
  %135 = or i32 %132, %134
  %136 = call i32 @regmap_write(i32 %129, i32 %130, i32 %135)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @CSI_CH_HSIZE_HOR_LEN(i32) #1

declare dso_local i32 @CSI_CH_HSIZE_HOR_START(i32) #1

declare dso_local i32 @CSI_CH_VSIZE_VER_LEN(i32) #1

declare dso_local i32 @CSI_CH_VSIZE_VER_START(i32) #1

declare dso_local i32 @sun6i_csi_get_bpp(i32) #1

declare dso_local i32 @CSI_CH_BUF_LEN_BUF_LEN_C(i32) #1

declare dso_local i32 @CSI_CH_BUF_LEN_BUF_LEN_Y(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
