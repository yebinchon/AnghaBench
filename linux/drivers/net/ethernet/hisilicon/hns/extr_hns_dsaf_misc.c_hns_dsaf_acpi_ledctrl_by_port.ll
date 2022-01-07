; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_dsaf_acpi_ledctrl_by_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_dsaf_acpi_ledctrl_by_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_3__ = type { i8*, i8* }

@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@hns_dsaf_acpi_dsm_guid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ledctrl fail, link:%d port:%d act:%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_mac_cb*, i32, i8*, i8*, i8*)* @hns_dsaf_acpi_ledctrl_by_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_acpi_ledctrl_by_port(%struct.hns_mac_cb* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.hns_mac_cb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca [3 x %union.acpi_object], align 16
  %13 = alloca %union.acpi_object, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %15 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %12, i64 0, i64 0
  %16 = bitcast %union.acpi_object* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %12, i64 0, i64 0
  %20 = bitcast %union.acpi_object* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 16
  %22 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %23 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %12, i64 0, i64 1
  %24 = bitcast %union.acpi_object* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %12, i64 0, i64 1
  %28 = bitcast %union.acpi_object* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 16
  %30 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %31 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %12, i64 0, i64 2
  %32 = bitcast %union.acpi_object* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %12, i64 0, i64 2
  %36 = bitcast %union.acpi_object* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 16
  %38 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %39 = bitcast %union.acpi_object* %13 to i32*
  store i32 %38, i32* %39, align 8
  %40 = bitcast %union.acpi_object* %13 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 3, i32* %41, align 8
  %42 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %12, i64 0, i64 0
  %43 = bitcast %union.acpi_object* %13 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store %union.acpi_object* %42, %union.acpi_object** %44, align 8
  %45 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %46 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ACPI_HANDLE(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %48, i32* @hns_dsaf_acpi_dsm_guid, i32 0, i32 %49, %union.acpi_object* %13)
  store %union.acpi_object* %50, %union.acpi_object** %11, align 8
  %51 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %52 = icmp ne %union.acpi_object* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %5
  %54 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %55 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @dev_warn(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %57, i8* %58, i8* %59)
  br label %64

61:                                               ; preds = %5
  %62 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %63 = call i32 @ACPI_FREE(%union.acpi_object* %62)
  br label %64

64:                                               ; preds = %61, %53
  ret void
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, %union.acpi_object*) #1

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
