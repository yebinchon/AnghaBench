; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_load_firm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_load_firm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"ngene_15.fw\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ngene_16.fw\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ngene_17.fw\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ngene_18.fw\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not load firmware file %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Copy %s to your hotplug directory!\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Firmware %s has invalid size!\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Loading firmware file %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene*)* @ngene_load_firm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngene_load_firm(%struct.ngene* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ngene* %0, %struct.ngene** %3, align 8
  %11 = load %struct.ngene*, %struct.ngene** %3, align 8
  %12 = getelementptr inbounds %struct.ngene, %struct.ngene* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  store %struct.firmware* null, %struct.firmware** %6, align 8
  %15 = load %struct.ngene*, %struct.ngene** %3, align 8
  %16 = getelementptr inbounds %struct.ngene, %struct.ngene* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %21 [
    i32 15, label %22
    i32 16, label %25
    i32 17, label %28
    i32 18, label %31
  ]

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %1, %21
  store i32 15, i32* %10, align 4
  store i64 23466, i64* %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %23 = load %struct.ngene*, %struct.ngene** %3, align 8
  %24 = getelementptr inbounds %struct.ngene, %struct.ngene* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %32

25:                                               ; preds = %1
  store i64 23498, i64* %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %26 = load %struct.ngene*, %struct.ngene** %3, align 8
  %27 = getelementptr inbounds %struct.ngene, %struct.ngene* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %32

28:                                               ; preds = %1
  store i64 24446, i64* %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %29 = load %struct.ngene*, %struct.ngene** %3, align 8
  %30 = getelementptr inbounds %struct.ngene, %struct.ngene* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %32

31:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %32

32:                                               ; preds = %31, %28, %25, %22
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.ngene*, %struct.ngene** %3, align 8
  %35 = getelementptr inbounds %struct.ngene, %struct.ngene* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i64 @request_firmware(%struct.firmware** %6, i8* %33, %struct.device* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @dev_info(%struct.device* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  store i32 -1, i32* %2, align 4
  br label %80

47:                                               ; preds = %32
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.firmware*, %struct.firmware** %6, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.firmware*, %struct.firmware** %6, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  store i32 -1, i32* %9, align 4
  br label %76

64:                                               ; preds = %54
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @dev_info(%struct.device* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %66)
  %68 = load %struct.firmware*, %struct.firmware** %6, align 8
  %69 = getelementptr inbounds %struct.firmware, %struct.firmware* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %7, align 8
  %72 = load %struct.ngene*, %struct.ngene** %3, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @ngene_command_load_firmware(%struct.ngene* %72, i32* %73, i64 %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %64, %60
  %77 = load %struct.firmware*, %struct.firmware** %6, align 8
  %78 = call i32 @release_firmware(%struct.firmware* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %40
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @ngene_command_load_firmware(%struct.ngene*, i32*, i64) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
