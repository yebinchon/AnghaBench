; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_dsaf_acpi_locate_ledctrl_by_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_dsaf_acpi_locate_ledctrl_by_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_3__ = type { i8*, i8* }

@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@hns_dsaf_acpi_dsm_guid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ledctrl fail, locate:%d port:%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_mac_cb*, i32, i8*, i8*)* @hns_dsaf_acpi_locate_ledctrl_by_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_acpi_locate_ledctrl_by_port(%struct.hns_mac_cb* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.hns_mac_cb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x %union.acpi_object], align 16
  %10 = alloca %union.acpi_object, align 8
  %11 = alloca %union.acpi_object*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %13 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %14 = bitcast %union.acpi_object* %13 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i8* %12, i8** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %18 = bitcast %union.acpi_object* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 16
  %20 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %21 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 1
  %22 = bitcast %union.acpi_object* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 1
  %26 = bitcast %union.acpi_object* %25 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 16
  %28 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %29 = bitcast %union.acpi_object* %10 to i32*
  store i32 %28, i32* %29, align 8
  %30 = bitcast %union.acpi_object* %10 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 2, i32* %31, align 8
  %32 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %33 = bitcast %union.acpi_object* %10 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store %union.acpi_object* %32, %union.acpi_object** %34, align 8
  %35 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %36 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ACPI_HANDLE(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %38, i32* @hns_dsaf_acpi_dsm_guid, i32 0, i32 %39, %union.acpi_object* %10)
  store %union.acpi_object* %40, %union.acpi_object** %11, align 8
  %41 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %42 = icmp ne %union.acpi_object* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %4
  %44 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %45 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %48)
  br label %53

50:                                               ; preds = %4
  %51 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %52 = call i32 @ACPI_FREE(%union.acpi_object* %51)
  br label %53

53:                                               ; preds = %50, %43
  ret void
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, %union.acpi_object*) #1

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i8*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
