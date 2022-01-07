; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vtc.c_xvtc_generator_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vtc.c_xvtc_generator_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvtc_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xvtc_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@XVTC_POLARITY = common dso_local global i32 0, align 4
@XVTC_POLARITY_ACTIVE_CHROMA_POL = common dso_local global i32 0, align 4
@XVTC_POLARITY_ACTIVE_VIDEO_POL = common dso_local global i32 0, align 4
@XVTC_POLARITY_HSYNC_POL = common dso_local global i32 0, align 4
@XVTC_POLARITY_VSYNC_POL = common dso_local global i32 0, align 4
@XVTC_POLARITY_HBLANK_POL = common dso_local global i32 0, align 4
@XVTC_POLARITY_VBLANK_POL = common dso_local global i32 0, align 4
@XVTC_ENCODING = common dso_local global i32 0, align 4
@XVTC_ACTIVE_SIZE = common dso_local global i32 0, align 4
@XVTC_ACTIVE_VSIZE_SHIFT = common dso_local global i32 0, align 4
@XVTC_ACTIVE_HSIZE_SHIFT = common dso_local global i32 0, align 4
@XVTC_HSIZE = common dso_local global i32 0, align 4
@XVTC_VSIZE = common dso_local global i32 0, align 4
@XVTC_HSYNC = common dso_local global i32 0, align 4
@XVTC_HSYNC_END_SHIFT = common dso_local global i32 0, align 4
@XVTC_HSYNC_START_SHIFT = common dso_local global i32 0, align 4
@XVTC_F0_VBLANK_H = common dso_local global i32 0, align 4
@XVTC_F0_VSYNC_V = common dso_local global i32 0, align 4
@XVTC_F0_VSYNC_VEND_SHIFT = common dso_local global i32 0, align 4
@XVTC_F0_VSYNC_VSTART_SHIFT = common dso_local global i32 0, align 4
@XVTC_F0_VSYNC_H = common dso_local global i32 0, align 4
@XVIP_CTRL_CONTROL = common dso_local global i32 0, align 4
@XVTC_CONTROL_ACTIVE_CHROMA_POL_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_ACTIVE_VIDEO_POL_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_HSYNC_POL_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_VSYNC_POL_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_HBLANK_POL_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_VBLANK_POL_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_CHROMA_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_VBLANK_HOFF_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_VSYNC_END_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_VSYNC_START_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_ACTIVE_VSIZE_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_FRAME_VSIZE_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_HSYNC_END_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_HSYNC_START_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_ACTIVE_HSIZE_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_FRAME_HSIZE_SRC = common dso_local global i32 0, align 4
@XVTC_CONTROL_GEN_ENABLE = common dso_local global i32 0, align 4
@XVIP_CTRL_CONTROL_REG_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xvtc_generator_start(%struct.xvtc_device* %0, %struct.xvtc_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xvtc_device*, align 8
  %5 = alloca %struct.xvtc_config*, align 8
  %6 = alloca i32, align 4
  store %struct.xvtc_device* %0, %struct.xvtc_device** %4, align 8
  store %struct.xvtc_config* %1, %struct.xvtc_config** %5, align 8
  %7 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %8 = getelementptr inbounds %struct.xvtc_device, %struct.xvtc_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %141

14:                                               ; preds = %2
  %15 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %16 = getelementptr inbounds %struct.xvtc_device, %struct.xvtc_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_prepare_enable(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %141

24:                                               ; preds = %14
  %25 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %26 = load i32, i32* @XVTC_POLARITY, align 4
  %27 = load i32, i32* @XVTC_POLARITY_ACTIVE_CHROMA_POL, align 4
  %28 = load i32, i32* @XVTC_POLARITY_ACTIVE_VIDEO_POL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @XVTC_POLARITY_HSYNC_POL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @XVTC_POLARITY_VSYNC_POL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @XVTC_POLARITY_HBLANK_POL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @XVTC_POLARITY_VBLANK_POL, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @xvtc_gen_write(%struct.xvtc_device* %25, i32 %26, i32 %37)
  %39 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %40 = load i32, i32* @XVTC_ENCODING, align 4
  %41 = call i32 @xvtc_gen_write(%struct.xvtc_device* %39, i32 %40, i32 0)
  %42 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %43 = load i32, i32* @XVTC_ACTIVE_SIZE, align 4
  %44 = load %struct.xvtc_config*, %struct.xvtc_config** %5, align 8
  %45 = getelementptr inbounds %struct.xvtc_config, %struct.xvtc_config* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @XVTC_ACTIVE_VSIZE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load %struct.xvtc_config*, %struct.xvtc_config** %5, align 8
  %50 = getelementptr inbounds %struct.xvtc_config, %struct.xvtc_config* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @XVTC_ACTIVE_HSIZE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %48, %53
  %55 = call i32 @xvtc_gen_write(%struct.xvtc_device* %42, i32 %43, i32 %54)
  %56 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %57 = load i32, i32* @XVTC_HSIZE, align 4
  %58 = load %struct.xvtc_config*, %struct.xvtc_config** %5, align 8
  %59 = getelementptr inbounds %struct.xvtc_config, %struct.xvtc_config* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @xvtc_gen_write(%struct.xvtc_device* %56, i32 %57, i32 %60)
  %62 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %63 = load i32, i32* @XVTC_VSIZE, align 4
  %64 = load %struct.xvtc_config*, %struct.xvtc_config** %5, align 8
  %65 = getelementptr inbounds %struct.xvtc_config, %struct.xvtc_config* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xvtc_gen_write(%struct.xvtc_device* %62, i32 %63, i32 %66)
  %68 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %69 = load i32, i32* @XVTC_HSYNC, align 4
  %70 = load %struct.xvtc_config*, %struct.xvtc_config** %5, align 8
  %71 = getelementptr inbounds %struct.xvtc_config, %struct.xvtc_config* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @XVTC_HSYNC_END_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load %struct.xvtc_config*, %struct.xvtc_config** %5, align 8
  %76 = getelementptr inbounds %struct.xvtc_config, %struct.xvtc_config* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @XVTC_HSYNC_START_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %74, %79
  %81 = call i32 @xvtc_gen_write(%struct.xvtc_device* %68, i32 %69, i32 %80)
  %82 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %83 = load i32, i32* @XVTC_F0_VBLANK_H, align 4
  %84 = call i32 @xvtc_gen_write(%struct.xvtc_device* %82, i32 %83, i32 0)
  %85 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %86 = load i32, i32* @XVTC_F0_VSYNC_V, align 4
  %87 = load %struct.xvtc_config*, %struct.xvtc_config** %5, align 8
  %88 = getelementptr inbounds %struct.xvtc_config, %struct.xvtc_config* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @XVTC_F0_VSYNC_VEND_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load %struct.xvtc_config*, %struct.xvtc_config** %5, align 8
  %93 = getelementptr inbounds %struct.xvtc_config, %struct.xvtc_config* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @XVTC_F0_VSYNC_VSTART_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %91, %96
  %98 = call i32 @xvtc_gen_write(%struct.xvtc_device* %85, i32 %86, i32 %97)
  %99 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %100 = load i32, i32* @XVTC_F0_VSYNC_H, align 4
  %101 = call i32 @xvtc_gen_write(%struct.xvtc_device* %99, i32 %100, i32 0)
  %102 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %103 = getelementptr inbounds %struct.xvtc_device, %struct.xvtc_device* %102, i32 0, i32 0
  %104 = load i32, i32* @XVIP_CTRL_CONTROL, align 4
  %105 = load i32, i32* @XVTC_CONTROL_ACTIVE_CHROMA_POL_SRC, align 4
  %106 = load i32, i32* @XVTC_CONTROL_ACTIVE_VIDEO_POL_SRC, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @XVTC_CONTROL_HSYNC_POL_SRC, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @XVTC_CONTROL_VSYNC_POL_SRC, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @XVTC_CONTROL_HBLANK_POL_SRC, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @XVTC_CONTROL_VBLANK_POL_SRC, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @XVTC_CONTROL_CHROMA_SRC, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @XVTC_CONTROL_VBLANK_HOFF_SRC, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @XVTC_CONTROL_VSYNC_END_SRC, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @XVTC_CONTROL_VSYNC_START_SRC, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @XVTC_CONTROL_ACTIVE_VSIZE_SRC, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @XVTC_CONTROL_FRAME_VSIZE_SRC, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @XVTC_CONTROL_HSYNC_END_SRC, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @XVTC_CONTROL_HSYNC_START_SRC, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @XVTC_CONTROL_ACTIVE_HSIZE_SRC, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @XVTC_CONTROL_FRAME_HSIZE_SRC, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @XVTC_CONTROL_GEN_ENABLE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @XVIP_CTRL_CONTROL_REG_UPDATE, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @xvip_write(%struct.TYPE_2__* %103, i32 %104, i32 %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %24, %22, %11
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @xvtc_gen_write(%struct.xvtc_device*, i32, i32) #1

declare dso_local i32 @xvip_write(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
