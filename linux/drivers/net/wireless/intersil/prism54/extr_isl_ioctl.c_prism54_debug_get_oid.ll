; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_debug_get_oid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_debug_get_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.islpci_mgmtframe = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: get_oid 0x%08X\0A\00", align 1
@PRV_STATE_INIT = common dso_local global i64 0, align 8
@PIMFOR_OP_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s: ret: %i\0A\00", align 1
@PIMFOR_OP_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%s: EIO\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s: len: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism54_debug_get_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_debug_get_oid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.islpci_mgmtframe*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.TYPE_6__* @netdev_priv(%struct.net_device* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %9, align 8
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %24 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = call i64 @islpci_get_state(%struct.TYPE_6__* %25)
  %27 = load i64, i64* @PRV_STATE_INIT, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %99

29:                                               ; preds = %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PIMFOR_OP_GET, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @islpci_mgt_transaction(i32 %32, i32 %33, i32 %36, i8* %37, i32 256, %struct.islpci_mgmtframe** %10)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %29
  %47 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %48 = icmp ne %struct.islpci_mgmtframe* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %51 = getelementptr inbounds %struct.islpci_mgmtframe, %struct.islpci_mgmtframe* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PIMFOR_OP_ERROR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %49, %46, %29
  %58 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %59 = icmp ne %struct.islpci_mgmtframe* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %62 = call i32 @islpci_mgt_release(%struct.islpci_mgmtframe* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %63, %49
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %98, label %73

73:                                               ; preds = %70
  %74 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %75 = getelementptr inbounds %struct.islpci_mgmtframe, %struct.islpci_mgmtframe* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %80 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %83 = getelementptr inbounds %struct.islpci_mgmtframe, %struct.islpci_mgmtframe* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %86 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i8* %81, i32 %84, i32 %87)
  %89 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %90 = call i32 @islpci_mgt_release(%struct.islpci_mgmtframe* %89)
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %95 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %73, %70
  br label %99

99:                                               ; preds = %98, %4
  %100 = load i32, i32* %11, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_6__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @islpci_get_state(%struct.TYPE_6__*) #1

declare dso_local i32 @islpci_mgt_transaction(i32, i32, i32, i8*, i32, %struct.islpci_mgmtframe**) #1

declare dso_local i32 @islpci_mgt_release(%struct.islpci_mgmtframe*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
