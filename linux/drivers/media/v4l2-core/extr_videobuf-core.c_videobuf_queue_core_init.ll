; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_queue_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_queue_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32, i32, i32, i32, i32, i32, %struct.videobuf_qtype_ops*, %struct.videobuf_queue_ops*, i8*, %struct.device*, %struct.mutex*, i32* }
%struct.videobuf_queue_ops = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.videobuf_qtype_ops = type { i32 }
%struct.mutex = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @videobuf_queue_core_init(%struct.videobuf_queue* %0, %struct.videobuf_queue_ops* %1, %struct.device* %2, i32* %3, i32 %4, i32 %5, i32 %6, i8* %7, %struct.videobuf_qtype_ops* %8, %struct.mutex* %9) #0 {
  %11 = alloca %struct.videobuf_queue*, align 8
  %12 = alloca %struct.videobuf_queue_ops*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.videobuf_qtype_ops*, align 8
  %20 = alloca %struct.mutex*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %11, align 8
  store %struct.videobuf_queue_ops* %1, %struct.videobuf_queue_ops** %12, align 8
  store %struct.device* %2, %struct.device** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store %struct.videobuf_qtype_ops* %8, %struct.videobuf_qtype_ops** %19, align 8
  store %struct.mutex* %9, %struct.mutex** %20, align 8
  %21 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %22 = icmp ne %struct.videobuf_queue* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %27 = call i32 @memset(%struct.videobuf_queue* %26, i32 0, i32 72)
  %28 = load i32*, i32** %14, align 8
  %29 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %30 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %29, i32 0, i32 11
  store i32* %28, i32** %30, align 8
  %31 = load %struct.mutex*, %struct.mutex** %20, align 8
  %32 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %33 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %32, i32 0, i32 10
  store %struct.mutex* %31, %struct.mutex** %33, align 8
  %34 = load %struct.device*, %struct.device** %13, align 8
  %35 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %36 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %35, i32 0, i32 9
  store %struct.device* %34, %struct.device** %36, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %39 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %42 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %45 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.videobuf_queue_ops*, %struct.videobuf_queue_ops** %12, align 8
  %47 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %48 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %47, i32 0, i32 7
  store %struct.videobuf_queue_ops* %46, %struct.videobuf_queue_ops** %48, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %51 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %50, i32 0, i32 8
  store i8* %49, i8** %51, align 8
  %52 = load %struct.videobuf_qtype_ops*, %struct.videobuf_qtype_ops** %19, align 8
  %53 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %54 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %53, i32 0, i32 6
  store %struct.videobuf_qtype_ops* %52, %struct.videobuf_qtype_ops** %54, align 8
  %55 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %56 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %55, i32 0, i32 7
  %57 = load %struct.videobuf_queue_ops*, %struct.videobuf_queue_ops** %56, align 8
  %58 = getelementptr inbounds %struct.videobuf_queue_ops, %struct.videobuf_queue_ops* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %65 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %64, i32 0, i32 7
  %66 = load %struct.videobuf_queue_ops*, %struct.videobuf_queue_ops** %65, align 8
  %67 = getelementptr inbounds %struct.videobuf_queue_ops, %struct.videobuf_queue_ops* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %74 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %73, i32 0, i32 7
  %75 = load %struct.videobuf_queue_ops*, %struct.videobuf_queue_ops** %74, align 8
  %76 = getelementptr inbounds %struct.videobuf_queue_ops, %struct.videobuf_queue_ops* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %83 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %82, i32 0, i32 7
  %84 = load %struct.videobuf_queue_ops*, %struct.videobuf_queue_ops** %83, align 8
  %85 = getelementptr inbounds %struct.videobuf_queue_ops, %struct.videobuf_queue_ops* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %97 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %96, i32 0, i32 6
  %98 = load %struct.videobuf_qtype_ops*, %struct.videobuf_qtype_ops** %97, align 8
  %99 = icmp ne %struct.videobuf_qtype_ops* %98, null
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUG_ON(i32 %101)
  %103 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %104 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %103, i32 0, i32 5
  %105 = call i32 @mutex_init(i32* %104)
  %106 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %107 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %106, i32 0, i32 4
  %108 = call i32 @init_waitqueue_head(i32* %107)
  %109 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  %110 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %109, i32 0, i32 3
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.videobuf_queue*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
