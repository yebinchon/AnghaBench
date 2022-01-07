; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_port_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_port_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { i32, i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, %struct.TYPE_7__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@ci_bitrate = common dso_local global i32 0, align 4
@dvbdev_ci = common dso_local global i32 0, align 4
@DVB_DEVICE_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"port_attach on port %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_port*)* @ddb_port_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_port_attach(%struct.ddb_port* %0) #0 {
  %2 = alloca %struct.ddb_port*, align 8
  %3 = alloca i32, align 4
  store %struct.ddb_port* %0, %struct.ddb_port** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %5 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %82 [
    i32 128, label %7
    i32 130, label %56
    i32 129, label %64
  ]

7:                                                ; preds = %1
  %8 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %9 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %8, i32 0, i32 5
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %10, i64 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = call i32 @dvb_input_attach(%struct.TYPE_7__* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %83

17:                                               ; preds = %7
  %18 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %19 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %18, i32 0, i32 5
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call i32 @dvb_input_attach(%struct.TYPE_7__* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %28 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %27, i32 0, i32 5
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %29, i64 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = call i32 @dvb_input_detach(%struct.TYPE_7__* %31)
  br label %83

33:                                               ; preds = %17
  %34 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %35 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %34, i32 0, i32 5
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %40 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %39, i32 0, i32 5
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %41, i64 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %44, align 8
  %45 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %46 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %45, i32 0, i32 5
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %47, i64 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %51 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %50, i32 0, i32 5
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %52, i64 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %55, align 8
  br label %83

56:                                               ; preds = %1
  %57 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %58 = load i32, i32* @ci_bitrate, align 4
  %59 = call i32 @ddb_ci_attach(%struct.ddb_port* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %83

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %1, %63
  %65 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %66 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %72 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %71, i32 0, i32 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %77 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* @DVB_DEVICE_SEC, align 4
  %81 = call i32 @dvb_register_device(i32 %70, i32* %75, i32* @dvbdev_ci, i8* %79, i32 %80, i32 0)
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %1
  br label %83

83:                                               ; preds = %82, %64, %62, %33, %26, %16
  %84 = load i32, i32* %3, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %88 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %93 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %86, %83
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @dvb_input_attach(%struct.TYPE_7__*) #1

declare dso_local i32 @dvb_input_detach(%struct.TYPE_7__*) #1

declare dso_local i32 @ddb_ci_attach(%struct.ddb_port*, i32) #1

declare dso_local i32 @dvb_register_device(i32, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
