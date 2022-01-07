; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { %struct.TYPE_8__*, %struct.tda1997x_platform_data }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tda1997x_platform_data = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@HS_HREF_SEL_HREF_VHREF = common dso_local global i32 0, align 4
@VS_VREF_SEL_VREF_HDMI = common dso_local global i32 0, align 4
@DE_FREF_SEL_DE_VHREF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_DATA_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"nxp,vidout-portcfg\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"nxp,vidout-portcfg missing\0A\00", align 1
@AUDFMT_TYPE_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"nxp,audout-format\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"i2s\00", align 1
@AUDFMT_TYPE_I2S = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@AUDFMT_TYPE_SPDIF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"nxp,audout-format invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"nxp,audout-layout\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"nxp,audout-layout invalid\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"nxp,audout-width\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"nxp,audout-width invalid\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"nxp,audout-mclk-fs\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"nxp,audout-mclk-fs invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda1997x_state*)* @tda1997x_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_parse_dt(%struct.tda1997x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca %struct.tda1997x_platform_data*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %3, align 8
  %15 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %16 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %15, i32 0, i32 1
  store %struct.tda1997x_platform_data* %16, %struct.tda1997x_platform_data** %4, align 8
  %17 = bitcast %struct.v4l2_fwnode_endpoint* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 12, i1 false)
  %18 = load i32, i32* @HS_HREF_SEL_HREF_VHREF, align 4
  %19 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @VS_VREF_SEL_VREF_HDMI, align 4
  %22 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %22, i32 0, i32 12
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @DE_FREF_SEL_DE_VHREF, align 4
  %25 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %26 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %28 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.device_node*, %struct.device_node** %31, align 8
  store %struct.device_node* %32, %struct.device_node** %7, align 8
  %33 = load %struct.device_node*, %struct.device_node** %7, align 8
  %34 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %33, i32* null)
  store %struct.device_node* %34, %struct.device_node** %6, align 8
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = icmp ne %struct.device_node* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %227

40:                                               ; preds = %1
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = call i32 @of_fwnode_handle(%struct.device_node* %41)
  %43 = call i32 @v4l2_fwnode_endpoint_parse(i32 %42, %struct.v4l2_fwnode_endpoint* %5)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i32 @of_node_put(%struct.device_node* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %2, align 4
  br label %227

50:                                               ; preds = %40
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = call i32 @of_node_put(%struct.device_node* %51)
  %53 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %56 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %67 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %50
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %75 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @V4L2_MBUS_DATA_ACTIVE_LOW, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %83 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %76
  %85 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %90 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load %struct.device_node*, %struct.device_node** %7, align 8
  %92 = call i32 @of_property_count_u32_elems(%struct.device_node* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %131

95:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %127, %95
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sdiv i32 %98, 2
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 9
  br label %104

104:                                              ; preds = %101, %96
  %105 = phi i1 [ false, %96 ], [ %103, %101 ]
  br i1 %105, label %106, label %130

106:                                              ; preds = %104
  %107 = load %struct.device_node*, %struct.device_node** %7, align 8
  %108 = load i32, i32* %14, align 4
  %109 = mul nsw i32 %108, 2
  %110 = call i32 @of_property_read_u32_index(%struct.device_node* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %109, i32* %12)
  %111 = load %struct.device_node*, %struct.device_node** %7, align 8
  %112 = load i32, i32* %14, align 4
  %113 = mul nsw i32 %112, 2
  %114 = add nsw i32 %113, 1
  %115 = call i32 @of_property_read_u32_index(%struct.device_node* %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %114, i32* %13)
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 9
  br i1 %117, label %118, label %126

118:                                              ; preds = %106
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %121 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %118, %106
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %96

130:                                              ; preds = %104
  br label %138

131:                                              ; preds = %84
  %132 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %133 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = call i32 @v4l_err(%struct.TYPE_8__* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %227

138:                                              ; preds = %130
  %139 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %140 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %139, i32 0, i32 4
  store i32 1, i32* %140, align 8
  %141 = load i32, i32* @AUDFMT_TYPE_DISABLED, align 4
  %142 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %143 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %142, i32 0, i32 8
  store i32 %141, i32* %143, align 8
  %144 = load %struct.device_node*, %struct.device_node** %7, align 8
  %145 = call i32 @of_property_read_string(%struct.device_node* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %226, label %147

147:                                              ; preds = %138
  %148 = load i8*, i8** %9, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32, i32* @AUDFMT_TYPE_I2S, align 4
  %153 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %154 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %153, i32 0, i32 8
  store i32 %152, i32* %154, align 8
  br label %171

155:                                              ; preds = %147
  %156 = load i8*, i8** %9, align 8
  %157 = call i64 @strcmp(i8* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32, i32* @AUDFMT_TYPE_SPDIF, align 4
  %161 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %162 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %161, i32 0, i32 8
  store i32 %160, i32* %162, align 8
  br label %170

163:                                              ; preds = %155
  %164 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %165 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %164, i32 0, i32 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = call i32 @v4l_err(%struct.TYPE_8__* %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %227

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %170, %151
  %172 = load %struct.device_node*, %struct.device_node** %7, align 8
  %173 = call i32 @of_property_read_u32(%struct.device_node* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %11)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %189, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %11, align 4
  switch i32 %176, label %178 [
    i32 0, label %177
    i32 1, label %177
  ]

177:                                              ; preds = %175, %175
  br label %185

178:                                              ; preds = %175
  %179 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %180 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %179, i32 0, i32 0
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = call i32 @v4l_err(%struct.TYPE_8__* %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %227

185:                                              ; preds = %177
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %188 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %187, i32 0, i32 5
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %171
  %190 = load %struct.device_node*, %struct.device_node** %7, align 8
  %191 = call i32 @of_property_read_u32(%struct.device_node* %190, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %11)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %207, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %11, align 4
  switch i32 %194, label %196 [
    i32 16, label %195
    i32 32, label %195
  ]

195:                                              ; preds = %193, %193
  br label %203

196:                                              ; preds = %193
  %197 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %198 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %197, i32 0, i32 0
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = call i32 @v4l_err(%struct.TYPE_8__* %199, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %2, align 4
  br label %227

203:                                              ; preds = %195
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %206 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %203, %189
  %208 = load %struct.device_node*, %struct.device_node** %7, align 8
  %209 = call i32 @of_property_read_u32(%struct.device_node* %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32* %11)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %225, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* %11, align 4
  switch i32 %212, label %214 [
    i32 512, label %213
    i32 256, label %213
    i32 128, label %213
    i32 64, label %213
    i32 32, label %213
    i32 16, label %213
  ]

213:                                              ; preds = %211, %211, %211, %211, %211, %211
  br label %221

214:                                              ; preds = %211
  %215 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %216 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %215, i32 0, i32 0
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = call i32 @v4l_err(%struct.TYPE_8__* %217, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %2, align 4
  br label %227

221:                                              ; preds = %213
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %224 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %223, i32 0, i32 7
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %221, %207
  br label %226

226:                                              ; preds = %225, %138
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %226, %214, %196, %178, %163, %131, %46, %37
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, i32*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #2

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #2

declare dso_local i32 @v4l_err(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
