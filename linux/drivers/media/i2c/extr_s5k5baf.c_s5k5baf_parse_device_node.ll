; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_parse_device_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_parse_device_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32, i32, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"no device-tree node provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@S5K5BAF_DEFAULT_MCLK_FREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"using default %u Hz clock frequency\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"no endpoint defined at node %pOF\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"unsupported bus in endpoint defined at node %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k5baf*, %struct.device*)* @s5k5baf_parse_device_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_parse_device_node(%struct.s5k5baf* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5k5baf*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %9 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = bitcast %struct.v4l2_fwnode_endpoint* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %91

21:                                               ; preds = %2
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %24 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %23, i32 0, i32 3
  %25 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load i32, i32* @S5K5BAF_DEFAULT_MCLK_FREQ, align 4
  %30 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %31 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %34 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_info(%struct.device* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %28, %21
  %38 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %39 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @s5k5baf_parse_gpios(i32 %40, %struct.device* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %91

47:                                               ; preds = %37
  %48 = load %struct.device_node*, %struct.device_node** %6, align 8
  %49 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %48, i32* null)
  store %struct.device_node* %49, %struct.device_node** %7, align 8
  %50 = load %struct.device_node*, %struct.device_node** %7, align 8
  %51 = icmp ne %struct.device_node* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %91

58:                                               ; preds = %47
  %59 = load %struct.device_node*, %struct.device_node** %7, align 8
  %60 = call i32 @of_fwnode_handle(%struct.device_node* %59)
  %61 = call i32 @v4l2_fwnode_endpoint_parse(i32 %60, %struct.v4l2_fwnode_endpoint* %8)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.device_node*, %struct.device_node** %7, align 8
  %63 = call i32 @of_node_put(%struct.device_node* %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %91

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %8, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %72 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %74 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %84 [
    i32 129, label %76
    i32 128, label %83
  ]

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %8, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %82 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %90

83:                                               ; preds = %68
  br label %90

84:                                               ; preds = %68
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load %struct.device_node*, %struct.device_node** %6, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %83, %76
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %84, %66, %52, %45, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #2

declare dso_local i32 @s5k5baf_parse_gpios(i32, %struct.device*) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, i32*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
