; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_debug_set_oid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_debug_set_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.islpci_mgmtframe = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@PIMFOR_OP_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: set_oid 0x%08X\09len: %d\0A\00", align 1
@PRV_STATE_INIT = common dso_local global i64 0, align 8
@PIMFOR_OP_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s: ret: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s: EIO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: response_op: %i\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism54_debug_set_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_debug_set_oid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.islpci_mgmtframe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.TYPE_6__* @netdev_priv(%struct.net_device* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @PIMFOR_OP_ERROR, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %23 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = call i64 @islpci_get_state(%struct.TYPE_6__* %26)
  %28 = load i64, i64* @PRV_STATE_INIT, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %91

30:                                               ; preds = %4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PIMFOR_OP_SET, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %40 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @islpci_mgt_transaction(i32 %33, i32 %34, i32 %37, i8* %38, i32 %41, %struct.islpci_mgmtframe** %10)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %30
  %51 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %52 = icmp ne %struct.islpci_mgmtframe* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %55 = getelementptr inbounds %struct.islpci_mgmtframe, %struct.islpci_mgmtframe* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PIMFOR_OP_ERROR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %53, %50, %30
  %62 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %63 = icmp ne %struct.islpci_mgmtframe* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %66 = call i32 @islpci_mgt_release(%struct.islpci_mgmtframe* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %67, %53
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %79 = getelementptr inbounds %struct.islpci_mgmtframe, %struct.islpci_mgmtframe* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %89 = call i32 @islpci_mgt_release(%struct.islpci_mgmtframe* %88)
  br label %90

90:                                               ; preds = %77, %74
  br label %91

91:                                               ; preds = %90, %4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  br label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @EINPROGRESS, align 4
  %98 = sub nsw i32 0, %97
  br label %99

99:                                               ; preds = %96, %94
  %100 = phi i32 [ %95, %94 ], [ %98, %96 ]
  ret i32 %100
}

declare dso_local %struct.TYPE_6__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @islpci_get_state(%struct.TYPE_6__*) #1

declare dso_local i32 @islpci_mgt_transaction(i32, i32, i32, i8*, i32, %struct.islpci_mgmtframe**) #1

declare dso_local i32 @islpci_mgt_release(%struct.islpci_mgmtframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
