; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_acpi.c_iwl_acpi_get_mcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_acpi.c_iwl_acpi_get_mcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ACPI_WRDD_METHOD = common dso_local global i32 0, align 4
@ACPI_WRDD_WIFI_DATA_SIZE = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_acpi_get_mcc(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @ACPI_WRDD_METHOD, align 4
  %13 = call %union.acpi_object* @iwl_acpi_get_object(%struct.device* %11, i32 %12)
  store %union.acpi_object* %13, %union.acpi_object** %7, align 8
  %14 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %15 = call i64 @IS_ERR(%union.acpi_object* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %19 = call i32 @PTR_ERR(%union.acpi_object* %18)
  store i32 %19, i32* %3, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %23 = load i32, i32* @ACPI_WRDD_WIFI_DATA_SIZE, align 4
  %24 = call %union.acpi_object* @iwl_acpi_get_wifi_pkg(%struct.device* %21, %union.acpi_object* %22, i32 %23, i32* %10)
  store %union.acpi_object* %24, %union.acpi_object** %6, align 8
  %25 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %26 = call i64 @IS_ERR(%union.acpi_object* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %30 = call i32 @PTR_ERR(%union.acpi_object* %29)
  store i32 %30, i32* %9, align 4
  br label %69

31:                                               ; preds = %20
  %32 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %33 = bitcast %union.acpi_object* %32 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %31
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %69

47:                                               ; preds = %41
  %48 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %49 = bitcast %union.acpi_object* %48 to %struct.TYPE_6__*
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %59, i8* %61, align 1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 %64, i8* %66, align 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  store i8 0, i8* %68, align 1
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %47, %44, %28
  %70 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %71 = call i32 @kfree(%union.acpi_object* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
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
