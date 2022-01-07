; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_mem = type { i64, %struct.mmc_test_mem*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_test_mem*)* @mmc_test_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_test_free_mem(%struct.mmc_test_mem* %0) #0 {
  %2 = alloca %struct.mmc_test_mem*, align 8
  store %struct.mmc_test_mem* %0, %struct.mmc_test_mem** %2, align 8
  %3 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %2, align 8
  %4 = icmp ne %struct.mmc_test_mem* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %40

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %13, %6
  %8 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %2, align 8
  %9 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %14, i32 0, i32 1
  %16 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %17 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %2, align 8
  %18 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %16, i64 %19
  %21 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %23, i32 0, i32 1
  %25 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %24, align 8
  %26 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %25, i64 %28
  %30 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @__free_pages(i32 %22, i32 %31)
  br label %7

33:                                               ; preds = %7
  %34 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %2, align 8
  %35 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %34, i32 0, i32 1
  %36 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %35, align 8
  %37 = call i32 @kfree(%struct.mmc_test_mem* %36)
  %38 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %2, align 8
  %39 = call i32 @kfree(%struct.mmc_test_mem* %38)
  br label %40

40:                                               ; preds = %33, %5
  ret void
}

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @kfree(%struct.mmc_test_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
