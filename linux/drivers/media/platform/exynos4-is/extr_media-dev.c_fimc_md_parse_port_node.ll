; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_parse_port_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_parse_port_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.fimc_source_info }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.fimc_source_info = type { i32, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FIMC_MAX_SENSORS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Remote device at %pOF not found\0A\00", align 1
@V4L2_MBUS_PARALLEL = common dso_local global i64 0, align 8
@FIMC_BUS_TYPE_ITU_601 = common dso_local global i32 0, align 4
@FIMC_BUS_TYPE_ITU_656 = common dso_local global i32 0, align 4
@FIMC_BUS_TYPE_MIPI_CSI2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Wrong port id (%u) at node %pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"i2c-isp\00", align 1
@FIMC_BUS_TYPE_ISP_WRITEBACK = common dso_local global i32 0, align 4
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*, %struct.device_node*, i32)* @fimc_md_parse_port_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_md_parse_port_node(%struct.fimc_md* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fimc_md*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fimc_source_info*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %13 = alloca i32, align 4
  store %struct.fimc_md* %0, %struct.fimc_md** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %15 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  store %struct.fimc_source_info* %20, %struct.fimc_source_info** %8, align 8
  %21 = bitcast %struct.v4l2_fwnode_endpoint* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = call %struct.device_node* @of_get_next_child(%struct.device_node* %22, i32* null)
  store %struct.device_node* %23, %struct.device_node** %10, align 8
  %24 = load %struct.device_node*, %struct.device_node** %10, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %193

27:                                               ; preds = %3
  %28 = load %struct.device_node*, %struct.device_node** %10, align 8
  %29 = call i32 @of_fwnode_handle(%struct.device_node* %28)
  %30 = call i32 @v4l2_fwnode_endpoint_parse(i32 %29, %struct.v4l2_fwnode_endpoint* %12)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.device_node*, %struct.device_node** %10, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %4, align 4
  br label %193

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FIMC_MAX_SENSORS, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %37
  %50 = load %struct.device_node*, %struct.device_node** %10, align 8
  %51 = call i32 @of_node_put(%struct.device_node* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %193

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %58, 1
  %60 = load %struct.fimc_source_info*, %struct.fimc_source_info** %8, align 8
  %61 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.device_node*, %struct.device_node** %10, align 8
  %63 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %62)
  store %struct.device_node* %63, %struct.device_node** %9, align 8
  %64 = load %struct.device_node*, %struct.device_node** %10, align 8
  %65 = call i32 @of_node_put(%struct.device_node* %64)
  %66 = load %struct.device_node*, %struct.device_node** %9, align 8
  %67 = icmp eq %struct.device_node* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %54
  %69 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %70 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %69, i32 0, i32 3
  %71 = load %struct.device_node*, %struct.device_node** %10, align 8
  %72 = call i32 @v4l2_info(i32* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.device_node* %71)
  store i32 0, i32* %4, align 4
  br label %193

73:                                               ; preds = %54
  %74 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @fimc_input_is_parallel(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @V4L2_MBUS_PARALLEL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @FIMC_BUS_TYPE_ITU_601, align 4
  %86 = load %struct.fimc_source_info*, %struct.fimc_source_info** %8, align 8
  %87 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %92

88:                                               ; preds = %79
  %89 = load i32, i32* @FIMC_BUS_TYPE_ITU_656, align 4
  %90 = load %struct.fimc_source_info*, %struct.fimc_source_info** %8, align 8
  %91 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fimc_source_info*, %struct.fimc_source_info** %8, align 8
  %98 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %118

99:                                               ; preds = %73
  %100 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @fimc_input_is_mipi_csi(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @FIMC_BUS_TYPE_MIPI_CSI2, align 4
  %107 = load %struct.fimc_source_info*, %struct.fimc_source_info** %8, align 8
  %108 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %117

109:                                              ; preds = %99
  %110 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %111 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.device_node*, %struct.device_node** %9, align 8
  %116 = call i32 @v4l2_err(i32* %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %114, %struct.device_node* %115)
  br label %117

117:                                              ; preds = %109, %105
  br label %118

118:                                              ; preds = %117, %92
  %119 = load %struct.device_node*, %struct.device_node** %9, align 8
  %120 = call %struct.device_node* @of_get_parent(%struct.device_node* %119)
  store %struct.device_node* %120, %struct.device_node** %11, align 8
  %121 = load %struct.device_node*, %struct.device_node** %11, align 8
  %122 = call i64 @of_node_name_eq(%struct.device_node* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* @FIMC_BUS_TYPE_ISP_WRITEBACK, align 4
  %126 = load %struct.fimc_source_info*, %struct.fimc_source_info** %8, align 8
  %127 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %134

128:                                              ; preds = %118
  %129 = load %struct.fimc_source_info*, %struct.fimc_source_info** %8, align 8
  %130 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.fimc_source_info*, %struct.fimc_source_info** %8, align 8
  %133 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %128, %124
  %135 = load %struct.device_node*, %struct.device_node** %11, align 8
  %136 = call i32 @of_node_put(%struct.device_node* %135)
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %139 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %138, i32 0, i32 1
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %140)
  %142 = icmp uge i32 %137, %141
  %143 = zext i1 %142 to i32
  %144 = call i64 @WARN_ON(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %134
  %147 = load %struct.device_node*, %struct.device_node** %9, align 8
  %148 = call i32 @of_node_put(%struct.device_node* %147)
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %193

151:                                              ; preds = %134
  %152 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %153 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %154 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %153, i32 0, i32 1
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  store i32 %152, i32* %160, align 4
  %161 = load %struct.device_node*, %struct.device_node** %9, align 8
  %162 = call i32 @of_fwnode_handle(%struct.device_node* %161)
  %163 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %164 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %163, i32 0, i32 1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  store i32 %162, i32* %171, align 4
  %172 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %173 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %172, i32 0, i32 2
  %174 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %175 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %174, i32 0, i32 1
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = call i32 @v4l2_async_notifier_add_subdev(i32* %173, %struct.TYPE_11__* %180)
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %151
  %185 = load %struct.device_node*, %struct.device_node** %9, align 8
  %186 = call i32 @of_node_put(%struct.device_node* %185)
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %4, align 4
  br label %193

188:                                              ; preds = %151
  %189 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %190 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %188, %184, %146, %68, %49, %33, %26
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #2

declare dso_local i32 @v4l2_info(i32*, i8*, %struct.device_node*) #2

declare dso_local i64 @fimc_input_is_parallel(i32) #2

declare dso_local i64 @fimc_input_is_mipi_csi(i32) #2

declare dso_local i32 @v4l2_err(i32*, i8*, i32, %struct.device_node*) #2

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #2

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #2

declare dso_local i32 @v4l2_async_notifier_add_subdev(i32*, %struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
