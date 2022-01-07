; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_acpi.c_iwl_acpi_get_eckv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_acpi.c_iwl_acpi_get_eckv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ACPI_ECKV_METHOD = common dso_local global i32 0, align 4
@ACPI_ECKV_WIFI_DATA_SIZE = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_acpi_get_eckv(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @ACPI_ECKV_METHOD, align 4
  %12 = call %union.acpi_object* @iwl_acpi_get_object(%struct.device* %10, i32 %11)
  store %union.acpi_object* %12, %union.acpi_object** %7, align 8
  %13 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %14 = call i64 @IS_ERR(%union.acpi_object* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %18 = call i32 @PTR_ERR(%union.acpi_object* %17)
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %22 = load i32, i32* @ACPI_ECKV_WIFI_DATA_SIZE, align 4
  %23 = call %union.acpi_object* @iwl_acpi_get_wifi_pkg(%struct.device* %20, %union.acpi_object* %21, i32 %22, i32* %9)
  store %union.acpi_object* %23, %union.acpi_object** %6, align 8
  %24 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %25 = call i64 @IS_ERR(%union.acpi_object* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %29 = call i32 @PTR_ERR(%union.acpi_object* %28)
  store i32 %29, i32* %8, align 4
  br label %56

30:                                               ; preds = %19
  %31 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %32 = bitcast %union.acpi_object* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %30
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %56

46:                                               ; preds = %40
  %47 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %48 = bitcast %union.acpi_object* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %46, %43, %27
  %57 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %58 = call i32 @kfree(%union.acpi_object* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %union.acpi_object* @iwl_acpi_get_object(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%union.acpi_object*) #1

declare dso_local i32 @PTR_ERR(%union.acpi_object*) #1

declare dso_local %union.acpi_object* @iwl_acpi_get_wifi_pkg(%struct.device*, %union.acpi_object*, i32, i32*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
