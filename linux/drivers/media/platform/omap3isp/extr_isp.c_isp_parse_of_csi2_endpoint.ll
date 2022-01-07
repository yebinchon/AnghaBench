; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_parse_of_csi2_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_parse_of_csi2_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32*, i32*, i32 }
%struct.isp_bus_cfg = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"clock lane polarity %u, pos %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"data lane %u polarity %u, pos %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.v4l2_fwnode_endpoint*, %struct.isp_bus_cfg*)* @isp_parse_of_csi2_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_parse_of_csi2_endpoint(%struct.device* %0, %struct.v4l2_fwnode_endpoint* %1, %struct.isp_bus_cfg* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %6 = alloca %struct.isp_bus_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %5, align 8
  store %struct.isp_bus_cfg* %2, %struct.isp_bus_cfg** %6, align 8
  %8 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %14 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %12, i32* %18, align 8
  %19 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %27 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %25, i32* %31, align 4
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %34 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %41 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %46)
  %48 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %54 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 8
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %130, %3
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %60 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %58, %63
  br i1 %64, label %65, label %133

65:                                               ; preds = %57
  %66 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %67 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %76 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i32 %74, i32* %84, align 4
  %85 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %96 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  store i32 %94, i32* %104, align 4
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %108 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %119 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %117, i32 %128)
  br label %130

130:                                              ; preds = %65
  %131 = load i32, i32* %7, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %57

133:                                              ; preds = %57
  %134 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %6, align 8
  %135 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
