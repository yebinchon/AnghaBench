; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_parallel_subdevice_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_parallel_subdevice_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32, %struct.TYPE_10__*, %struct.TYPE_11__, %struct.TYPE_9__, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32, %struct.v4l2_subdev* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.v4l2_subdev = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i64, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_mbus_code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Found media bus format for %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unsupported media bus format for %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_tvnorms = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@g_std = common dso_local global i32 0, align 4
@rvin_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_ALPHA_COMPONENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*, %struct.v4l2_subdev*)* @rvin_parallel_subdevice_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_parallel_subdevice_attach(%struct.rvin_dev* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvin_dev*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_mbus_code_enum, align 8
  %7 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  %8 = bitcast %struct.v4l2_subdev_mbus_code_enum* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %6, i32 0, i32 3
  %10 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %10, i32* %9, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %13 = call i32 @rvin_find_pad(%struct.v4l2_subdev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %201

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %21 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %25 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %26 = call i32 @rvin_find_pad(%struct.v4l2_subdev* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 0, %29 ], [ %31, %30 ]
  %34 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %35 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %39 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %38, i32 0, i32 5
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %46 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %47 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store %struct.v4l2_subdev* %45, %struct.v4l2_subdev** %49, align 8
  store i32 0, i32* %3, align 4
  br label %201

50:                                               ; preds = %32
  %51 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %52 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %6, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %55 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %6, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  br label %60

60:                                               ; preds = %94, %50
  %61 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %62 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %67 = load i32, i32* @pad, align 4
  %68 = load i32, i32* @enum_mbus_code, align 4
  %69 = call i32 (%struct.v4l2_subdev*, i32, i32, i32*, ...) @v4l2_subdev_call(%struct.v4l2_subdev* %66, i32 %67, i32 %68, i32* null, %struct.v4l2_subdev_mbus_code_enum* %6)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %65, %60
  %73 = phi i1 [ false, %60 ], [ %71, %65 ]
  br i1 %73, label %74, label %95

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %6, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %93 [
    i32 128, label %80
    i32 130, label %80
    i32 129, label %80
    i32 131, label %80
    i32 132, label %80
  ]

80:                                               ; preds = %74, %74, %74, %74, %74
  %81 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %6, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %84 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %90 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @vin_dbg(%struct.rvin_dev* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91)
  br label %94

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93, %80
  br label %60

95:                                               ; preds = %72
  %96 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %97 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %103 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @vin_err(%struct.rvin_dev* %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %201

108:                                              ; preds = %95
  %109 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %110 = load i32, i32* @video, align 4
  %111 = load i32, i32* @g_tvnorms, align 4
  %112 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %113 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = call i32 (%struct.v4l2_subdev*, i32, i32, i32*, ...) @v4l2_subdev_call(%struct.v4l2_subdev* %109, i32 %110, i32 %111, i32* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %108
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @ENOIOCTLCMD, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %201

130:                                              ; preds = %123, %118, %108
  %131 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %132 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %133 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %135 = load i32, i32* @video, align 4
  %136 = load i32, i32* @g_std, align 4
  %137 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %138 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %137, i32 0, i32 4
  %139 = call i32 (%struct.v4l2_subdev*, i32, i32, i32*, ...) @v4l2_subdev_call(%struct.v4l2_subdev* %134, i32 %135, i32 %136, i32* %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %130
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @ENOIOCTLCMD, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %3, align 4
  br label %201

149:                                              ; preds = %142, %130
  %150 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %151 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %150, i32 0, i32 2
  %152 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_11__* %151, i32 16)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %3, align 4
  br label %201

157:                                              ; preds = %149
  %158 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %159 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %158, i32 0, i32 2
  %160 = load i32, i32* @V4L2_CID_ALPHA_COMPONENT, align 4
  %161 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_11__* %159, i32* @rvin_ctrl_ops, i32 %160, i32 0, i32 255, i32 1, i32 255)
  %162 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %163 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %157
  %168 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %169 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %7, align 4
  %172 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %173 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %172, i32 0, i32 2
  %174 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_11__* %173)
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %3, align 4
  br label %201

176:                                              ; preds = %157
  %177 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %178 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %177, i32 0, i32 2
  %179 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %180 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @v4l2_ctrl_add_handler(%struct.TYPE_11__* %178, i32 %181, i32* null, i32 1)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %176
  %186 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %187 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %186, i32 0, i32 2
  %188 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_11__* %187)
  %189 = load i32, i32* %7, align 4
  store i32 %189, i32* %3, align 4
  br label %201

190:                                              ; preds = %176
  %191 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %192 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %191, i32 0, i32 2
  %193 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %194 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  store %struct.TYPE_11__* %192, %struct.TYPE_11__** %195, align 8
  %196 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %197 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %198 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  store %struct.v4l2_subdev* %196, %struct.v4l2_subdev** %200, align 8
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %190, %185, %167, %155, %147, %128, %100, %44, %16
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rvin_find_pad(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, ...) #2

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, i32, i32) #2

declare dso_local i32 @vin_err(%struct.rvin_dev*, i8*, i32) #2

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_11__*) #2

declare dso_local i32 @v4l2_ctrl_add_handler(%struct.TYPE_11__*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
