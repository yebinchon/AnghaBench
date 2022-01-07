; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pcmcia.c_ems_pcmcia_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pcmcia.c_ems_pcmcia_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, %struct.TYPE_3__**, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@PRESENT_OPTION = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_16 = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_8 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_CM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pcmcia_request_window failed (err=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"pcmcia_map_mem_page failed (err=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"pcmcia_enable_device failed (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @ems_pcmcia_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_pcmcia_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %5 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @PRESENT_OPTION, align 4
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 16, i32* %20, align 4
  %21 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %21
  store i32 %29, i32* %27, align 4
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 16, i32* %35, align 4
  %36 = load i32, i32* @IO_DATA_PATH_WIDTH_16, align 4
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %38 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %36
  store i32 %44, i32* %42, align 4
  %45 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %46 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %45, i32 0, i32 1
  store i32 5, i32* %46, align 4
  %47 = load i32, i32* @WIN_DATA_WIDTH_8, align 4
  %48 = load i32, i32* @WIN_MEMORY_TYPE_CM, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @WIN_ENABLE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %54, i64 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %51, i32* %57, align 4
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %60, i64 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %65 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %66, i64 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 0, i32* %69, align 4
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %71 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %72 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %73, i64 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = call i32 @pcmcia_request_window(%struct.pcmcia_device* %70, %struct.TYPE_3__* %75, i32 0)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %1
  %80 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %81 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %80, i32 0, i32 3
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %82)
  store i32 0, i32* %2, align 4
  br label %122

84:                                               ; preds = %1
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %86 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %87 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %88, i64 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %92 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pcmcia_map_mem_page(%struct.pcmcia_device* %85, %struct.TYPE_3__* %90, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %84
  %98 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %99 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %98, i32 0, i32 3
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  store i32 0, i32* %2, align 4
  br label %122

102:                                              ; preds = %84
  %103 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %104 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %109 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %108, i32 0, i32 3
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  store i32 0, i32* %2, align 4
  br label %122

112:                                              ; preds = %102
  %113 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %114 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %115 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %116, i64 2
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ems_pcmcia_add_card(%struct.pcmcia_device* %113, i32 %120)
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %112, %107, %97, %79
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @pcmcia_request_window(%struct.pcmcia_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pcmcia_map_mem_page(%struct.pcmcia_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @ems_pcmcia_add_card(%struct.pcmcia_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
