; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_notifyq_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_notifyq_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_cq = type { %struct.ionic_queue* }
%struct.ionic_queue = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ionic_lif* }
%struct.ionic_lif = type { i64, %struct.TYPE_6__*, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ionic_cq_info = type { %union.ionic_notifyq_comp* }
%union.ionic_notifyq_comp = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"notifyq event:\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"event \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Notifyq IONIC_EVENT_RESET eid=%lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  reset_code=%d state=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Notifyq unknown event ecode=%d eid=%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_cq*, %struct.ionic_cq_info*)* @ionic_notifyq_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_notifyq_service(%struct.ionic_cq* %0, %struct.ionic_cq_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ionic_cq*, align 8
  %5 = alloca %struct.ionic_cq_info*, align 8
  %6 = alloca %union.ionic_notifyq_comp*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ionic_queue*, align 8
  %9 = alloca %struct.ionic_lif*, align 8
  %10 = alloca i64, align 8
  store %struct.ionic_cq* %0, %struct.ionic_cq** %4, align 8
  store %struct.ionic_cq_info* %1, %struct.ionic_cq_info** %5, align 8
  %11 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %5, align 8
  %12 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %11, i32 0, i32 0
  %13 = load %union.ionic_notifyq_comp*, %union.ionic_notifyq_comp** %12, align 8
  store %union.ionic_notifyq_comp* %13, %union.ionic_notifyq_comp** %6, align 8
  %14 = load %struct.ionic_cq*, %struct.ionic_cq** %4, align 8
  %15 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %14, i32 0, i32 0
  %16 = load %struct.ionic_queue*, %struct.ionic_queue** %15, align 8
  store %struct.ionic_queue* %16, %struct.ionic_queue** %8, align 8
  %17 = load %struct.ionic_queue*, %struct.ionic_queue** %8, align 8
  %18 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.ionic_lif*, %struct.ionic_lif** %21, align 8
  store %struct.ionic_lif* %22, %struct.ionic_lif** %9, align 8
  %23 = load %struct.ionic_lif*, %struct.ionic_lif** %9, align 8
  %24 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %23, i32 0, i32 2
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %7, align 8
  %26 = load %union.ionic_notifyq_comp*, %union.ionic_notifyq_comp** %6, align 8
  %27 = bitcast %union.ionic_notifyq_comp* %26 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le64_to_cpu(i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.ionic_lif*, %struct.ionic_lif** %9, align 8
  %33 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

37:                                               ; preds = %2
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.ionic_lif*, %struct.ionic_lif** %9, align 8
  %40 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ionic_lif*, %struct.ionic_lif** %9, align 8
  %42 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %48 = load %union.ionic_notifyq_comp*, %union.ionic_notifyq_comp** %6, align 8
  %49 = call i32 @dynamic_hex_dump(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 16, i32 1, %union.ionic_notifyq_comp* %48, i32 8, i32 1)
  %50 = load %union.ionic_notifyq_comp*, %union.ionic_notifyq_comp** %6, align 8
  %51 = bitcast %union.ionic_notifyq_comp* %50 to %struct.TYPE_8__*
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  switch i32 %54, label %73 [
    i32 129, label %55
    i32 128, label %58
  ]

55:                                               ; preds = %37
  %56 = load %struct.ionic_lif*, %struct.ionic_lif** %9, align 8
  %57 = call i32 @ionic_link_status_check_request(%struct.ionic_lif* %56)
  br label %81

58:                                               ; preds = %37
  %59 = load %struct.net_device*, %struct.net_device** %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 (%struct.net_device*, i8*, i64, ...) @netdev_info(%struct.net_device* %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = load %union.ionic_notifyq_comp*, %union.ionic_notifyq_comp** %6, align 8
  %64 = bitcast %union.ionic_notifyq_comp* %63 to %struct.TYPE_7__*
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load %union.ionic_notifyq_comp*, %union.ionic_notifyq_comp** %6, align 8
  %69 = bitcast %union.ionic_notifyq_comp* %68 to %struct.TYPE_7__*
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.net_device*, i8*, i64, ...) @netdev_info(%struct.net_device* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %67, i32 %71)
  br label %81

73:                                               ; preds = %37
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = load %union.ionic_notifyq_comp*, %union.ionic_notifyq_comp** %6, align 8
  %76 = bitcast %union.ionic_notifyq_comp* %75 to %struct.TYPE_8__*
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @netdev_warn(%struct.net_device* %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %73, %58, %55
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %36
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dynamic_hex_dump(i8*, i32, i32, i32, %union.ionic_notifyq_comp*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ionic_link_status_check_request(%struct.ionic_lif*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, ...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
