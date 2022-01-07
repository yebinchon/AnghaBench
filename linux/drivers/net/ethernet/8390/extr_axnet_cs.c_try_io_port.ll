; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_try_io_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_try_io_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @try_io_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_io_port(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %7
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %17
  store i32 %25, i32* %23, align 4
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %63

34:                                               ; preds = %1
  %35 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %35
  store i32 %43, i32* %41, align 4
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %45 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %34
  %53 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %54 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %55 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %53
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %52, %34
  br label %82

63:                                               ; preds = %1
  %64 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %66 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %67, i64 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %64
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @IO_DATA_PATH_WIDTH_16, align 4
  %74 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %75 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %76, i64 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %73
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %63, %62
  %83 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %84 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %85, i64 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %122, %91
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 1024
  br i1 %94, label %95, label %125

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = xor i32 %96, 768
  %98 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %99 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %100, i64 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i32 %97, i32* %103, align 4
  %104 = load i32, i32* %4, align 4
  %105 = xor i32 %104, 768
  %106 = add nsw i32 %105, 16
  %107 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %108 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %109, i64 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i32 %106, i32* %112, align 4
  %113 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %114 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %113, i32 0, i32 0
  store i32 16, i32* %114, align 8
  %115 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %116 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %95
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %130

121:                                              ; preds = %95
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 32
  store i32 %124, i32* %4, align 4
  br label %92

125:                                              ; preds = %92
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %130

127:                                              ; preds = %82
  %128 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %129 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %128)
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %127, %125, %119
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
