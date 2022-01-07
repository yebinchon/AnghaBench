; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_mac_config_sds_loopback_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_mac_config_sds_loopback_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i32, i8* }

@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@hns_dsaf_acpi_dsm_guid = common dso_local global i32 0, align 4
@HNS_OP_SERDES_LP_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"set port%d serdes lp fail!\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_mac_cb*, i32)* @hns_mac_config_sds_loopback_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mac_config_sds_loopback_acpi(%struct.hns_mac_cb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_mac_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca [3 x %union.acpi_object], align 16
  %8 = alloca %union.acpi_object, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %10 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 0
  %11 = bitcast %union.acpi_object* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %9, i8** %12, align 8
  %13 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %14 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 0
  %17 = bitcast %union.acpi_object* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 16
  %19 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %20 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 1
  %21 = bitcast %union.acpi_object* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 1
  %29 = bitcast %union.acpi_object* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 16
  %31 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %32 = bitcast %union.acpi_object* %8 to i32*
  store i32 %31, i32* %32, align 8
  %33 = bitcast %union.acpi_object* %8 to %struct.TYPE_5__*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 2, i32* %34, align 8
  %35 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 0
  %36 = bitcast %union.acpi_object* %8 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store %union.acpi_object* %35, %union.acpi_object** %37, align 8
  %38 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %39 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ACPI_HANDLE(i32 %42)
  %44 = load i32, i32* @HNS_OP_SERDES_LP_FUNC, align 4
  %45 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %43, i32* @hns_dsaf_acpi_dsm_guid, i32 0, i32 %44, %union.acpi_object* %8)
  store %union.acpi_object* %45, %union.acpi_object** %6, align 8
  %46 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %47 = icmp ne %union.acpi_object* %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %2
  %49 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %50 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %55 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %2
  %61 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %62 = call i32 @ACPI_FREE(%union.acpi_object* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %48
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, %union.acpi_object*) #1

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
