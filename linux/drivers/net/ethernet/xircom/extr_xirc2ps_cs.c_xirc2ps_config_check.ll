; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_xirc2ps_config_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_xirc2ps_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_16 = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @xirc2ps_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xirc2ps_config_check(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 32
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 -24, i32 8
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 32
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 8, i32 -24
  br label %36

36:                                               ; preds = %28, %20
  %37 = phi i32 [ %27, %20 ], [ %35, %28 ]
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %127

52:                                               ; preds = %36
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %54 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 18, i32* %58, align 4
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %60 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %61, i64 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 8, i32* %64, align 4
  %65 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %68 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %66
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @IO_DATA_PATH_WIDTH_16, align 4
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %77 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %75
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %87 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %88, i64 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %85
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %95 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %96 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %97, i64 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %94
  store i32 %102, i32* %100, align 4
  %103 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %104 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %103, i32 0, i32 1
  store i32 10, i32* %104, align 4
  %105 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %106 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %107, i64 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %113 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %114, i64 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %111, i32* %117, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %120 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %121, i64 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32 %118, i32* %124, align 4
  %125 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %126 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %125)
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %52, %49
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
