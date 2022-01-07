; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_adapter = type { %struct.task_struct*, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.task_struct = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@pt3_fetch_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pt3-ad%i-dmx%i\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"PT3 (adap:%d, dmx:%d): failed to start kthread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt3_adapter*)* @pt3_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt3_start_streaming(%struct.pt3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt3_adapter*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.pt3_adapter* %0, %struct.pt3_adapter** %3, align 8
  %6 = load i32, i32* @pt3_fetch_thread, align 4
  %7 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %8 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.task_struct* @kthread_run(i32 %6, %struct.pt3_adapter* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %17)
  store %struct.task_struct* %18, %struct.task_struct** %4, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = call i64 @IS_ERR(%struct.task_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = call i32 @PTR_ERR(%struct.task_struct* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %25, i32 0, i32 0
  store %struct.task_struct* null, %struct.task_struct** %26, align 8
  %27 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; preds = %1
  %44 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %45 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %45, i32 0, i32 0
  store %struct.task_struct* %44, %struct.task_struct** %46, align 8
  %47 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %48 = call i32 @pt3_start_dma(%struct.pt3_adapter* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.pt3_adapter*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @pt3_start_dma(%struct.pt3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
