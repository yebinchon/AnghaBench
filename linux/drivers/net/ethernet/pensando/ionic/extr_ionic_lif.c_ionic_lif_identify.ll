; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i32, i32, %struct.ionic_dev }
%struct.ionic_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.ionic_lif_identity = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32 }

@IONIC_IDENTITY_VERSION_1 = common dso_local global i32 0, align 4
@DEVCMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"capabilities 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"eth.max_ucast_filters %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"eth.max_mcast_filters %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"eth.features 0x%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"eth.queue_count[IONIC_QTYPE_ADMINQ] %d\0A\00", align 1
@IONIC_QTYPE_ADMINQ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"eth.queue_count[IONIC_QTYPE_NOTIFYQ] %d\0A\00", align 1
@IONIC_QTYPE_NOTIFYQ = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"eth.queue_count[IONIC_QTYPE_RXQ] %d\0A\00", align 1
@IONIC_QTYPE_RXQ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"eth.queue_count[IONIC_QTYPE_TXQ] %d\0A\00", align 1
@IONIC_QTYPE_TXQ = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"eth.config.name %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"eth.config.mac %pM\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"eth.config.mtu %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_lif_identify(%struct.ionic* %0, i32 %1, %union.ionic_lif_identity* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ionic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ionic_lif_identity*, align 8
  %8 = alloca %struct.ionic_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.ionic_lif_identity* %2, %union.ionic_lif_identity** %7, align 8
  %11 = load %struct.ionic*, %struct.ionic** %5, align 8
  %12 = getelementptr inbounds %struct.ionic, %struct.ionic* %11, i32 0, i32 2
  store %struct.ionic_dev* %12, %struct.ionic_dev** %8, align 8
  %13 = call i64 @min(i32 40, i32 4)
  store i64 %13, i64* %9, align 8
  %14 = load %struct.ionic*, %struct.ionic** %5, align 8
  %15 = getelementptr inbounds %struct.ionic, %struct.ionic* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IONIC_IDENTITY_VERSION_1, align 4
  %20 = call i32 @ionic_dev_cmd_lif_identify(%struct.ionic_dev* %17, i32 %18, i32 %19)
  %21 = load %struct.ionic*, %struct.ionic** %5, align 8
  %22 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %23 = call i32 @ionic_dev_cmd_wait(%struct.ionic* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %25 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %26 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @memcpy_fromio(%union.ionic_lif_identity* %24, i32* %28, i64 %29)
  %31 = load %struct.ionic*, %struct.ionic** %5, align 8
  %32 = getelementptr inbounds %struct.ionic, %struct.ionic* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %155

38:                                               ; preds = %3
  %39 = load %struct.ionic*, %struct.ionic** %5, align 8
  %40 = getelementptr inbounds %struct.ionic, %struct.ionic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %43 = bitcast %union.ionic_lif_identity* %42 to i32*
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le64_to_cpu(i32 %44)
  %46 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.ionic*, %struct.ionic** %5, align 8
  %48 = getelementptr inbounds %struct.ionic, %struct.ionic* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %51 = bitcast %union.ionic_lif_identity* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.ionic*, %struct.ionic** %5, align 8
  %57 = getelementptr inbounds %struct.ionic, %struct.ionic* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %60 = bitcast %union.ionic_lif_identity* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.ionic*, %struct.ionic** %5, align 8
  %66 = getelementptr inbounds %struct.ionic, %struct.ionic* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %69 = bitcast %union.ionic_lif_identity* %68 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le64_to_cpu(i32 %72)
  %74 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.ionic*, %struct.ionic** %5, align 8
  %76 = getelementptr inbounds %struct.ionic, %struct.ionic* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %79 = bitcast %union.ionic_lif_identity* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @IONIC_QTYPE_ADMINQ, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load %struct.ionic*, %struct.ionic** %5, align 8
  %89 = getelementptr inbounds %struct.ionic, %struct.ionic* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %92 = bitcast %union.ionic_lif_identity* %91 to %struct.TYPE_6__*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @IONIC_QTYPE_NOTIFYQ, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  %100 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load %struct.ionic*, %struct.ionic** %5, align 8
  %102 = getelementptr inbounds %struct.ionic, %struct.ionic* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %105 = bitcast %union.ionic_lif_identity* %104 to %struct.TYPE_6__*
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @IONIC_QTYPE_RXQ, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  %113 = call i32 @dev_dbg(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  %114 = load %struct.ionic*, %struct.ionic** %5, align 8
  %115 = getelementptr inbounds %struct.ionic, %struct.ionic* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %118 = bitcast %union.ionic_lif_identity* %117 to %struct.TYPE_6__*
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @IONIC_QTYPE_TXQ, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le32_to_cpu(i32 %124)
  %126 = call i32 @dev_dbg(i32 %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  %127 = load %struct.ionic*, %struct.ionic** %5, align 8
  %128 = getelementptr inbounds %struct.ionic, %struct.ionic* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %131 = bitcast %union.ionic_lif_identity* %130 to %struct.TYPE_6__*
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dev_dbg(i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %134)
  %136 = load %struct.ionic*, %struct.ionic** %5, align 8
  %137 = getelementptr inbounds %struct.ionic, %struct.ionic* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %140 = bitcast %union.ionic_lif_identity* %139 to %struct.TYPE_6__*
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dev_dbg(i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  %145 = load %struct.ionic*, %struct.ionic** %5, align 8
  %146 = getelementptr inbounds %struct.ionic, %struct.ionic* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %union.ionic_lif_identity*, %union.ionic_lif_identity** %7, align 8
  %149 = bitcast %union.ionic_lif_identity* %148 to %struct.TYPE_6__*
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @le32_to_cpu(i32 %152)
  %154 = call i32 @dev_dbg(i32 %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %38, %36
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ionic_dev_cmd_lif_identify(%struct.ionic_dev*, i32, i32) #1

declare dso_local i32 @ionic_dev_cmd_wait(%struct.ionic*, i32) #1

declare dso_local i32 @memcpy_fromio(%union.ionic_lif_identity*, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
