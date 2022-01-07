; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.vsp1_device = type { i32, i32 }
%struct.vsp1_entity = type { i64, i64, i32, %struct.v4l2_subdev, i32*, %struct.TYPE_8__*, i32*, %struct.vsp1_device*, i32, %struct.TYPE_6__* }
%struct.v4l2_subdev = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.v4l2_subdev_ops = type { i32 }

@vsp1_routes = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i8* null, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsp1_entity_init(%struct.vsp1_device* %0, %struct.vsp1_entity* %1, i8* %2, i32 %3, %struct.v4l2_subdev_ops* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vsp1_device*, align 8
  %9 = alloca %struct.vsp1_entity*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_subdev_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.v4l2_subdev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %8, align 8
  store %struct.vsp1_entity* %1, %struct.vsp1_entity** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.v4l2_subdev_ops* %4, %struct.v4l2_subdev_ops** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %52, %6
  %18 = load i32, i32* %15, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vsp1_routes, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vsp1_routes, align 8
  %24 = load i32, i32* %15, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %30 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %22
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vsp1_routes, align 8
  %35 = load i32, i32* %15, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %41 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vsp1_routes, align 8
  %46 = load i32, i32* %15, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %50 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %49, i32 0, i32 9
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %50, align 8
  br label %55

51:                                               ; preds = %33, %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %15, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %17

55:                                               ; preds = %44, %17
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vsp1_routes, align 8
  %58 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %57)
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %204

63:                                               ; preds = %55
  %64 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %65 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %64, i32 0, i32 8
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.vsp1_device*, %struct.vsp1_device** %8, align 8
  %68 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %69 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %68, i32 0, i32 7
  store %struct.vsp1_device* %67, %struct.vsp1_device** %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sub i32 %70, 1
  %72 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %73 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.vsp1_device*, %struct.vsp1_device** %8, align 8
  %75 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @devm_kcalloc(i32 %76, i32 %77, i32 8, i32 %78)
  %80 = bitcast i8* %79 to %struct.TYPE_8__*
  %81 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %82 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %81, i32 0, i32 5
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %82, align 8
  %83 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %84 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %83, i32 0, i32 5
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = icmp eq %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %63
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  br label %204

90:                                               ; preds = %63
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub i32 %93, 1
  %95 = icmp ult i32 %92, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  %98 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %99 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %98, i32 0, i32 5
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i8* %97, i8** %104, align 8
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %15, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %91

108:                                              ; preds = %91
  %109 = load %struct.vsp1_device*, %struct.vsp1_device** %8, align 8
  %110 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub i32 %112, 1
  %114 = call i32 @max(i32 %113, i32 1)
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i8* @devm_kcalloc(i32 %111, i32 %114, i32 4, i32 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %119 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %118, i32 0, i32 6
  store i32* %117, i32** %119, align 8
  %120 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %121 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %108
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %7, align 4
  br label %204

127:                                              ; preds = %108
  %128 = load i32, i32* %11, align 4
  %129 = icmp ugt i32 %128, 1
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  br label %134

132:                                              ; preds = %127
  %133 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i8* [ %131, %130 ], [ %133, %132 ]
  %136 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %137 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %136, i32 0, i32 5
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sub i32 %139, 1
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i8* %135, i8** %143, align 8
  %144 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %145 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %145, i32 0, i32 0
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %149 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %148, i32 0, i32 5
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = call i32 @media_entity_pads_init(%struct.TYPE_7__* %146, i32 %147, %struct.TYPE_8__* %150)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %134
  %155 = load i32, i32* %16, align 4
  store i32 %155, i32* %7, align 4
  br label %204

156:                                              ; preds = %134
  %157 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %158 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %157, i32 0, i32 3
  store %struct.v4l2_subdev* %158, %struct.v4l2_subdev** %14, align 8
  %159 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %160 = load %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_ops** %12, align 8
  %161 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %159, %struct.v4l2_subdev_ops* %160)
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %164 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 8
  %166 = load %struct.vsp1_device*, %struct.vsp1_device** %8, align 8
  %167 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %166, i32 0, i32 1
  %168 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %169 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  store i32* %167, i32** %170, align 8
  %171 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %172 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %173 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %177 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.vsp1_device*, %struct.vsp1_device** %8, align 8
  %180 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @dev_name(i32 %181)
  %183 = load i8*, i8** %10, align 8
  %184 = call i32 @snprintf(i32 %178, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %182, i8* %183)
  %185 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %186 = call i32 @vsp1_entity_init_cfg(%struct.v4l2_subdev* %185, i32* null)
  %187 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %188 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %187, i32 0, i32 3
  %189 = call i32* @v4l2_subdev_alloc_pad_config(%struct.v4l2_subdev* %188)
  %190 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %191 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %190, i32 0, i32 4
  store i32* %189, i32** %191, align 8
  %192 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %193 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %156
  %197 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %198 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %198, i32 0, i32 0
  %200 = call i32 @media_entity_cleanup(%struct.TYPE_7__* %199)
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %7, align 4
  br label %204

203:                                              ; preds = %156
  store i32 0, i32* %7, align 4
  br label %204

204:                                              ; preds = %203, %196, %154, %124, %87, %60
  %205 = load i32, i32* %7, align 4
  ret i32 %205
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, %struct.v4l2_subdev_ops*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i32 @vsp1_entity_init_cfg(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32* @v4l2_subdev_alloc_pad_config(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
