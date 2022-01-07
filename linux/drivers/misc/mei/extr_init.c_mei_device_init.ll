; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { %struct.device*, %struct.mei_hw_ops*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.mei_hw_ops = type { i32 }

@MEI_DEV_INITIALIZING = common dso_local global i32 0, align 4
@MEI_TX_QUEUE_LIMIT_DEFAULT = common dso_local global i32 0, align 4
@mei_timer = common dso_local global i32 0, align 4
@mei_reset_work = common dso_local global i32 0, align 4
@mei_cl_bus_rescan_work = common dso_local global i32 0, align 4
@MEI_CLIENTS_MAX = common dso_local global i32 0, align 4
@MEI_PG_EVENT_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_device_init(%struct.mei_device* %0, %struct.device* %1, %struct.mei_hw_ops* %2) #0 {
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mei_hw_ops*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.mei_hw_ops* %2, %struct.mei_hw_ops** %6, align 8
  %7 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %8 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %7, i32 0, i32 23
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %11 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %10, i32 0, i32 22
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %14 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %13, i32 0, i32 21
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %17 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %16, i32 0, i32 20
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %20 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %19, i32 0, i32 19
  %21 = call i32 @init_rwsem(i32* %20)
  %22 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %23 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %22, i32 0, i32 18
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %26 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %25, i32 0, i32 17
  %27 = call i32 @init_waitqueue_head(i32* %26)
  %28 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %29 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %28, i32 0, i32 16
  %30 = call i32 @init_waitqueue_head(i32* %29)
  %31 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 15
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load i32, i32* @MEI_DEV_INITIALIZING, align 4
  %35 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %36 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %35, i32 0, i32 14
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %38 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %37, i32 0, i32 13
  store i64 0, i64* %38, align 8
  %39 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %40 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %39, i32 0, i32 12
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %43 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %42, i32 0, i32 11
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %46 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %45, i32 0, i32 10
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %49 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %48, i32 0, i32 9
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load i32, i32* @MEI_TX_QUEUE_LIMIT_DEFAULT, align 4
  %52 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %53 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %55 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %54, i32 0, i32 7
  %56 = load i32, i32* @mei_timer, align 4
  %57 = call i32 @INIT_DELAYED_WORK(i32* %55, i32 %56)
  %58 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %59 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %58, i32 0, i32 6
  %60 = load i32, i32* @mei_reset_work, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  %62 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %63 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %62, i32 0, i32 5
  %64 = load i32, i32* @mei_cl_bus_rescan_work, align 4
  %65 = call i32 @INIT_WORK(i32* %63, i32 %64)
  %66 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %67 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MEI_CLIENTS_MAX, align 4
  %70 = call i32 @bitmap_zero(i32 %68, i32 %69)
  %71 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %72 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %74 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bitmap_set(i32 %75, i32 0, i32 1)
  %77 = load i32, i32* @MEI_PG_EVENT_IDLE, align 4
  %78 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %79 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mei_hw_ops*, %struct.mei_hw_ops** %6, align 8
  %81 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %82 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %81, i32 0, i32 1
  store %struct.mei_hw_ops* %80, %struct.mei_hw_ops** %82, align 8
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %85 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %84, i32 0, i32 0
  store %struct.device* %83, %struct.device** %85, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
