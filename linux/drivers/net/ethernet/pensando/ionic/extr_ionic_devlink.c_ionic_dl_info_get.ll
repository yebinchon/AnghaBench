; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_devlink.c_ionic_dl_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_devlink.c_ionic_dl_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_info_req = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ionic = type { %struct.ionic_dev }
%struct.ionic_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IONIC_DRV_NAME = common dso_local global i32 0, align 4
@DEVLINK_INFO_VERSION_GENERIC_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@DEVLINK_INFO_VERSION_GENERIC_ASIC_ID = common dso_local global i32 0, align 4
@DEVLINK_INFO_VERSION_GENERIC_ASIC_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.devlink_info_req*, %struct.netlink_ext_ack*)* @ionic_dl_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_dl_info_get(%struct.devlink* %0, %struct.devlink_info_req* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.devlink_info_req*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.ionic*, align 8
  %8 = alloca %struct.ionic_dev*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store %struct.devlink_info_req* %1, %struct.devlink_info_req** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %11 = load %struct.devlink*, %struct.devlink** %4, align 8
  %12 = call %struct.ionic* @devlink_priv(%struct.devlink* %11)
  store %struct.ionic* %12, %struct.ionic** %7, align 8
  %13 = load %struct.ionic*, %struct.ionic** %7, align 8
  %14 = getelementptr inbounds %struct.ionic, %struct.ionic* %13, i32 0, i32 0
  store %struct.ionic_dev* %14, %struct.ionic_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.devlink_info_req*, %struct.devlink_info_req** %5, align 8
  %16 = load i32, i32* @IONIC_DRV_NAME, align 4
  %17 = call i32 @devlink_info_driver_name_put(%struct.devlink_info_req* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %67

21:                                               ; preds = %3
  %22 = load %struct.devlink_info_req*, %struct.devlink_info_req** %5, align 8
  %23 = load i32, i32* @DEVLINK_INFO_VERSION_GENERIC_FW, align 4
  %24 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %25 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @devlink_info_version_running_put(%struct.devlink_info_req* %22, i32 %23, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %67

32:                                               ; preds = %21
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %34 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %35 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snprintf(i8* %33, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.devlink_info_req*, %struct.devlink_info_req** %5, align 8
  %40 = load i32, i32* @DEVLINK_INFO_VERSION_GENERIC_ASIC_ID, align 4
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %42 = call i32 @devlink_info_version_fixed_put(%struct.devlink_info_req* %39, i32 %40, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %67

46:                                               ; preds = %32
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %48 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %49 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snprintf(i8* %47, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.devlink_info_req*, %struct.devlink_info_req** %5, align 8
  %54 = load i32, i32* @DEVLINK_INFO_VERSION_GENERIC_ASIC_REV, align 4
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %56 = call i32 @devlink_info_version_fixed_put(%struct.devlink_info_req* %53, i32 %54, i8* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %67

60:                                               ; preds = %46
  %61 = load %struct.devlink_info_req*, %struct.devlink_info_req** %5, align 8
  %62 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %63 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @devlink_info_serial_number_put(%struct.devlink_info_req* %61, i32 %65)
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %60, %59, %45, %31, %20
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local %struct.ionic* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @devlink_info_driver_name_put(%struct.devlink_info_req*, i32) #1

declare dso_local i32 @devlink_info_version_running_put(%struct.devlink_info_req*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @devlink_info_version_fixed_put(%struct.devlink_info_req*, i32, i8*) #1

declare dso_local i32 @devlink_info_serial_number_put(%struct.devlink_info_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
