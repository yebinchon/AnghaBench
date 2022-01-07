; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-sama5d2-isc.c_isc_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-sama5d2-isc.c_isc_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.isc_device = type { i32 }
%struct.isc_subdev_entity = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Remote device at %pOF not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not parse the endpoint\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_HPOL_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_VPOL_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_PPOL_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_BT656 = common dso_local global i64 0, align 8
@ISC_PFE_CFG0_CCIR_CRC = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_CCIR656 = common dso_local global i32 0, align 4
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.isc_device*)* @isc_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_parse_dt(%struct.device* %0, %struct.isc_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.isc_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.isc_subdev_entity*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_fwnode_endpoint, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.isc_device* %1, %struct.isc_device** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  store %struct.device_node* null, %struct.device_node** %7, align 8
  %16 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %17 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  br label %19

19:                                               ; preds = %2, %32, %122
  %20 = bitcast %struct.v4l2_fwnode_endpoint* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %21, %struct.device_node* %22)
  store %struct.device_node* %23, %struct.device_node** %7, align 8
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %144

27:                                               ; preds = %19
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %28)
  store %struct.device_node* %29, %struct.device_node** %8, align 8
  %30 = load %struct.device_node*, %struct.device_node** %8, align 8
  %31 = icmp ne %struct.device_node* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.device_node*, %struct.device_node** %7, align 8
  %35 = call i32 @dev_notice(%struct.device* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.device_node* %34)
  br label %19

36:                                               ; preds = %27
  %37 = load %struct.device_node*, %struct.device_node** %7, align 8
  %38 = call i32 @of_fwnode_handle(%struct.device_node* %37)
  %39 = call i32 @v4l2_fwnode_endpoint_parse(i32 %38, %struct.v4l2_fwnode_endpoint* %12)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.device_node*, %struct.device_node** %8, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %140

49:                                               ; preds = %36
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.isc_subdev_entity* @devm_kzalloc(%struct.device* %50, i32 16, i32 %51)
  store %struct.isc_subdev_entity* %52, %struct.isc_subdev_entity** %9, align 8
  %53 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %54 = icmp ne %struct.isc_subdev_entity* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.device_node*, %struct.device_node** %8, align 8
  %57 = call i32 @of_node_put(%struct.device_node* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %140

60:                                               ; preds = %49
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.TYPE_8__* @kzalloc(i32 8, i32 %61)
  %63 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %64 = getelementptr inbounds %struct.isc_subdev_entity, %struct.isc_subdev_entity* %63, i32 0, i32 2
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %64, align 8
  %65 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %66 = getelementptr inbounds %struct.isc_subdev_entity, %struct.isc_subdev_entity* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %60
  %70 = load %struct.device_node*, %struct.device_node** %8, align 8
  %71 = call i32 @of_node_put(%struct.device_node* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %140

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i32, i32* @ISC_PFE_CFG0_HPOL_LOW, align 4
  %85 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %86 = getelementptr inbounds %struct.isc_subdev_entity, %struct.isc_subdev_entity* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* @ISC_PFE_CFG0_VPOL_LOW, align 4
  %94 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %95 = getelementptr inbounds %struct.isc_subdev_entity, %struct.isc_subdev_entity* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* @ISC_PFE_CFG0_PPOL_LOW, align 4
  %105 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %106 = getelementptr inbounds %struct.isc_subdev_entity, %struct.isc_subdev_entity* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %98
  %110 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @V4L2_MBUS_BT656, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i32, i32* @ISC_PFE_CFG0_CCIR_CRC, align 4
  %116 = load i32, i32* @ISC_PFE_CFG0_CCIR656, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %119 = getelementptr inbounds %struct.isc_subdev_entity, %struct.isc_subdev_entity* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %114, %109
  %123 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %124 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %125 = getelementptr inbounds %struct.isc_subdev_entity, %struct.isc_subdev_entity* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  %128 = load %struct.device_node*, %struct.device_node** %8, align 8
  %129 = call i32 @of_fwnode_handle(%struct.device_node* %128)
  %130 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %131 = getelementptr inbounds %struct.isc_subdev_entity, %struct.isc_subdev_entity* %130, i32 0, i32 2
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 4
  %135 = load %struct.isc_subdev_entity*, %struct.isc_subdev_entity** %9, align 8
  %136 = getelementptr inbounds %struct.isc_subdev_entity, %struct.isc_subdev_entity* %135, i32 0, i32 1
  %137 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %138 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %137, i32 0, i32 0
  %139 = call i32 @list_add_tail(i32* %136, i32* %138)
  br label %19

140:                                              ; preds = %69, %55, %42
  %141 = load %struct.device_node*, %struct.device_node** %7, align 8
  %142 = call i32 @of_node_put(%struct.device_node* %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %26
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, %struct.device_node*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.isc_subdev_entity* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
