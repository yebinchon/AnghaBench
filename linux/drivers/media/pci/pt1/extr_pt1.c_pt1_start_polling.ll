; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_start_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_start_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32, i32* }

@pt1_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"earth-pt1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*)* @pt1_start_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_start_polling(%struct.pt1* %0) #0 {
  %2 = alloca %struct.pt1*, align 8
  %3 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pt1*, %struct.pt1** %2, align 8
  %5 = getelementptr inbounds %struct.pt1, %struct.pt1* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.pt1*, %struct.pt1** %2, align 8
  %8 = getelementptr inbounds %struct.pt1, %struct.pt1* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @pt1_thread, align 4
  %13 = load %struct.pt1*, %struct.pt1** %2, align 8
  %14 = call i32* @kthread_run(i32 %12, %struct.pt1* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.pt1*, %struct.pt1** %2, align 8
  %16 = getelementptr inbounds %struct.pt1, %struct.pt1* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.pt1*, %struct.pt1** %2, align 8
  %18 = getelementptr inbounds %struct.pt1, %struct.pt1* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @IS_ERR(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load %struct.pt1*, %struct.pt1** %2, align 8
  %24 = getelementptr inbounds %struct.pt1, %struct.pt1* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @PTR_ERR(i32* %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.pt1*, %struct.pt1** %2, align 8
  %28 = getelementptr inbounds %struct.pt1, %struct.pt1* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %11
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.pt1*, %struct.pt1** %2, align 8
  %32 = getelementptr inbounds %struct.pt1, %struct.pt1* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @kthread_run(i32, %struct.pt1*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
