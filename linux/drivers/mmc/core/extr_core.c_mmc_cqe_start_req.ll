; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_cqe_start_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_cqe_start_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.mmc_request = type { i32, %struct.TYPE_3__*, %struct.mmc_host* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"%s: failed to start CQE direct CMD%u, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: failed to start CQE transfer for tag %d, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_cqe_start_req(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %8 = call i32 @mmc_retune(%struct.mmc_host* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %14 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %14, i32 0, i32 2
  store %struct.mmc_host* %13, %struct.mmc_host** %15, align 8
  %16 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %17 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %18 = call i32 @mmc_mrq_pr_debug(%struct.mmc_host* %16, %struct.mmc_request* %17, i32 1)
  %19 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %20 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %21 = call i32 @mmc_mrq_prep(%struct.mmc_host* %19, %struct.mmc_request* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %42

25:                                               ; preds = %12
  %26 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.mmc_host*, %struct.mmc_request*)**
  %31 = load i32 (%struct.mmc_host*, %struct.mmc_request*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)** %30, align 8
  %32 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %33 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %34 = call i32 %31(%struct.mmc_host* %32, %struct.mmc_request* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %42

38:                                               ; preds = %25
  %39 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %40 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %41 = call i32 @trace_mmc_request_start(%struct.mmc_host* %39, %struct.mmc_request* %40)
  store i32 0, i32* %3, align 4
  br label %67

42:                                               ; preds = %37, %24, %11
  %43 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %44 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %49 = call i32 @mmc_hostname(%struct.mmc_host* %48)
  %50 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %51 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54, i32 %55)
  br label %65

57:                                               ; preds = %42
  %58 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %59 = call i32 @mmc_hostname(%struct.mmc_host* %58)
  %60 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %61 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %47
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %38
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @mmc_retune(%struct.mmc_host*) #1

declare dso_local i32 @mmc_mrq_pr_debug(%struct.mmc_host*, %struct.mmc_request*, i32) #1

declare dso_local i32 @mmc_mrq_prep(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @trace_mmc_request_start(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
