; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_stop_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_stop_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32, i32*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@PT1_NR_ADAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt1*)* @pt1_stop_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt1_stop_polling(%struct.pt1* %0) #0 {
  %2 = alloca %struct.pt1*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %2, align 8
  %5 = load %struct.pt1*, %struct.pt1** %2, align 8
  %6 = getelementptr inbounds %struct.pt1, %struct.pt1* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PT1_NR_ADAPS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load %struct.pt1*, %struct.pt1** %2, align 8
  %14 = getelementptr inbounds %struct.pt1, %struct.pt1* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.pt1*, %struct.pt1** %2, align 8
  %34 = getelementptr inbounds %struct.pt1, %struct.pt1* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.pt1*, %struct.pt1** %2, align 8
  %39 = getelementptr inbounds %struct.pt1, %struct.pt1* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kthread_stop(i32* %40)
  %42 = load %struct.pt1*, %struct.pt1** %2, align 8
  %43 = getelementptr inbounds %struct.pt1, %struct.pt1* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %32, %29
  %45 = load %struct.pt1*, %struct.pt1** %2, align 8
  %46 = getelementptr inbounds %struct.pt1, %struct.pt1* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
