; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_setup_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_setup_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi_dev = type { i32, i32, %struct.sun6i_csi }
%struct.sun6i_csi = type { %struct.TYPE_4__, %struct.v4l2_fwnode_endpoint }
%struct.TYPE_4__ = type { i64 }
%struct.v4l2_fwnode_endpoint = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8, i32 }

@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED_TB = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED_BT = common dso_local global i64 0, align 8
@CSI_IF_CFG_REG = common dso_local global i32 0, align 4
@CSI_IF_CFG_CSI_IF_MASK = common dso_local global i32 0, align 4
@CSI_IF_CFG_MIPI_IF_MASK = common dso_local global i32 0, align 4
@CSI_IF_CFG_IF_DATA_WIDTH_MASK = common dso_local global i32 0, align 4
@CSI_IF_CFG_CLK_POL_MASK = common dso_local global i32 0, align 4
@CSI_IF_CFG_VREF_POL_MASK = common dso_local global i32 0, align 4
@CSI_IF_CFG_HREF_POL_MASK = common dso_local global i32 0, align 4
@CSI_IF_CFG_FIELD_MASK = common dso_local global i32 0, align 4
@CSI_IF_CFG_SRC_TYPE_MASK = common dso_local global i32 0, align 4
@CSI_IF_CFG_SRC_TYPE_INTERLACED = common dso_local global i32 0, align 4
@CSI_IF_CFG_SRC_TYPE_PROGRESSED = common dso_local global i32 0, align 4
@CSI_IF_CFG_MIPI_IF_CSI = common dso_local global i32 0, align 4
@CSI_IF_CFG_CSI_IF_YUV422_16BIT = common dso_local global i32 0, align 4
@CSI_IF_CFG_CSI_IF_YUV422_INTLV = common dso_local global i32 0, align 4
@V4L2_MBUS_FIELD_EVEN_LOW = common dso_local global i32 0, align 4
@CSI_IF_CFG_FIELD_POSITIVE = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@CSI_IF_CFG_VREF_POL_POSITIVE = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@CSI_IF_CFG_HREF_POL_POSITIVE = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@CSI_IF_CFG_CLK_POL_FALLING_EDGE = common dso_local global i32 0, align 4
@CSI_IF_CFG_CSI_IF_BT1120 = common dso_local global i32 0, align 4
@CSI_IF_CFG_CSI_IF_BT656 = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported bus type: %d\0A\00", align 1
@CSI_IF_CFG_IF_DATA_WIDTH_8BIT = common dso_local global i32 0, align 4
@CSI_IF_CFG_IF_DATA_WIDTH_10BIT = common dso_local global i32 0, align 4
@CSI_IF_CFG_IF_DATA_WIDTH_12BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported bus width: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun6i_csi_dev*)* @sun6i_csi_setup_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_csi_setup_bus(%struct.sun6i_csi_dev* %0) #0 {
  %2 = alloca %struct.sun6i_csi_dev*, align 8
  %3 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %4 = alloca %struct.sun6i_csi*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sun6i_csi_dev* %0, %struct.sun6i_csi_dev** %2, align 8
  %9 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %10 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %10, i32 0, i32 1
  store %struct.v4l2_fwnode_endpoint* %11, %struct.v4l2_fwnode_endpoint** %3, align 8
  %12 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %13 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %12, i32 0, i32 2
  store %struct.sun6i_csi* %13, %struct.sun6i_csi** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.sun6i_csi*, %struct.sun6i_csi** %4, align 8
  %15 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %1
  %21 = load %struct.sun6i_csi*, %struct.sun6i_csi** %4, align 8
  %22 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_FIELD_INTERLACED_TB, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.sun6i_csi*, %struct.sun6i_csi** %4, align 8
  %29 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_FIELD_INTERLACED_BT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20, %1
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 4
  store i8 %40, i8* %5, align 1
  %41 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %42 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CSI_IF_CFG_REG, align 4
  %45 = call i32 @regmap_read(i32 %43, i32 %44, i32* %7)
  %46 = load i32, i32* @CSI_IF_CFG_CSI_IF_MASK, align 4
  %47 = load i32, i32* @CSI_IF_CFG_MIPI_IF_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CSI_IF_CFG_IF_DATA_WIDTH_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CSI_IF_CFG_CLK_POL_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CSI_IF_CFG_VREF_POL_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @CSI_IF_CFG_HREF_POL_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CSI_IF_CFG_FIELD_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CSI_IF_CFG_SRC_TYPE_MASK, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %35
  %67 = load i32, i32* @CSI_IF_CFG_SRC_TYPE_INTERLACED, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %74

70:                                               ; preds = %35
  %71 = load i32, i32* @CSI_IF_CFG_SRC_TYPE_PROGRESSED, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %3, align 8
  %76 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %172 [
    i32 128, label %78
    i32 129, label %134
  ]

78:                                               ; preds = %74
  %79 = load i32, i32* @CSI_IF_CFG_MIPI_IF_CSI, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %3, align 8
  %83 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %6, align 4
  %87 = load i8, i8* %5, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 16
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* @CSI_IF_CFG_CSI_IF_YUV422_16BIT, align 4
  br label %94

92:                                               ; preds = %78
  %93 = load i32, i32* @CSI_IF_CFG_CSI_IF_YUV422_INTLV, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @V4L2_MBUS_FIELD_EVEN_LOW, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i32, i32* @CSI_IF_CFG_FIELD_POSITIVE, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %94
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @CSI_IF_CFG_VREF_POL_POSITIVE, align 4
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @CSI_IF_CFG_HREF_POL_POSITIVE, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @CSI_IF_CFG_CLK_POL_FALLING_EDGE, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %124
  br label %181

134:                                              ; preds = %74
  %135 = load i32, i32* @CSI_IF_CFG_MIPI_IF_CSI, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %3, align 8
  %139 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %6, align 4
  %143 = load i8, i8* %5, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 16
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = load i32, i32* @CSI_IF_CFG_CSI_IF_BT1120, align 4
  br label %150

148:                                              ; preds = %134
  %149 = load i32, i32* @CSI_IF_CFG_CSI_IF_BT656, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = load i32, i32* %7, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @V4L2_MBUS_FIELD_EVEN_LOW, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %150
  %159 = load i32, i32* @CSI_IF_CFG_FIELD_POSITIVE, align 4
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %158, %150
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* @CSI_IF_CFG_CLK_POL_FALLING_EDGE, align 4
  %169 = load i32, i32* %7, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %167, %162
  br label %181

172:                                              ; preds = %74
  %173 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %174 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %3, align 8
  %177 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = trunc i32 %178 to i8
  %180 = call i32 @dev_warn(i32 %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 zeroext %179)
  br label %181

181:                                              ; preds = %172, %171, %133
  %182 = load i8, i8* %5, align 1
  %183 = zext i8 %182 to i32
  switch i32 %183, label %197 [
    i32 8, label %184
    i32 10, label %188
    i32 12, label %192
    i32 16, label %196
  ]

184:                                              ; preds = %181
  %185 = load i32, i32* @CSI_IF_CFG_IF_DATA_WIDTH_8BIT, align 4
  %186 = load i32, i32* %7, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %7, align 4
  br label %203

188:                                              ; preds = %181
  %189 = load i32, i32* @CSI_IF_CFG_IF_DATA_WIDTH_10BIT, align 4
  %190 = load i32, i32* %7, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %7, align 4
  br label %203

192:                                              ; preds = %181
  %193 = load i32, i32* @CSI_IF_CFG_IF_DATA_WIDTH_12BIT, align 4
  %194 = load i32, i32* %7, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %7, align 4
  br label %203

196:                                              ; preds = %181
  br label %203

197:                                              ; preds = %181
  %198 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %199 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i8, i8* %5, align 1
  %202 = call i32 @dev_warn(i32 %200, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %201)
  br label %203

203:                                              ; preds = %197, %196, %192, %188, %184
  %204 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %205 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @CSI_IF_CFG_REG, align 4
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @regmap_write(i32 %206, i32 %207, i32 %208)
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i8 zeroext) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
