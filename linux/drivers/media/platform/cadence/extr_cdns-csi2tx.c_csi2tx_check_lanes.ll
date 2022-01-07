; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_check_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_check_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi2tx_priv = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not parse v4l2 endpoint\0A\00", align 1
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Unsupported media bus type: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Current configuration uses more lanes than supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid lane[%d] number: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi2tx_priv*)* @csi2tx_check_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2tx_check_lanes(%struct.csi2tx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csi2tx_priv*, align 8
  %4 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.csi2tx_priv* %0, %struct.csi2tx_priv** %3, align 8
  %8 = bitcast %struct.v4l2_fwnode_endpoint* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device_node* @of_graph_get_endpoint_by_regs(i32 %13, i32 0, i32 0)
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %116

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call i32 @of_fwnode_handle(%struct.device_node* %21)
  %23 = call i32 @v4l2_fwnode_endpoint_parse(i32 %22, %struct.v4l2_fwnode_endpoint* %4)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %3, align 8
  %28 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %112

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %3, align 8
  %38 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %112

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %3, align 8
  %51 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %3, align 8
  %53 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %3, align 8
  %56 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %45
  %60 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %3, align 8
  %61 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %62, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %112

66:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %100, %66
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %3, align 8
  %70 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %99

83:                                               ; preds = %73
  %84 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %3, align 8
  %85 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %112

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %67

103:                                              ; preds = %67
  %104 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %3, align 8
  %105 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @memcpy(i32 %106, i32* %110, i32 4)
  br label %112

112:                                              ; preds = %103, %83, %59, %36, %26
  %113 = load %struct.device_node*, %struct.device_node** %5, align 8
  %114 = call i32 @of_node_put(%struct.device_node* %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %17
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(i32, i32, i32) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
