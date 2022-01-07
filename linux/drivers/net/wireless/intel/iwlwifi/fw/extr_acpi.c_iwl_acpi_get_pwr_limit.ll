; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_acpi.c_iwl_acpi_get_pwr_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_acpi.c_iwl_acpi_get_pwr_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ACPI_SPLC_METHOD = common dso_local global i32 0, align 4
@ACPI_SPLC_WIFI_DATA_SIZE = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iwl_acpi_get_pwr_limit(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = load i32, i32* @ACPI_SPLC_METHOD, align 4
  %9 = call %union.acpi_object* @iwl_acpi_get_object(%struct.device* %7, i32 %8)
  store %union.acpi_object* %9, %union.acpi_object** %3, align 8
  %10 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %11 = call i64 @IS_ERR(%union.acpi_object* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %17 = load i32, i32* @ACPI_SPLC_WIFI_DATA_SIZE, align 4
  %18 = call %union.acpi_object* @iwl_acpi_get_wifi_pkg(%struct.device* %15, %union.acpi_object* %16, i32 %17, i32* %6)
  store %union.acpi_object* %18, %union.acpi_object** %4, align 8
  %19 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %20 = call i64 @IS_ERR(%union.acpi_object* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %27 = bitcast %union.acpi_object* %26 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25, %22, %14
  store i64 0, i64* %5, align 8
  br label %46

37:                                               ; preds = %25
  %38 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %37, %36
  %47 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %48 = call i32 @kfree(%union.acpi_object* %47)
  br label %49

49:                                               ; preds = %46, %13
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local %union.acpi_object* @iwl_acpi_get_object(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%union.acpi_object*) #1

declare dso_local %union.acpi_object* @iwl_acpi_get_wifi_pkg(%struct.device*, %union.acpi_object*, i32, i32*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
