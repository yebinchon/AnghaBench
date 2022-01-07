; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ir.c_av7110_ir_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ir.c_av7110_ir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { %struct.TYPE_8__, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.rc_dev*, i32, i32 }
%struct.rc_dev = type { i32, %struct.av7110*, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, i64, i32, i64 }

@RC_DRIVER_SCANCODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pci-%s/ir0\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@BUS_PCI = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RCMM32 = common dso_local global i32 0, align 4
@change_protocol = common dso_local global i32 0, align 4
@RC_MAP_HAUPPAUGE = common dso_local global i32 0, align 4
@IR_RC5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_ir_init(%struct.av7110* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  %7 = load i32, i32* @RC_DRIVER_SCANCODE, align 4
  %8 = call %struct.rc_dev* @rc_allocate_device(i32 %7)
  store %struct.rc_dev* %8, %struct.rc_dev** %4, align 8
  %9 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %10 = icmp ne %struct.rc_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %120

14:                                               ; preds = %1
  %15 = load %struct.av7110*, %struct.av7110** %3, align 8
  %16 = getelementptr inbounds %struct.av7110, %struct.av7110* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %5, align 8
  %20 = load %struct.av7110*, %struct.av7110** %3, align 8
  %21 = getelementptr inbounds %struct.av7110, %struct.av7110* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = call i8* @pci_name(%struct.pci_dev* %24)
  %26 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.av7110*, %struct.av7110** %3, align 8
  %28 = getelementptr inbounds %struct.av7110, %struct.av7110* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @KBUILD_MODNAME, align 4
  %33 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %34 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.av7110*, %struct.av7110** %3, align 8
  %36 = getelementptr inbounds %struct.av7110, %struct.av7110* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %40 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @BUS_PCI, align 4
  %42 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %43 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %46 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 2, i32* %47, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %14
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %57 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %63 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  br label %78

65:                                               ; preds = %14
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %70 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i64 %68, i64* %71, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %76 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %65, %52
  %79 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %82 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32* %80, i32** %83, align 8
  %84 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %85 = load i32, i32* @RC_PROTO_BIT_RCMM32, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %88 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @change_protocol, align 4
  %90 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %91 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @RC_MAP_HAUPPAUGE, align 4
  %93 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %94 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.av7110*, %struct.av7110** %3, align 8
  %96 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %97 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %96, i32 0, i32 1
  store %struct.av7110* %95, %struct.av7110** %97, align 8
  %98 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %99 = load %struct.av7110*, %struct.av7110** %3, align 8
  %100 = getelementptr inbounds %struct.av7110, %struct.av7110* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store %struct.rc_dev* %98, %struct.rc_dev** %101, align 8
  %102 = load i32, i32* @IR_RC5, align 4
  %103 = load %struct.av7110*, %struct.av7110** %3, align 8
  %104 = getelementptr inbounds %struct.av7110, %struct.av7110* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  %106 = load %struct.av7110*, %struct.av7110** %3, align 8
  %107 = call i32 @av7110_set_ir_config(%struct.av7110* %106)
  %108 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %109 = call i32 @rc_register_device(%struct.rc_dev* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %78
  %113 = load %struct.av7110*, %struct.av7110** %3, align 8
  %114 = getelementptr inbounds %struct.av7110, %struct.av7110* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store %struct.rc_dev* null, %struct.rc_dev** %115, align 8
  %116 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %117 = call i32 @rc_free_device(%struct.rc_dev* %116)
  br label %118

118:                                              ; preds = %112, %78
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %11
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @av7110_set_ir_config(%struct.av7110*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
