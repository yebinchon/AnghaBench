; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_get_info_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_get_info_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kempld_device_data = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i8* }

@KEMPLD_VERSION = common dso_local global i32 0, align 4
@KEMPLD_SPEC = common dso_local global i32 0, align 4
@KEMPLD_BUILDNR = common dso_local global i32 0, align 4
@KEMPLD_FEATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kempld_device_data*)* @kempld_get_info_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_get_info_generic(%struct.kempld_device_data* %0) #0 {
  %2 = alloca %struct.kempld_device_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.kempld_device_data* %0, %struct.kempld_device_data** %2, align 8
  %5 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %6 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %5)
  %7 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %8 = load i32, i32* @KEMPLD_VERSION, align 4
  %9 = call i8* @kempld_read16(%struct.kempld_device_data* %7, i32 %8)
  store i8* %9, i8** %3, align 8
  %10 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %11 = load i32, i32* @KEMPLD_SPEC, align 4
  %12 = call i32 @kempld_read8(%struct.kempld_device_data* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %14 = load i32, i32* @KEMPLD_BUILDNR, align 4
  %15 = call i8* @kempld_read16(%struct.kempld_device_data* %13, i32 %14)
  %16 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %17 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  store i8* %15, i8** %18, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @KEMPLD_VERSION_GET_MINOR(i8* %19)
  %21 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %22 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store i32 %20, i32* %23, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @KEMPLD_VERSION_GET_MAJOR(i8* %24)
  %26 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %27 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @KEMPLD_VERSION_GET_NUMBER(i8* %29)
  %31 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %32 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @KEMPLD_VERSION_GET_TYPE(i8* %34)
  %36 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %37 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %43 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %46 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %59

48:                                               ; preds = %1
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @KEMPLD_SPEC_GET_MINOR(i32 %49)
  %51 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %52 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @KEMPLD_SPEC_GET_MAJOR(i32 %54)
  %56 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %57 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  br label %59

59:                                               ; preds = %48, %41
  %60 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %61 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %67 = load i32, i32* @KEMPLD_FEATURE, align 4
  %68 = call i8* @kempld_read16(%struct.kempld_device_data* %66, i32 %67)
  %69 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %70 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %74

71:                                               ; preds = %59
  %72 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %73 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %72, i32 0, i32 0
  store i8* null, i8** %73, align 8
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %76 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %75)
  ret i32 0
}

declare dso_local i32 @kempld_get_mutex(%struct.kempld_device_data*) #1

declare dso_local i8* @kempld_read16(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @KEMPLD_VERSION_GET_MINOR(i8*) #1

declare dso_local i32 @KEMPLD_VERSION_GET_MAJOR(i8*) #1

declare dso_local i32 @KEMPLD_VERSION_GET_NUMBER(i8*) #1

declare dso_local i32 @KEMPLD_VERSION_GET_TYPE(i8*) #1

declare dso_local i64 @KEMPLD_SPEC_GET_MINOR(i32) #1

declare dso_local i32 @KEMPLD_SPEC_GET_MAJOR(i32) #1

declare dso_local i32 @kempld_release_mutex(%struct.kempld_device_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
