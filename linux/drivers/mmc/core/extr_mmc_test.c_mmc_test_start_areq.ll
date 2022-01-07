; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_start_areq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_start_areq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32, i32 }

@mmc_test_wait_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, %struct.mmc_request*, %struct.mmc_request*)* @mmc_test_start_areq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_start_areq(%struct.mmc_test_card* %0, %struct.mmc_request* %1, %struct.mmc_request* %2) #0 {
  %4 = alloca %struct.mmc_test_card*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  %7 = alloca %struct.mmc_host*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store %struct.mmc_request* %2, %struct.mmc_request** %6, align 8
  %9 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %15 = icmp ne %struct.mmc_request* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %17, i32 0, i32 0
  %19 = call i32 @init_completion(i32* %18)
  %20 = load i32, i32* @mmc_test_wait_done, align 4
  %21 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %24 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %25 = call i32 @mmc_pre_req(%struct.mmc_host* %23, %struct.mmc_request* %24)
  br label %26

26:                                               ; preds = %16, %3
  %27 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %28 = icmp ne %struct.mmc_request* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 0
  %32 = call i32 @wait_for_completion(i32* %31)
  %33 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %34 = call i32 @mmc_test_wait_busy(%struct.mmc_test_card* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %39 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %40 = call i32 @mmc_test_check_result(%struct.mmc_test_card* %38, %struct.mmc_request* %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %29
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %42
  %46 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %47 = icmp ne %struct.mmc_request* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %50 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %51 = call i32 @mmc_start_request(%struct.mmc_host* %49, %struct.mmc_request* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %56 = call i32 @mmc_retune_release(%struct.mmc_host* %55)
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %45, %42
  %59 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %60 = icmp ne %struct.mmc_request* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %63 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %64 = call i32 @mmc_post_req(%struct.mmc_host* %62, %struct.mmc_request* %63, i32 0)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %70 = icmp ne %struct.mmc_request* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %73 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @mmc_post_req(%struct.mmc_host* %72, %struct.mmc_request* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %68, %65
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mmc_pre_req(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mmc_test_wait_busy(%struct.mmc_test_card*) #1

declare dso_local i32 @mmc_test_check_result(%struct.mmc_test_card*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_start_request(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_retune_release(%struct.mmc_host*) #1

declare dso_local i32 @mmc_post_req(%struct.mmc_host*, %struct.mmc_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
