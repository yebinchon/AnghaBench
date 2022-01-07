; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_octeon_pfvf_handshake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_octeon_pfvf_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_12__** }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.octeon_mbox_cmd = type { i32*, i64, i64, i64, i64, i64*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.lio_version = type { i32, i32, i8* }

@.str = private unnamed_addr constant [25 x i8] c"requesting info from pf\0A\00", align 1
@OCTEON_MBOX_REQUEST = common dso_local global i32 0, align 4
@OCTEON_VF_ACTIVE = common dso_local global i32 0, align 4
@LIQUIDIO_BASE_MAJOR_VERSION = common dso_local global i8* null, align 8
@LIQUIDIO_BASE_MINOR_VERSION = common dso_local global i32 0, align 4
@LIQUIDIO_BASE_MICRO_VERSION = common dso_local global i32 0, align 4
@octeon_pfvf_hs_callback = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"octeon_pfvf_handshake timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"VF Liquidio driver (major version %d) is not compatible with Liquidio PF driver (major version %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"VF Liquidio driver (major version %d), Liquidio PF driver (major version %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"got data from pf pkind is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cn23xx_octeon_pfvf_handshake(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.octeon_mbox_cmd, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @OCTEON_MBOX_REQUEST, align 4
  %19 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @OCTEON_VF_ACTIVE, align 4
  %26 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 2, i32* %31, align 4
  %32 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 5
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 0, i64* %34, align 8
  %35 = load i8*, i8** @LIQUIDIO_BASE_MAJOR_VERSION, align 8
  %36 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 5
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = bitcast i64* %38 to %struct.lio_version*
  %40 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %39, i32 0, i32 2
  store i8* %35, i8** %40, align 8
  %41 = load i32, i32* @LIQUIDIO_BASE_MINOR_VERSION, align 4
  %42 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = bitcast i64* %44 to %struct.lio_version*
  %46 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* @LIQUIDIO_BASE_MICRO_VERSION, align 4
  %48 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = bitcast i64* %50 to %struct.lio_version*
  %52 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  %53 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* @octeon_pfvf_hs_callback, align 8
  %57 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 0
  store i32* %7, i32** %58, align 8
  %59 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %60 = call i32 @octeon_mbox_write(%struct.octeon_device* %59, %struct.octeon_mbox_cmd* %4)
  %61 = call i32 @atomic_set(i32* %7, i32 0)
  br label %62

62:                                               ; preds = %71, %1
  %63 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %64

64:                                               ; preds = %62
  %65 = call i64 @atomic_read(i32* %7)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %6, align 8
  %70 = icmp ult i64 %68, 100000
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i1 [ false, %64 ], [ %70, %67 ]
  br i1 %72, label %62, label %73

73:                                               ; preds = %71
  %74 = call i64 @atomic_read(i32* %7)
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %79 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %78, i32 0, i32 2
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %140

83:                                               ; preds = %73
  store i64 0, i64* %5, align 8
  br label %84

84:                                               ; preds = %104, %83
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %95, i32 0, i32 3
  %97 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %97, i64 %98
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i32 %94, i32* %103, align 4
  br label %104

104:                                              ; preds = %90
  %105 = load i64, i64* %5, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %5, align 8
  br label %84

107:                                              ; preds = %84
  %108 = load i8*, i8** @LIQUIDIO_BASE_MAJOR_VERSION, align 8
  %109 = ptrtoint i8* %108 to i64
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = lshr i64 %110, 16
  store i64 %111, i64* %8, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %116, i32 0, i32 2
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i64 %120, i64 %121)
  store i32 1, i32* %2, align 4
  br label %140

123:                                              ; preds = %107
  %124 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %125 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %124, i32 0, i32 2
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %8, align 8
  %130 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %127, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i64 %128, i64 %129)
  %131 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %131, i32 0, i32 2
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %136 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %123, %115, %77
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @octeon_mbox_write(%struct.octeon_device*, %struct.octeon_mbox_cmd*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
