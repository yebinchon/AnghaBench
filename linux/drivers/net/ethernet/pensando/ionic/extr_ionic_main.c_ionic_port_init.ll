; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i32, i32, %struct.ionic_dev, %struct.ionic_identity }
%struct.ionic_dev = type { i64, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ionic_identity = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate port info, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DEVCMD_TIMEOUT = common dso_local global i32 0, align 4
@IONIC_PORT_ADMIN_STATE_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to init port\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_port_init(%struct.ionic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic*, align 8
  %4 = alloca %struct.ionic_identity*, align 8
  %5 = alloca %struct.ionic_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %3, align 8
  %8 = load %struct.ionic*, %struct.ionic** %3, align 8
  %9 = getelementptr inbounds %struct.ionic, %struct.ionic* %8, i32 0, i32 3
  store %struct.ionic_identity* %9, %struct.ionic_identity** %4, align 8
  %10 = load %struct.ionic*, %struct.ionic** %3, align 8
  %11 = getelementptr inbounds %struct.ionic, %struct.ionic* %10, i32 0, i32 2
  store %struct.ionic_dev* %11, %struct.ionic_dev** %5, align 8
  %12 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %13 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

17:                                               ; preds = %1
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @ALIGN(i32 4, i32 %18)
  %20 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %21 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ionic*, %struct.ionic** %3, align 8
  %23 = getelementptr inbounds %struct.ionic, %struct.ionic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %26 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %29 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32* @dma_alloc_coherent(i32 %24, i32 %27, i64* %29, i32 %30)
  %32 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %33 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %35 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %17
  %39 = load %struct.ionic*, %struct.ionic** %3, align 8
  %40 = getelementptr inbounds %struct.ionic, %struct.ionic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %100

45:                                               ; preds = %17
  %46 = call i64 @min(i32 4, i32 4)
  store i64 %46, i64* %6, align 8
  %47 = load %struct.ionic*, %struct.ionic** %3, align 8
  %48 = getelementptr inbounds %struct.ionic, %struct.ionic* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %51 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %55 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @memcpy_toio(i32* %53, i32* %56, i64 %57)
  %59 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %60 = call i32 @ionic_dev_cmd_port_init(%struct.ionic_dev* %59)
  %61 = load %struct.ionic*, %struct.ionic** %3, align 8
  %62 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %63 = call i32 @ionic_dev_cmd_wait(%struct.ionic* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.ionic*, %struct.ionic** %3, align 8
  %65 = getelementptr inbounds %struct.ionic, %struct.ionic* %64, i32 0, i32 2
  %66 = load i32, i32* @IONIC_PORT_ADMIN_STATE_UP, align 4
  %67 = call i32 @ionic_dev_cmd_port_state(%struct.ionic_dev* %65, i32 %66)
  %68 = load %struct.ionic*, %struct.ionic** %3, align 8
  %69 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %70 = call i32 @ionic_dev_cmd_wait(%struct.ionic* %68, i32 %69)
  %71 = load %struct.ionic*, %struct.ionic** %3, align 8
  %72 = getelementptr inbounds %struct.ionic, %struct.ionic* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %45
  %77 = load %struct.ionic*, %struct.ionic** %3, align 8
  %78 = getelementptr inbounds %struct.ionic, %struct.ionic* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.ionic*, %struct.ionic** %3, align 8
  %82 = getelementptr inbounds %struct.ionic, %struct.ionic* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %85 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %88 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %91 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @dma_free_coherent(i32 %83, i32 %86, i32* %89, i64 %92)
  %94 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %95 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %94, i32 0, i32 1
  store i32* null, i32** %95, align 8
  %96 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %97 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %76, %45
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %38, %16
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy_toio(i32*, i32*, i64) #1

declare dso_local i32 @ionic_dev_cmd_port_init(%struct.ionic_dev*) #1

declare dso_local i32 @ionic_dev_cmd_wait(%struct.ionic*, i32) #1

declare dso_local i32 @ionic_dev_cmd_port_state(%struct.ionic_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
