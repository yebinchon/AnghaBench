; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-ir.c_smi_ir_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-ir.c_smi_ir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_dev = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.smi_rc }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.smi_rc = type { %struct.smi_dev*, %struct.rc_dev*, i32, i32 }
%struct.rc_dev = type { i8*, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"IR (%s)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"pci-%s/ir0\00", align 1
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SMI_PCIe\00", align 1
@BUS_PCI = common dso_local global i32 0, align 4
@SMI_SAMPLE_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smi_ir_init(%struct.smi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca %struct.smi_rc*, align 8
  store %struct.smi_dev* %0, %struct.smi_dev** %3, align 8
  %7 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %8 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %7, i32 0, i32 2
  store %struct.smi_rc* %8, %struct.smi_rc** %6, align 8
  %9 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %10 = call %struct.rc_dev* @rc_allocate_device(i32 %9)
  store %struct.rc_dev* %10, %struct.rc_dev** %5, align 8
  %11 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %12 = icmp ne %struct.rc_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %111

16:                                               ; preds = %1
  %17 = load %struct.smi_rc*, %struct.smi_rc** %6, align 8
  %18 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %21 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.smi_rc*, %struct.smi_rc** %6, align 8
  %27 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %30 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call i8* @pci_name(%struct.TYPE_8__* %31)
  %33 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %35 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %36 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %38 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.smi_rc*, %struct.smi_rc** %6, align 8
  %40 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %43 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load %struct.smi_rc*, %struct.smi_rc** %6, align 8
  %45 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %48 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @BUS_PCI, align 4
  %50 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %51 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %54 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %57 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %62 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %65 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %70 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %73 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %77 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32* %75, i32** %78, align 8
  %79 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %80 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %85 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = call i32 @MS_TO_NS(i32 100)
  %87 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %88 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @SMI_SAMPLE_PERIOD, align 4
  %90 = call i32 @US_TO_NS(i32 %89)
  %91 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %92 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %94 = load %struct.smi_rc*, %struct.smi_rc** %6, align 8
  %95 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %94, i32 0, i32 1
  store %struct.rc_dev* %93, %struct.rc_dev** %95, align 8
  %96 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %97 = load %struct.smi_rc*, %struct.smi_rc** %6, align 8
  %98 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %97, i32 0, i32 0
  store %struct.smi_dev* %96, %struct.smi_dev** %98, align 8
  %99 = load %struct.smi_rc*, %struct.smi_rc** %6, align 8
  %100 = call i32 @smi_ir_disableInterrupt(%struct.smi_rc* %99)
  %101 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %102 = call i32 @rc_register_device(%struct.rc_dev* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %16
  br label %107

106:                                              ; preds = %16
  store i32 0, i32* %2, align 4
  br label %111

107:                                              ; preds = %105
  %108 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %109 = call i32 @rc_free_device(%struct.rc_dev* %108)
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %106, %13
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.TYPE_8__*) #1

declare dso_local i32 @MS_TO_NS(i32) #1

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @smi_ir_disableInterrupt(%struct.smi_rc*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
