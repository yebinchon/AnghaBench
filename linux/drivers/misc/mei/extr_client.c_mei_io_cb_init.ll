; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_io_cb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_io_cb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_cb = type { i32, i64, %struct.mei_cl*, %struct.file*, i32 }
%struct.mei_cl = type { i32 }
%struct.file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mei_cl_cb* (%struct.mei_cl*, i32, %struct.file*)* @mei_io_cb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mei_cl_cb* @mei_io_cb_init(%struct.mei_cl* %0, i32 %1, %struct.file* %2) #0 {
  %4 = alloca %struct.mei_cl_cb*, align 8
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.mei_cl_cb*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file* %2, %struct.file** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mei_cl_cb* @kzalloc(i32 40, i32 %9)
  store %struct.mei_cl_cb* %10, %struct.mei_cl_cb** %8, align 8
  %11 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %8, align 8
  %12 = icmp ne %struct.mei_cl_cb* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.mei_cl_cb* null, %struct.mei_cl_cb** %4, align 8
  br label %30

14:                                               ; preds = %3
  %15 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %8, align 8
  %16 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %15, i32 0, i32 4
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %8, align 8
  %20 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %19, i32 0, i32 3
  store %struct.file* %18, %struct.file** %20, align 8
  %21 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %22 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %8, align 8
  %23 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %22, i32 0, i32 2
  store %struct.mei_cl* %21, %struct.mei_cl** %23, align 8
  %24 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %8, align 8
  %25 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %8, align 8
  %28 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %8, align 8
  store %struct.mei_cl_cb* %29, %struct.mei_cl_cb** %4, align 8
  br label %30

30:                                               ; preds = %14, %13
  %31 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %4, align 8
  ret %struct.mei_cl_cb* %31
}

declare dso_local %struct.mei_cl_cb* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
