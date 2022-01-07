; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_response_manager.c_octeon_setup_response_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_response_manager.c_octeon_setup_response_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.cavium_wq, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.cavium_wq = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.octeon_device*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MAX_RESPONSE_LISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dma-comp\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to create wq thread\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@oct_poll_req_completion = common dso_local global i32 0, align 4
@OCT_DRV_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_setup_response_list(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cavium_wq*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAX_RESPONSE_LISTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @atomic_set(i32* %34, i32 0)
  br label %36

36:                                               ; preds = %11
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %7

39:                                               ; preds = %7
  %40 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %40, i32 0, i32 3
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %44 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %43, i32 0)
  %45 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %39
  %54 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %77

61:                                               ; preds = %39
  %62 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %62, i32 0, i32 1
  store %struct.cavium_wq* %63, %struct.cavium_wq** %6, align 8
  %64 = load %struct.cavium_wq*, %struct.cavium_wq** %6, align 8
  %65 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* @oct_poll_req_completion, align 4
  %68 = call i32 @INIT_DELAYED_WORK(i32* %66, i32 %67)
  %69 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %70 = load %struct.cavium_wq*, %struct.cavium_wq** %6, align 8
  %71 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store %struct.octeon_device* %69, %struct.octeon_device** %72, align 8
  %73 = load i32, i32* @OCT_DRV_ONLINE, align 4
  %74 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %75 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %61, %53
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
