; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kempld_device_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.kempld_platform_data = type { i32 (%struct.kempld_device_data.0*)* }
%struct.kempld_device_data.0 = type opaque

@.str = private unnamed_addr constant [13 x i8] c"P%X%c%c.%04X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kempld_device_data*)* @kempld_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_get_info(%struct.kempld_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kempld_device_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kempld_platform_data*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.kempld_device_data* %0, %struct.kempld_device_data** %3, align 8
  %8 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %9 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.kempld_platform_data* @dev_get_platdata(i32 %10)
  store %struct.kempld_platform_data* %11, %struct.kempld_platform_data** %5, align 8
  %12 = load %struct.kempld_platform_data*, %struct.kempld_platform_data** %5, align 8
  %13 = getelementptr inbounds %struct.kempld_platform_data, %struct.kempld_platform_data* %12, i32 0, i32 0
  %14 = load i32 (%struct.kempld_device_data.0*)*, i32 (%struct.kempld_device_data.0*)** %13, align 8
  %15 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %16 = bitcast %struct.kempld_device_data* %15 to %struct.kempld_device_data.0*
  %17 = call i32 %14(%struct.kempld_device_data.0* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %85

22:                                               ; preds = %1
  %23 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %24 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %30 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 48
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %6, align 1
  br label %43

35:                                               ; preds = %22
  %36 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %37 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 10
  %41 = add nsw i32 %40, 65
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %6, align 1
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %45 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %51 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 48
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %7, align 1
  br label %64

56:                                               ; preds = %43
  %57 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %58 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 10
  %62 = add nsw i32 %61, 65
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %7, align 1
  br label %64

64:                                               ; preds = %56, %49
  %65 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %66 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %70 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i8, i8* %6, align 1
  %74 = load i8, i8* %7, align 1
  %75 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %76 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @scnprintf(i32 %68, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %72, i8 signext %73, i8 signext %74, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %64
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %82, %20
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.kempld_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i32, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
