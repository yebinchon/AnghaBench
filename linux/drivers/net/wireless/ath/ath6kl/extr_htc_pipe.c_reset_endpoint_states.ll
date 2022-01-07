; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_reset_endpoint_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_reset_endpoint_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.htc_endpoint* }
%struct.htc_endpoint = type { i32, %struct.TYPE_2__, %struct.htc_target*, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@ENDPOINT_0 = common dso_local global i32 0, align 4
@ENDPOINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*)* @reset_endpoint_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_endpoint_states(%struct.htc_target* %0) #0 {
  %2 = alloca %struct.htc_target*, align 8
  %3 = alloca %struct.htc_endpoint*, align 8
  %4 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %2, align 8
  %5 = load i32, i32* @ENDPOINT_0, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ENDPOINT_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %12 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %11, i32 0, i32 0
  %13 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %13, i64 %15
  store %struct.htc_endpoint* %16, %struct.htc_endpoint** %3, align 8
  %17 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %18 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %20 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %22 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %25 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %27 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %26, i32 0, i32 4
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %30 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %34 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %33, i32 0, i32 3
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %37 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %38 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %37, i32 0, i32 2
  store %struct.htc_target* %36, %struct.htc_target** %38, align 8
  %39 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %40 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %10
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %6

45:                                               ; preds = %6
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
