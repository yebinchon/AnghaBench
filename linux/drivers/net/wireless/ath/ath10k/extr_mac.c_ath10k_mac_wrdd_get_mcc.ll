; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_wrdd_get_mcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_wrdd_get_mcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i64 }

@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"ignoring malformed/unsupported wrdd structure\0A\00", align 1
@WRDD_WIFI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath10k*, %union.acpi_object*)* @ath10k_mac_wrdd_get_mcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath10k_mac_wrdd_get_mcc(%struct.ath10k* %0, %union.acpi_object* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %union.acpi_object* %1, %union.acpi_object** %5, align 8
  %10 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %11 = bitcast %union.acpi_object* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %41, label %15

15:                                               ; preds = %2
  %16 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %17 = bitcast %union.acpi_object* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %41, label %21

21:                                               ; preds = %15
  %22 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %23 = bitcast %union.acpi_object* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %26 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %25, i64 0
  %27 = bitcast %union.acpi_object* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %21
  %32 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %33 = bitcast %union.acpi_object* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %union.acpi_object*, %union.acpi_object** %34, align 8
  %36 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %35, i64 0
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31, %21, %15, %2
  %42 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %43 = call i32 @ath10k_warn(%struct.ath10k* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %121

44:                                               ; preds = %31
  store i64 1, i64* %9, align 8
  br label %45

45:                                               ; preds = %117, %44
  %46 = load i64, i64* %9, align 8
  %47 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %48 = bitcast %union.acpi_object* %47 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %46, %51
  br i1 %52, label %53, label %120

53:                                               ; preds = %45
  %54 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load %union.acpi_object*, %union.acpi_object** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %57, i64 %58
  store %union.acpi_object* %59, %union.acpi_object** %6, align 8
  %60 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %61 = bitcast %union.acpi_object* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %117

66:                                               ; preds = %53
  %67 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %68 = bitcast %union.acpi_object* %67 to %struct.TYPE_3__*
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %117

73:                                               ; preds = %66
  %74 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %75 = bitcast %union.acpi_object* %74 to %struct.TYPE_3__*
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load %union.acpi_object*, %union.acpi_object** %76, align 8
  %78 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %77, i64 0
  %79 = bitcast %union.acpi_object* %78 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %93, label %83

83:                                               ; preds = %73
  %84 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %85 = bitcast %union.acpi_object* %84 to %struct.TYPE_3__*
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load %union.acpi_object*, %union.acpi_object** %86, align 8
  %88 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %87, i64 1
  %89 = bitcast %union.acpi_object* %88 to i64*
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83, %73
  br label %117

94:                                               ; preds = %83
  %95 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %96 = bitcast %union.acpi_object* %95 to %struct.TYPE_3__*
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load %union.acpi_object*, %union.acpi_object** %97, align 8
  %99 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %98, i64 0
  store %union.acpi_object* %99, %union.acpi_object** %7, align 8
  %100 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %101 = bitcast %union.acpi_object* %100 to %struct.TYPE_4__*
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @WRDD_WIFI, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %117

107:                                              ; preds = %94
  %108 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %109 = bitcast %union.acpi_object* %108 to %struct.TYPE_3__*
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load %union.acpi_object*, %union.acpi_object** %110, align 8
  %112 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %111, i64 1
  store %union.acpi_object* %112, %union.acpi_object** %8, align 8
  %113 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %114 = bitcast %union.acpi_object* %113 to %struct.TYPE_4__*
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %3, align 8
  br label %121

117:                                              ; preds = %106, %93, %72, %65
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %9, align 8
  br label %45

120:                                              ; preds = %45
  store i64 0, i64* %3, align 8
  br label %121

121:                                              ; preds = %120, %107, %41
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
