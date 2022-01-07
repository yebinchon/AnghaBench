; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_file.c_cxl_chardev_afu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_file.c_cxl_chardev_afu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32*, i32, i32*, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_chardev_afu_remove(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %4 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %9 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %8, i32 0, i32 5
  %10 = call i32 @cdev_del(i32* %9)
  %11 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %12 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @device_unregister(i32* %13)
  %15 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %16 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %15, i32 0, i32 4
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %19 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %24 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %23, i32 0, i32 3
  %25 = call i32 @cdev_del(i32* %24)
  %26 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %27 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @device_unregister(i32* %28)
  %30 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %31 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %22, %17
  %33 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %34 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %39 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %38, i32 0, i32 1
  %40 = call i32 @cdev_del(i32* %39)
  %41 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %42 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @device_unregister(i32* %43)
  %45 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %46 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
