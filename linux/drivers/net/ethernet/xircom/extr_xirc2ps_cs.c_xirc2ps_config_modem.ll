; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_xirc2ps_config_modem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_xirc2ps_config_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_16 = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @xirc2ps_config_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xirc2ps_config_modem(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %107

19:                                               ; preds = %2
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 16, i32* %25, align 4
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 8, i32* %31, align 4
  %32 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %33
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @IO_DATA_PATH_WIDTH_16, align 4
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %42
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %54 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %52
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %63 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %61
  store i32 %69, i32* %67, align 4
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %71 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %70, i32 0, i32 0
  store i32 10, i32* %71, align 8
  %72 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %73 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %80 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %81, i64 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %78, i32* %84, align 4
  store i32 768, i32* %6, align 4
  br label %85

85:                                               ; preds = %101, %19
  %86 = load i32, i32* %6, align 4
  %87 = icmp ult i32 %86, 1024
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %91 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %92, i64 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %89, i32* %95, align 4
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %97 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %107

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %102, 16
  store i32 %103, i32* %6, align 4
  br label %85

104:                                              ; preds = %85
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %104, %99, %16
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
