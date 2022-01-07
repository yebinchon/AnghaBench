; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_hw_queue_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_hw_queue_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_queue = type { i32, i32, i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_queue*)* @hw_queue_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_queue_dtor(%struct.hw_queue* %0) #0 {
  %2 = alloca %struct.hw_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hw_queue* %0, %struct.hw_queue** %2, align 8
  %6 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %7 = icmp ne %struct.hw_queue* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %10 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %49

14:                                               ; preds = %8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %17 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %15, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %21 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %24 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %22, %25
  store i32 %26, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %40, %14
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %33 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @free_page(i64 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %46 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = call i32 @kfree(i64* %47)
  br label %49

49:                                               ; preds = %44, %13
  ret void
}

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
