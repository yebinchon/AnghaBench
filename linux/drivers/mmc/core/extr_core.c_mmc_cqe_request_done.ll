; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_cqe_request_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_cqe_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32 (%struct.mmc_request*)*, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EILSEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: CQE req done (direct CMD%u): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: CQE transfer done tag %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s:     %d bytes transferred: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_cqe_request_done(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %6 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %7 = call i32 @mmc_should_fail_request(%struct.mmc_host* %5, %struct.mmc_request* %6)
  %8 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EILSEQ, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EILSEQ, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26, %12
  %36 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %37 = call i32 @mmc_retune_needed(%struct.mmc_host* %36)
  br label %38

38:                                               ; preds = %35, %26, %21
  %39 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %40 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %41 = call i32 @trace_mmc_request_done(%struct.mmc_host* %39, %struct.mmc_request* %40)
  %42 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %48 = call i32 @mmc_hostname(%struct.mmc_host* %47)
  %49 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %53, i32 %58)
  br label %67

60:                                               ; preds = %38
  %61 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %62 = call i32 @mmc_hostname(%struct.mmc_host* %61)
  %63 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %60, %46
  %68 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %74 = call i32 @mmc_hostname(%struct.mmc_host* %73)
  %75 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %81 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %79, i32 %84)
  br label %86

86:                                               ; preds = %72, %67
  %87 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %88 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %87, i32 0, i32 0
  %89 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %88, align 8
  %90 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %91 = call i32 %89(%struct.mmc_request* %90)
  ret void
}

declare dso_local i32 @mmc_should_fail_request(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_retune_needed(%struct.mmc_host*) #1

declare dso_local i32 @trace_mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
