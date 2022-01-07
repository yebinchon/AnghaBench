; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_input.c_mantis_input_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_input.c_mantis_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { %struct.rc_dev*, %struct.TYPE_8__*, i64, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.rc_dev = type { %struct.TYPE_7__, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i8* }

@RC_DRIVER_SCANCODE = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Remote device allocation failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Mantis %s IR receiver\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pci-%s/ir0\00", align 1
@BUS_PCI = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4
@RC_MAP_EMPTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"IR device registration failed, ret = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_input_init(%struct.mantis_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %3, align 8
  %6 = load i32, i32* @RC_DRIVER_SCANCODE, align 4
  %7 = call %struct.rc_dev* @rc_allocate_device(i32 %6)
  store %struct.rc_dev* %7, %struct.rc_dev** %4, align 8
  %8 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %9 = icmp ne %struct.rc_dev* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @MANTIS_ERROR, align 4
  %12 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %11, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %100

15:                                               ; preds = %1
  %16 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %17 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %20 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %19, i32 0, i32 7
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @snprintf(i32 %18, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %26 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %29 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i8* @pci_name(%struct.TYPE_8__* %30)
  %32 = call i32 @snprintf(i32 %27, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %34 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %37 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %39 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %42 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @BUS_PCI, align 4
  %44 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %45 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %48 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %51 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %54 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %57 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %60 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* @MODULE_NAME, align 4
  %63 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %64 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %66 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %15
  br label %73

70:                                               ; preds = %15
  %71 = load i32, i32* @RC_MAP_EMPTY, align 4
  %72 = sext i32 %71 to i64
  br label %73

73:                                               ; preds = %70, %69
  %74 = phi i64 [ %67, %69 ], [ %72, %70 ]
  %75 = trunc i64 %74 to i32
  %76 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %77 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %79 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %83 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32* %81, i32** %84, align 8
  %85 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %86 = call i32 @rc_register_device(%struct.rc_dev* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %73
  %90 = load i32, i32* @MANTIS_ERROR, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %90, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %97

93:                                               ; preds = %73
  %94 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %95 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %96 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %95, i32 0, i32 0
  store %struct.rc_dev* %94, %struct.rc_dev** %96, align 8
  store i32 0, i32* %2, align 4
  br label %102

97:                                               ; preds = %89
  %98 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %99 = call i32 @rc_free_device(%struct.rc_dev* %98)
  br label %100

100:                                              ; preds = %97, %10
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %93
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.TYPE_8__*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
