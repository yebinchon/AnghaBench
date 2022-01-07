; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c___mmc_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c___mmc_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i64, %struct.mmc_request* }
%struct.TYPE_6__ = type { i32 (%struct.mmc_host*, %struct.mmc_request*)*, i64 (%struct.mmc_host*)* }
%struct.TYPE_5__ = type { i32 (%struct.mmc_host*)* }
%struct.mmc_request = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @__mmc_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mmc_start_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call i32 @mmc_retune(%struct.mmc_host* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %19 = call i32 @mmc_request_done(%struct.mmc_host* %17, %struct.mmc_request* %18)
  br label %109

20:                                               ; preds = %2
  %21 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @sdio_is_io_busy(i32 %25, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %20
  %34 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64 (%struct.mmc_host*)*, i64 (%struct.mmc_host*)** %37, align 8
  %39 = icmp ne i64 (%struct.mmc_host*)* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %33
  store i32 500, i32* %6, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64 (%struct.mmc_host*)*, i64 (%struct.mmc_host*)** %45, align 8
  %47 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %48 = call i64 %46(%struct.mmc_host* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %50, %41
  %55 = phi i1 [ false, %41 ], [ %53, %50 ]
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = call i32 @mmc_delay(i32 1)
  br label %41

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  %64 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %69 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %70 = call i32 @mmc_request_done(%struct.mmc_host* %68, %struct.mmc_request* %69)
  br label %109

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %33, %20
  %73 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %74 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %79 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %80 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %79, i32 0, i32 3
  store %struct.mmc_request* %78, %struct.mmc_request** %80, align 8
  %81 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %81, i32 0, i32 0
  %83 = call i32 @reinit_completion(i32* %82)
  br label %84

84:                                               ; preds = %77, %72
  %85 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %86 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %87 = call i32 @trace_mmc_request_start(%struct.mmc_host* %85, %struct.mmc_request* %86)
  %88 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %89 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %94 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %96, align 8
  %98 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %99 = call i32 %97(%struct.mmc_host* %98)
  br label %100

100:                                              ; preds = %92, %84
  %101 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %102 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32 (%struct.mmc_host*, %struct.mmc_request*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)** %104, align 8
  %106 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %107 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %108 = call i32 %105(%struct.mmc_host* %106, %struct.mmc_request* %107)
  br label %109

109:                                              ; preds = %100, %61, %11
  ret void
}

declare dso_local i32 @mmc_retune(%struct.mmc_host*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i64 @sdio_is_io_busy(i32, i32) #1

declare dso_local i32 @mmc_delay(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @trace_mmc_request_start(%struct.mmc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
