; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_flush_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_flush_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, i32, %struct.mei_device* }
%struct.mei_device = type { i32, i32, i32, i32 }
%struct.file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"remove list entry belonging to cl\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_flush_queues(%struct.mei_cl* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_cl*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.mei_device*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %8 = icmp ne %struct.mei_cl* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %11 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %10, i32 0, i32 2
  %12 = load %struct.mei_device*, %struct.mei_device** %11, align 8
  %13 = icmp ne %struct.mei_device* %12, null
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i1 [ true, %2 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %15
  %24 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %25 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %24, i32 0, i32 2
  %26 = load %struct.mei_device*, %struct.mei_device** %25, align 8
  store %struct.mei_device* %26, %struct.mei_device** %6, align 8
  %27 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %28 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %29 = call i32 @cl_dbg(%struct.mei_device* %27, %struct.mei_cl* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %31 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %30, i32 0, i32 2
  %32 = load %struct.mei_device*, %struct.mei_device** %31, align 8
  %33 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %32, i32 0, i32 3
  %34 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %35 = call i32 @mei_io_tx_list_free_cl(i32* %33, %struct.mei_cl* %34)
  %36 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %37 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %36, i32 0, i32 2
  %38 = load %struct.mei_device*, %struct.mei_device** %37, align 8
  %39 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %38, i32 0, i32 2
  %40 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %41 = call i32 @mei_io_tx_list_free_cl(i32* %39, %struct.mei_cl* %40)
  %42 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %43 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %42, i32 0, i32 2
  %44 = load %struct.mei_device*, %struct.mei_device** %43, align 8
  %45 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %44, i32 0, i32 1
  %46 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %47 = call i32 @mei_io_list_flush_cl(i32* %45, %struct.mei_cl* %46)
  %48 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %49 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %48, i32 0, i32 2
  %50 = load %struct.mei_device*, %struct.mei_device** %49, align 8
  %51 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %50, i32 0, i32 0
  %52 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %53 = call i32 @mei_io_list_flush_cl(i32* %51, %struct.mei_cl* %52)
  %54 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %55 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %54, i32 0, i32 1
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = call i32 @mei_io_list_free_fp(i32* %55, %struct.file* %56)
  %58 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %59 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %58, i32 0, i32 0
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = call i32 @mei_io_list_free_fp(i32* %59, %struct.file* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %23, %20
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @mei_io_tx_list_free_cl(i32*, %struct.mei_cl*) #1

declare dso_local i32 @mei_io_list_flush_cl(i32*, %struct.mei_cl*) #1

declare dso_local i32 @mei_io_list_free_fp(i32*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
