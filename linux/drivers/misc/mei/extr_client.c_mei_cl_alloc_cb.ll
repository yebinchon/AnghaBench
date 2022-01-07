; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_alloc_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_alloc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mei_cl = type { i32 }
%struct.file = type { i32 }

@MEI_SLOT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mei_cl_cb* @mei_cl_alloc_cb(%struct.mei_cl* %0, i64 %1, i32 %2, %struct.file* %3) #0 {
  %5 = alloca %struct.mei_cl_cb*, align 8
  %6 = alloca %struct.mei_cl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.mei_cl_cb*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.file* %3, %struct.file** %9, align 8
  %11 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.file*, %struct.file** %9, align 8
  %14 = call %struct.mei_cl_cb* @mei_io_cb_init(%struct.mei_cl* %11, i32 %12, %struct.file* %13)
  store %struct.mei_cl_cb* %14, %struct.mei_cl_cb** %10, align 8
  %15 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %10, align 8
  %16 = icmp ne %struct.mei_cl_cb* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.mei_cl_cb* null, %struct.mei_cl_cb** %5, align 8
  br label %46

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %10, align 8
  store %struct.mei_cl_cb* %22, %struct.mei_cl_cb** %5, align 8
  br label %46

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @MEI_SLOT_SIZE, align 4
  %26 = call i32 @roundup(i64 %24, i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @kmalloc(i32 %26, i32 %27)
  %29 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %10, align 8
  %30 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %10, align 8
  %33 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %10, align 8
  %39 = call i32 @mei_io_cb_free(%struct.mei_cl_cb* %38)
  store %struct.mei_cl_cb* null, %struct.mei_cl_cb** %5, align 8
  br label %46

40:                                               ; preds = %23
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %10, align 8
  %43 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %10, align 8
  store %struct.mei_cl_cb* %45, %struct.mei_cl_cb** %5, align 8
  br label %46

46:                                               ; preds = %40, %37, %21, %17
  %47 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  ret %struct.mei_cl_cb* %47
}

declare dso_local %struct.mei_cl_cb* @mei_io_cb_init(%struct.mei_cl*, i32, %struct.file*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @mei_io_cb_free(%struct.mei_cl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
