; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_ir_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_ir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm1105_dev = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.rc_dev*, i32, i32 }
%struct.rc_dev = type { i8*, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@RC_DRIVER_SCANCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pci-%s/ir0\00", align 1
@MODULE_NAME = common dso_local global i32 0, align 4
@RC_MAP_DM1105_NEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DVB on-card IR receiver\00", align 1
@BUS_PCI = common dso_local global i32 0, align 4
@dm1105_emit_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm1105_dev*)* @dm1105_ir_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm1105_ir_init(%struct.dm1105_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm1105_dev*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.dm1105_dev* %0, %struct.dm1105_dev** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @RC_DRIVER_SCANCODE, align 4
  %9 = call %struct.rc_dev* @rc_allocate_device(i32 %8)
  store %struct.rc_dev* %9, %struct.rc_dev** %4, align 8
  %10 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %11 = icmp ne %struct.rc_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %17 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %21 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = call i8* @pci_name(%struct.TYPE_8__* %22)
  %24 = call i32 @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @MODULE_NAME, align 4
  %26 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %27 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @RC_MAP_DM1105_NEC, align 4
  %29 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %30 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %32 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %34 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %38 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @BUS_PCI, align 4
  %40 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %41 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  %43 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %47 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %15
  %53 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %54 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %59 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i64 %57, i64* %60, align 8
  %61 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %62 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %67 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  br label %86

69:                                               ; preds = %15
  %70 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %71 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %76 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i64 %74, i64* %77, align 8
  %78 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %79 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %84 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %69, %52
  %87 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %88 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %92 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32* %90, i32** %93, align 8
  %94 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %95 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* @dm1105_emit_key, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  %99 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %100 = call i32 @rc_register_device(%struct.rc_dev* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %86
  %104 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %105 = call i32 @rc_free_device(%struct.rc_dev* %104)
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %112

107:                                              ; preds = %86
  %108 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %109 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %110 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store %struct.rc_dev* %108, %struct.rc_dev** %111, align 8
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %107, %103, %12
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.TYPE_8__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
