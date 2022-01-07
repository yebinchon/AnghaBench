; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_mac_get_phy_if_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_mac_get_phy_if_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i64, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }

@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@hns_dsaf_acpi_dsm_guid = common dso_local global i32 0, align 4
@HNS_OP_GET_PORT_TYPE_FUNC = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mac_id=%d, phy_if=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_mac_cb*)* @hns_mac_get_phy_if_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mac_get_phy_if_acpi(%struct.hns_mac_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_mac_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %union.acpi_object, align 8
  %7 = alloca %union.acpi_object, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %3, align 8
  %8 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %10 = bitcast %union.acpi_object* %6 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %13 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = bitcast %union.acpi_object* %6 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %18 = bitcast %union.acpi_object* %7 to i64*
  store i64 %17, i64* %18, align 8
  %19 = bitcast %union.acpi_object* %7 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = bitcast %union.acpi_object* %7 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store %union.acpi_object* %6, %union.acpi_object** %22, align 8
  %23 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %24 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ACPI_HANDLE(i32 %25)
  %27 = load i32, i32* @HNS_OP_GET_PORT_TYPE_FUNC, align 4
  %28 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %26, i32* @hns_dsaf_acpi_dsm_guid, i32 0, i32 %27, %union.acpi_object* %7)
  store %union.acpi_object* %28, %union.acpi_object** %5, align 8
  %29 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %30 = icmp ne %union.acpi_object* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %33 = bitcast %union.acpi_object* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %1
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %62

39:                                               ; preds = %31
  %40 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %41 = bitcast %union.acpi_object* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @PHY_INTERFACE_MODE_XGMII, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %4, align 4
  %51 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %52 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %55 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %57)
  %59 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %60 = call i32 @ACPI_FREE(%union.acpi_object* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %49, %37
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, %union.acpi_object*) #1

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
