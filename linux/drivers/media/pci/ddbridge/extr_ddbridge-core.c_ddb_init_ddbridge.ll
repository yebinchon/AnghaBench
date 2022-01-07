; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_init_ddbridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_init_ddbridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dma_buf_num = common dso_local global i32 0, align 4
@dma_buf_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ddbridge\00", align 1
@ddb_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_init_ddbridge() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @dma_buf_num, align 4
  %3 = icmp slt i32 %2, 8
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 8, i32* @dma_buf_num, align 4
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i32, i32* @dma_buf_num, align 4
  %7 = icmp sgt i32 %6, 32
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 32, i32* @dma_buf_num, align 4
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i32, i32* @dma_buf_size, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* @dma_buf_size, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* @dma_buf_size, align 4
  %15 = icmp sgt i32 %14, 43
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 43, i32* @dma_buf_size, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = call i64 (...) @ddb_class_create()
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %1, align 4
  br label %28

21:                                               ; preds = %17
  %22 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32 %22, i32* @ddb_wq, align 4
  %23 = load i32, i32* @ddb_wq, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 @ddb_exit_ddbridge(i32 1, i32 -1)
  store i32 %26, i32* %1, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %25, %20
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i64 @ddb_class_create(...) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @ddb_exit_ddbridge(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
