; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv76xx_state = type { %struct.TYPE_10__, %struct.TYPE_7__** }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ADV76XX_PAGE_IO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"default-input\00", align 1
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@V4L2_MBUS_BT656 = common dso_local global i64 0, align 8
@ADV76XX_INT1_CONFIG_ACTIVE_HIGH = common dso_local global i32 0, align 4
@ADV7604_OP_FORMAT_MODE0 = common dso_local global i32 0, align 4
@ADV7604_BUS_ORDER_RGB = common dso_local global i32 0, align 4
@ADV76XX_DR_STR_MEDIUM_HIGH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv76xx_state*)* @adv76xx_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv76xx_parse_dt(%struct.adv76xx_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv76xx_state*, align 8
  %4 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adv76xx_state* %0, %struct.adv76xx_state** %3, align 8
  %10 = bitcast %struct.v4l2_fwnode_endpoint* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %12 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %14 = load i64, i64* @ADV76XX_PAGE_IO, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %13, i64 %14
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %6, align 8
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %20, i32* null)
  store %struct.device_node* %21, %struct.device_node** %5, align 8
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %124

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32 @of_fwnode_handle(%struct.device_node* %28)
  %30 = call i32 @v4l2_fwnode_endpoint_parse(i32 %29, %struct.v4l2_fwnode_endpoint* %4)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %124

37:                                               ; preds = %27
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %9)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %44 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  br label %50

46:                                               ; preds = %37
  %47 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %48 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %61 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %50
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %70 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %79 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @V4L2_MBUS_BT656, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %88 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 4
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* @ADV76XX_INT1_CONFIG_ACTIVE_HIGH, align 4
  %92 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %93 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 13
  store i32 %91, i32* %94, align 8
  %95 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %96 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 12
  store i64 0, i64* %97, align 8
  %98 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %99 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 11
  store i64 0, i64* %100, align 8
  %101 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %102 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 5
  store i32 1, i32* %103, align 4
  %104 = load i32, i32* @ADV7604_OP_FORMAT_MODE0, align 4
  %105 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %106 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 10
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @ADV7604_BUS_ORDER_RGB, align 4
  %109 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %110 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 9
  store i32 %108, i32* %111, align 8
  %112 = load i8*, i8** @ADV76XX_DR_STR_MEDIUM_HIGH, align 8
  %113 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %114 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 8
  store i8* %112, i8** %115, align 8
  %116 = load i8*, i8** @ADV76XX_DR_STR_MEDIUM_HIGH, align 8
  %117 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %118 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 7
  store i8* %116, i8** %119, align 8
  %120 = load i8*, i8** @ADV76XX_DR_STR_MEDIUM_HIGH, align 8
  %121 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %122 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 6
  store i8* %120, i8** %123, align 8
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %90, %35, %24
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, i32*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
