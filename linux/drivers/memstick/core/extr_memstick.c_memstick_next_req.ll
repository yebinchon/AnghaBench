; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_memstick.c_memstick_next_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_memstick.c_memstick_next_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.memstick_request**)* }
%struct.memstick_request = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@cmd_retries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memstick_next_req(%struct.memstick_host* %0, %struct.memstick_request** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memstick_host*, align 8
  %5 = alloca %struct.memstick_request**, align 8
  %6 = alloca i32, align 4
  store %struct.memstick_host* %0, %struct.memstick_host** %4, align 8
  store %struct.memstick_request** %1, %struct.memstick_request*** %5, align 8
  %7 = load i32, i32* @ENXIO, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %10 = load %struct.memstick_request*, %struct.memstick_request** %9, align 8
  %11 = icmp ne %struct.memstick_request* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %14 = load %struct.memstick_request*, %struct.memstick_request** %13, align 8
  %15 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %20 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %26 = load %struct.memstick_request*, %struct.memstick_request** %25, align 8
  %27 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %29 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  store i32 0, i32* %3, align 4
  br label %73

32:                                               ; preds = %18, %12, %2
  %33 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %34 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %39 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_2__*, %struct.memstick_request**)*, i32 (%struct.TYPE_2__*, %struct.memstick_request**)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_2__*, %struct.memstick_request**)* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %46 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_2__*, %struct.memstick_request**)*, i32 (%struct.TYPE_2__*, %struct.memstick_request**)** %48, align 8
  %50 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %51 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %54 = call i32 %49(%struct.TYPE_2__* %52, %struct.memstick_request** %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %44, %37, %32
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @cmd_retries, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @cmd_retries, align 4
  %63 = sub nsw i32 %62, 1
  br label %65

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 1, %64 ]
  %67 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %68 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %71

69:                                               ; preds = %55
  %70 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  store %struct.memstick_request* null, %struct.memstick_request** %70, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
