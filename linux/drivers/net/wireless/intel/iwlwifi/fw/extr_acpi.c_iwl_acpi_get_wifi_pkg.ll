; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_acpi.c_iwl_acpi_get_wifi_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_acpi.c_iwl_acpi_get_wifi_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Unsupported packages structure\0A\00", align 1
@ACPI_WIFI_DOMAIN = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_object* @iwl_acpi_get_wifi_pkg(%struct.device* %0, %union.acpi_object* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca %union.acpi_object*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %union.acpi_object* %1, %union.acpi_object** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 2
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %union.acpi_object* @ERR_PTR(i32 %20)
  store %union.acpi_object* %21, %union.acpi_object** %5, align 8
  br label %128

22:                                               ; preds = %4
  %23 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %24 = bitcast %union.acpi_object* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %54, label %28

28:                                               ; preds = %22
  %29 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %54, label %34

34:                                               ; preds = %28
  %35 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %36 = bitcast %union.acpi_object* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load %union.acpi_object*, %union.acpi_object** %37, align 8
  %39 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %38, i64 0
  %40 = bitcast %union.acpi_object* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %46 = bitcast %union.acpi_object* %45 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %union.acpi_object*, %union.acpi_object** %47, align 8
  %49 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %48, i64 0
  %50 = bitcast %union.acpi_object* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %60

54:                                               ; preds = %44, %34, %28, %22
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @IWL_DEBUG_DEV_RADIO(%struct.device* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %union.acpi_object* @ERR_PTR(i32 %58)
  store %union.acpi_object* %59, %union.acpi_object** %5, align 8
  br label %128

60:                                               ; preds = %44
  %61 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %62 = bitcast %union.acpi_object* %61 to %struct.TYPE_3__*
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %union.acpi_object*, %union.acpi_object** %63, align 8
  %65 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %64, i64 0
  %66 = bitcast %union.acpi_object* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  store i32 1, i32* %10, align 4
  br label %70

70:                                               ; preds = %119, %60
  %71 = load i32, i32* %10, align 4
  %72 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %73 = bitcast %union.acpi_object* %72 to %struct.TYPE_3__*
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %122

77:                                               ; preds = %70
  %78 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %79 = bitcast %union.acpi_object* %78 to %struct.TYPE_3__*
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load %union.acpi_object*, %union.acpi_object** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %81, i64 %83
  store %union.acpi_object* %84, %union.acpi_object** %11, align 8
  %85 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %86 = bitcast %union.acpi_object* %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %77
  %91 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %92 = bitcast %union.acpi_object* %91 to %struct.TYPE_3__*
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90, %77
  br label %119

98:                                               ; preds = %90
  %99 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %100 = bitcast %union.acpi_object* %99 to %struct.TYPE_3__*
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load %union.acpi_object*, %union.acpi_object** %101, align 8
  %103 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %102, i64 0
  store %union.acpi_object* %103, %union.acpi_object** %12, align 8
  %104 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %105 = bitcast %union.acpi_object* %104 to i64*
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %98
  %110 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %111 = bitcast %union.acpi_object* %110 to %struct.TYPE_4__*
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* @ACPI_WIFI_DOMAIN, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %126

118:                                              ; preds = %109, %98
  br label %119

119:                                              ; preds = %118, %97
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %70

122:                                              ; preds = %70
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  %125 = call %union.acpi_object* @ERR_PTR(i32 %124)
  store %union.acpi_object* %125, %union.acpi_object** %5, align 8
  br label %128

126:                                              ; preds = %117
  %127 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  store %union.acpi_object* %127, %union.acpi_object** %5, align 8
  br label %128

128:                                              ; preds = %126, %122, %54, %18
  %129 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  ret %union.acpi_object* %129
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %union.acpi_object* @ERR_PTR(i32) #1

declare dso_local i32 @IWL_DEBUG_DEV_RADIO(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
