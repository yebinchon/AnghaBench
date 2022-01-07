; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_pdata_from_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_pdata_from_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pxa_camera_dev = type { i32, i32 }
%struct.v4l2_async_subdev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@PXA_CAMERA_MCLK_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"could not find endpoint\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"could not parse endpoint\0A\00", align 1
@PXA_CAMERA_DATAWIDTH_4 = common dso_local global i32 0, align 4
@PXA_CAMERA_DATAWIDTH_5 = common dso_local global i32 0, align 4
@PXA_CAMERA_DATAWIDTH_8 = common dso_local global i32 0, align 4
@PXA_CAMERA_DATAWIDTH_9 = common dso_local global i32 0, align 4
@PXA_CAMERA_DATAWIDTH_10 = common dso_local global i32 0, align 4
@V4L2_MBUS_MASTER = common dso_local global i32 0, align 4
@PXA_CAMERA_MASTER = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@PXA_CAMERA_HSP = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@PXA_CAMERA_VSP = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@PXA_CAMERA_PCLK_EN = common dso_local global i32 0, align 4
@PXA_CAMERA_PCP = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i32 0, align 4
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"no remote for %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.pxa_camera_dev*, %struct.v4l2_async_subdev*)* @pxa_camera_pdata_from_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_pdata_from_dt(%struct.device* %0, %struct.pxa_camera_dev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pxa_camera_dev*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.pxa_camera_dev* %1, %struct.pxa_camera_dev** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %10, align 8
  %16 = bitcast %struct.v4l2_fwnode_endpoint* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = load %struct.device_node*, %struct.device_node** %10, align 8
  %18 = call i32 @of_property_read_u32(%struct.device_node* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @PXA_CAMERA_MCLK_EN, align 4
  %23 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %24 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %29 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %3
  %31 = load %struct.device_node*, %struct.device_node** %10, align 8
  %32 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %31, i32* null)
  store %struct.device_node* %32, %struct.device_node** %10, align 8
  %33 = load %struct.device_node*, %struct.device_node** %10, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %180

40:                                               ; preds = %30
  %41 = load %struct.device_node*, %struct.device_node** %10, align 8
  %42 = call i32 @of_fwnode_handle(%struct.device_node* %41)
  %43 = call i32 @v4l2_fwnode_endpoint_parse(i32 %42, %struct.v4l2_fwnode_endpoint* %11)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %176

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %84 [
    i32 4, label %54
    i32 5, label %60
    i32 8, label %66
    i32 9, label %72
    i32 10, label %78
  ]

54:                                               ; preds = %49
  %55 = load i32, i32* @PXA_CAMERA_DATAWIDTH_4, align 4
  %56 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %57 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %85

60:                                               ; preds = %49
  %61 = load i32, i32* @PXA_CAMERA_DATAWIDTH_5, align 4
  %62 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %63 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %85

66:                                               ; preds = %49
  %67 = load i32, i32* @PXA_CAMERA_DATAWIDTH_8, align 4
  %68 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %69 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %85

72:                                               ; preds = %49
  %73 = load i32, i32* @PXA_CAMERA_DATAWIDTH_9, align 4
  %74 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %75 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %85

78:                                               ; preds = %49
  %79 = load i32, i32* @PXA_CAMERA_DATAWIDTH_10, align 4
  %80 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %81 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %85

84:                                               ; preds = %49
  br label %85

85:                                               ; preds = %84, %78, %72, %66, %60, %54
  %86 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @V4L2_MBUS_MASTER, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* @PXA_CAMERA_MASTER, align 4
  %95 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %96 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %85
  %100 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i32, i32* @PXA_CAMERA_HSP, align 4
  %109 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %110 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %99
  %114 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load i32, i32* @PXA_CAMERA_VSP, align 4
  %123 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %124 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %113
  %128 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load i32, i32* @PXA_CAMERA_PCLK_EN, align 4
  %137 = load i32, i32* @PXA_CAMERA_PCP, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %140 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %135, %127
  %144 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load i32, i32* @PXA_CAMERA_PCLK_EN, align 4
  %153 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %154 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %143
  %158 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %159 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %160 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.device_node*, %struct.device_node** %10, align 8
  %162 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %161)
  store %struct.device_node* %162, %struct.device_node** %9, align 8
  %163 = load %struct.device_node*, %struct.device_node** %9, align 8
  %164 = icmp ne %struct.device_node* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %157
  %166 = load %struct.device_node*, %struct.device_node** %9, align 8
  %167 = call i32 @of_fwnode_handle(%struct.device_node* %166)
  %168 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %169 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 4
  br label %175

171:                                              ; preds = %157
  %172 = load %struct.device*, %struct.device** %5, align 8
  %173 = load %struct.device_node*, %struct.device_node** %10, align 8
  %174 = call i32 @dev_notice(%struct.device* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %173)
  br label %175

175:                                              ; preds = %171, %165
  br label %176

176:                                              ; preds = %175, %46
  %177 = load %struct.device_node*, %struct.device_node** %10, align 8
  %178 = call i32 @of_node_put(%struct.device_node* %177)
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %176, %35
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #2

declare dso_local i32 @dev_notice(%struct.device*, i8*, %struct.device_node*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
