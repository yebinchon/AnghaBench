; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_endpoint_parse_parallel_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_endpoint_parse_parallel_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_fwnode_bus_parallel }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"hsync-active\00", align 1
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hsync-active %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"vsync-active\00", align 1
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"vsync-active %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"field-even-active\00", align 1
@V4L2_MBUS_FIELD_EVEN_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_FIELD_EVEN_LOW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"field-even-active %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"pclk-sample\00", align 1
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"pclk-sample %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"data-active\00", align 1
@V4L2_MBUS_DATA_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_DATA_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"data-active %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"slave-mode\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"slave mode\0A\00", align 1
@V4L2_MBUS_MASTER = common dso_local global i32 0, align 4
@V4L2_MBUS_SLAVE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"bus-width %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"data-shift\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"data-shift %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"sync-on-green-active\00", align 1
@V4L2_MBUS_VIDEO_SOG_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VIDEO_SOG_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [25 x i8] c"sync-on-green-active %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"data-enable-active\00", align 1
@V4L2_MBUS_DATA_ENABLE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_DATA_ENABLE_LOW = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [23 x i8] c"data-enable-active %s\0A\00", align 1
@PARALLEL_MBUS_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*, i32)* @v4l2_fwnode_endpoint_parse_parallel_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_fwnode_endpoint_parse_parallel_bus(%struct.fwnode_handle* %0, %struct.v4l2_fwnode_endpoint* %1, i32 %2) #0 {
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_fwnode_bus_parallel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.v4l2_fwnode_bus_parallel* %12, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 128
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %3
  %19 = load %struct.v4l2_fwnode_bus_parallel*, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_parallel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %24 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %28 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  br label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %47 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %39, %22
  %49 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %50 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %9)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  %54 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  br label %65

63:                                               ; preds = %52
  %64 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %73 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %65, %48
  %75 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %76 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %9)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @V4L2_MBUS_FIELD_EVEN_HIGH, align 4
  %80 = load i32, i32* @V4L2_MBUS_FIELD_EVEN_LOW, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* @V4L2_MBUS_FIELD_EVEN_HIGH, align 4
  br label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @V4L2_MBUS_FIELD_EVEN_LOW, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = icmp ne i8* %95, null
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %99 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %91, %74
  %101 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %102 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %9)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %106 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  br label %117

115:                                              ; preds = %104
  %116 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load i8*, i8** %9, align 8
  %122 = icmp ne i8* %121, null
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %125 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %117, %100
  %127 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %128 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %9)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %152, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* @V4L2_MBUS_DATA_ACTIVE_HIGH, align 4
  %132 = load i32, i32* @V4L2_MBUS_DATA_ACTIVE_LOW, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %8, align 4
  %137 = load i8*, i8** %9, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i32, i32* @V4L2_MBUS_DATA_ACTIVE_HIGH, align 4
  br label %143

141:                                              ; preds = %130
  %142 = load i32, i32* @V4L2_MBUS_DATA_ACTIVE_LOW, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %8, align 4
  %147 = load i8*, i8** %9, align 8
  %148 = icmp ne i8* %147, null
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %151 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %143, %126
  %153 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %154 = call i64 @fwnode_property_present(%struct.fwnode_handle* %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %158 = load i32, i32* @V4L2_MBUS_MASTER, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %8, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* @V4L2_MBUS_SLAVE, align 4
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  br label %173

165:                                              ; preds = %152
  %166 = load i32, i32* @V4L2_MBUS_SLAVE, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %8, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* @V4L2_MBUS_MASTER, align 4
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %165, %156
  %174 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %175 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %9)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %173
  %178 = load i8*, i8** %9, align 8
  %179 = load %struct.v4l2_fwnode_bus_parallel*, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  %180 = getelementptr inbounds %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_parallel* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %181)
  br label %183

183:                                              ; preds = %177, %173
  %184 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %185 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %9)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %183
  %188 = load i8*, i8** %9, align 8
  %189 = load %struct.v4l2_fwnode_bus_parallel*, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  %190 = getelementptr inbounds %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_parallel* %189, i32 0, i32 2
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %191)
  br label %193

193:                                              ; preds = %187, %183
  %194 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %195 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %194, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8** %9)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %219, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* @V4L2_MBUS_VIDEO_SOG_ACTIVE_HIGH, align 4
  %199 = load i32, i32* @V4L2_MBUS_VIDEO_SOG_ACTIVE_LOW, align 4
  %200 = or i32 %198, %199
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %8, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %8, align 4
  %204 = load i8*, i8** %9, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = load i32, i32* @V4L2_MBUS_VIDEO_SOG_ACTIVE_HIGH, align 4
  br label %210

208:                                              ; preds = %197
  %209 = load i32, i32* @V4L2_MBUS_VIDEO_SOG_ACTIVE_LOW, align 4
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i32 [ %207, %206 ], [ %209, %208 ]
  %212 = load i32, i32* %8, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %8, align 4
  %214 = load i8*, i8** %9, align 8
  %215 = icmp ne i8* %214, null
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %218 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8* %217)
  br label %219

219:                                              ; preds = %210, %193
  %220 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %221 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8** %9)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %245, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* @V4L2_MBUS_DATA_ENABLE_HIGH, align 4
  %225 = load i32, i32* @V4L2_MBUS_DATA_ENABLE_LOW, align 4
  %226 = or i32 %224, %225
  %227 = xor i32 %226, -1
  %228 = load i32, i32* %8, align 4
  %229 = and i32 %228, %227
  store i32 %229, i32* %8, align 4
  %230 = load i8*, i8** %9, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %234

232:                                              ; preds = %223
  %233 = load i32, i32* @V4L2_MBUS_DATA_ENABLE_HIGH, align 4
  br label %236

234:                                              ; preds = %223
  %235 = load i32, i32* @V4L2_MBUS_DATA_ENABLE_LOW, align 4
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %238 = load i32, i32* %8, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %8, align 4
  %240 = load i8*, i8** %9, align 8
  %241 = icmp ne i8* %240, null
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %244 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %243)
  br label %245

245:                                              ; preds = %236, %219
  %246 = load i32, i32* %6, align 4
  switch i32 %246, label %247 [
    i32 128, label %262
    i32 129, label %268
  ]

247:                                              ; preds = %245
  %248 = load i32, i32* %8, align 4
  %249 = load %struct.v4l2_fwnode_bus_parallel*, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  %250 = getelementptr inbounds %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_parallel* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @PARALLEL_MBUS_FLAGS, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %247
  %256 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %257 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %256, i32 0, i32 0
  store i32 128, i32* %257, align 8
  br label %261

258:                                              ; preds = %247
  %259 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %260 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %259, i32 0, i32 0
  store i32 129, i32* %260, align 8
  br label %261

261:                                              ; preds = %258, %255
  br label %277

262:                                              ; preds = %245
  %263 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %264 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %263, i32 0, i32 0
  store i32 128, i32* %264, align 8
  %265 = load i32, i32* %8, align 4
  %266 = load %struct.v4l2_fwnode_bus_parallel*, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  %267 = getelementptr inbounds %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_parallel* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  br label %277

268:                                              ; preds = %245
  %269 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %270 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %269, i32 0, i32 0
  store i32 129, i32* %270, align 8
  %271 = load i32, i32* %8, align 4
  %272 = load i32, i32* @PARALLEL_MBUS_FLAGS, align 4
  %273 = xor i32 %272, -1
  %274 = and i32 %271, %273
  %275 = load %struct.v4l2_fwnode_bus_parallel*, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  %276 = getelementptr inbounds %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_parallel* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  br label %277

277:                                              ; preds = %268, %262, %261
  ret void
}

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i8**) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @fwnode_property_present(%struct.fwnode_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
