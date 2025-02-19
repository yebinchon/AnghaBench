; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_mac_get_sfp_prsnt_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_mac_get_sfp_prsnt_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@hns_dsaf_acpi_dsm_guid = common dso_local global i32 0, align 4
@HNS_OP_GET_SFP_STAT_FUNC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_mac_cb*, i32*)* @hns_mac_get_sfp_prsnt_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mac_get_sfp_prsnt_acpi(%struct.hns_mac_cb* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_mac_cb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %union.acpi_object, align 8
  %8 = alloca %union.acpi_object, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %10 = bitcast %union.acpi_object* %7 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %13 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = bitcast %union.acpi_object* %7 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %18 = bitcast %union.acpi_object* %8 to i64*
  store i64 %17, i64* %18, align 8
  %19 = bitcast %union.acpi_object* %8 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = bitcast %union.acpi_object* %8 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store %union.acpi_object* %7, %union.acpi_object** %22, align 8
  %23 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %24 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ACPI_HANDLE(i32 %25)
  %27 = load i32, i32* @HNS_OP_GET_SFP_STAT_FUNC, align 4
  %28 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %26, i32* @hns_dsaf_acpi_dsm_guid, i32 0, i32 %27, %union.acpi_object* %8)
  store %union.acpi_object* %28, %union.acpi_object** %6, align 8
  %29 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %30 = icmp ne %union.acpi_object* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %33 = bitcast %union.acpi_object* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %2
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %31
  %41 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %47 = call i32 @ACPI_FREE(%union.acpi_object* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, %union.acpi_object*) #1

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
