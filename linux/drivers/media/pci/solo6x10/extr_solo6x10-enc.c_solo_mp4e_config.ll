; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_mp4e_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_mp4e_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32 }

@SOLO_VE_CFG0 = common dso_local global i32 0, align 4
@IRQ_LEVEL = common dso_local global i32 0, align 4
@SOLO_VE_INSERT_INDEX = common dso_local global i32 0, align 4
@SOLO_DEV_6010 = common dso_local global i64 0, align 8
@SOLO_VE_CFG1 = common dso_local global i32 0, align 4
@SOLO_VE_WMRK_POLY = common dso_local global i32 0, align 4
@SOLO_VE_VMRK_INIT_KEY = common dso_local global i32 0, align 4
@SOLO_VE_WMRK_STRL = common dso_local global i32 0, align 4
@SOLO_DEV_6110 = common dso_local global i64 0, align 8
@SOLO_VE_WMRK_ENABLE = common dso_local global i32 0, align 4
@SOLO_VE_ENCRYP_POLY = common dso_local global i32 0, align 4
@SOLO_VE_ENCRYP_INIT = common dso_local global i32 0, align 4
@SOLO_VE_ATTR = common dso_local global i32 0, align 4
@SOLO_VE_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@SOLO_EREF_EXT_SIZE = common dso_local global i32 0, align 4
@SOLO_VE_COMPT_MOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @solo_mp4e_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_mp4e_config(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %5 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %6 = load i32, i32* @SOLO_VE_CFG0, align 4
  %7 = load i32, i32* @IRQ_LEVEL, align 4
  %8 = call i32 @SOLO_VE_INTR_CTRL(i32 %7)
  %9 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %10 = call i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev* %9)
  %11 = ashr i32 %10, 16
  %12 = call i32 @SOLO_VE_BLOCK_SIZE(i32 %11)
  %13 = or i32 %8, %12
  %14 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %15 = call i32 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev* %14)
  %16 = ashr i32 %15, 16
  %17 = call i32 @SOLO_VE_BLOCK_BASE(i32 %16)
  %18 = or i32 %13, %17
  %19 = call i32 @solo_reg_write(%struct.solo_dev* %5, i32 %6, i32 %18)
  %20 = call i32 @SOLO_VE_BYTE_ALIGN(i32 2)
  %21 = load i32, i32* @SOLO_VE_INSERT_INDEX, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @SOLO_VE_MOTION_MODE(i32 0)
  %24 = or i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %26 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SOLO_DEV_6010, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %1
  %31 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %32 = call i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev* %31)
  %33 = ashr i32 %32, 24
  %34 = and i32 %33, 15
  %35 = call i32 @SOLO_VE_MPEG_SIZE_H(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %39 = call i32 @SOLO_JPEG_EXT_SIZE(%struct.solo_dev* %38)
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 15
  %42 = call i32 @SOLO_VE_JPEG_SIZE_H(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %30, %1
  %46 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %47 = load i32, i32* @SOLO_VE_CFG1, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @solo_reg_write(%struct.solo_dev* %46, i32 %47, i32 %48)
  %50 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %51 = load i32, i32* @SOLO_VE_WMRK_POLY, align 4
  %52 = call i32 @solo_reg_write(%struct.solo_dev* %50, i32 %51, i32 0)
  %53 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %54 = load i32, i32* @SOLO_VE_VMRK_INIT_KEY, align 4
  %55 = call i32 @solo_reg_write(%struct.solo_dev* %53, i32 %54, i32 0)
  %56 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %57 = load i32, i32* @SOLO_VE_WMRK_STRL, align 4
  %58 = call i32 @solo_reg_write(%struct.solo_dev* %56, i32 %57, i32 0)
  %59 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %60 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SOLO_DEV_6110, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %45
  %65 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %66 = load i32, i32* @SOLO_VE_WMRK_ENABLE, align 4
  %67 = call i32 @solo_reg_write(%struct.solo_dev* %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %64, %45
  %69 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %70 = load i32, i32* @SOLO_VE_ENCRYP_POLY, align 4
  %71 = call i32 @solo_reg_write(%struct.solo_dev* %69, i32 %70, i32 0)
  %72 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %73 = load i32, i32* @SOLO_VE_ENCRYP_INIT, align 4
  %74 = call i32 @solo_reg_write(%struct.solo_dev* %72, i32 %73, i32 0)
  %75 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %76 = load i32, i32* @SOLO_VE_ATTR, align 4
  %77 = load i32, i32* @SOLO_VE_LITTLE_ENDIAN, align 4
  %78 = call i32 @SOLO_COMP_ATTR_FCODE(i32 1)
  %79 = or i32 %77, %78
  %80 = call i32 @SOLO_COMP_TIME_INC(i32 0)
  %81 = or i32 %79, %80
  %82 = call i32 @SOLO_COMP_TIME_WIDTH(i32 15)
  %83 = or i32 %81, %82
  %84 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %85 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SOLO_DEV_6010, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 9, i32 10
  %91 = call i32 @SOLO_DCT_INTERVAL(i32 %90)
  %92 = or i32 %83, %91
  %93 = call i32 @solo_reg_write(%struct.solo_dev* %75, i32 %76, i32 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %124, %68
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %97 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %94
  %101 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @SOLO_VE_CH_REF_BASE(i32 %102)
  %104 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %105 = call i32 @SOLO_EREF_EXT_ADDR(%struct.solo_dev* %104)
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @SOLO_EREF_EXT_SIZE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %105, %108
  %110 = ashr i32 %109, 16
  %111 = call i32 @solo_reg_write(%struct.solo_dev* %101, i32 %103, i32 %110)
  %112 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @SOLO_VE_CH_REF_BASE_E(i32 %113)
  %115 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %116 = call i32 @SOLO_EREF_EXT_ADDR(%struct.solo_dev* %115)
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 16
  %119 = load i32, i32* @SOLO_EREF_EXT_SIZE, align 4
  %120 = mul nsw i32 %118, %119
  %121 = add nsw i32 %116, %120
  %122 = ashr i32 %121, 16
  %123 = call i32 @solo_reg_write(%struct.solo_dev* %112, i32 %114, i32 %122)
  br label %124

124:                                              ; preds = %100
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %94

127:                                              ; preds = %94
  %128 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %129 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SOLO_DEV_6110, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %135 = load i32, i32* @SOLO_VE_COMPT_MOT, align 4
  %136 = call i32 @solo_reg_write(%struct.solo_dev* %134, i32 %135, i32 262152)
  br label %153

137:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %149, %137
  %139 = load i32, i32* %3, align 4
  %140 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %141 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %138
  %145 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @SOLO_VE_CH_MOT(i32 %146)
  %148 = call i32 @solo_reg_write(%struct.solo_dev* %145, i32 %147, i32 256)
  br label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %138

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %133
  ret void
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_VE_INTR_CTRL(i32) #1

declare dso_local i32 @SOLO_VE_BLOCK_SIZE(i32) #1

declare dso_local i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_VE_BLOCK_BASE(i32) #1

declare dso_local i32 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_VE_BYTE_ALIGN(i32) #1

declare dso_local i32 @SOLO_VE_MOTION_MODE(i32) #1

declare dso_local i32 @SOLO_VE_MPEG_SIZE_H(i32) #1

declare dso_local i32 @SOLO_VE_JPEG_SIZE_H(i32) #1

declare dso_local i32 @SOLO_JPEG_EXT_SIZE(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_COMP_ATTR_FCODE(i32) #1

declare dso_local i32 @SOLO_COMP_TIME_INC(i32) #1

declare dso_local i32 @SOLO_COMP_TIME_WIDTH(i32) #1

declare dso_local i32 @SOLO_DCT_INTERVAL(i32) #1

declare dso_local i32 @SOLO_VE_CH_REF_BASE(i32) #1

declare dso_local i32 @SOLO_EREF_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_VE_CH_REF_BASE_E(i32) #1

declare dso_local i32 @SOLO_VE_CH_MOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
