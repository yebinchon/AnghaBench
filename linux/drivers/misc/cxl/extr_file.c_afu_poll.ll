; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_file.c_afu_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_file.c_afu_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cxl_context* }
%struct.cxl_context = type { i64, i32, i32, i32 }
%struct.poll_table_struct = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"afu_poll wait done pe: %i\0A\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i64 0, align 8
@EPOLLERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"afu_poll pe: %i returning %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afu_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.cxl_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.cxl_context*, %struct.cxl_context** %9, align 8
  store %struct.cxl_context* %10, %struct.cxl_context** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %13 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %12, i32 0, i32 3
  %14 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %15 = call i32 @poll_wait(%struct.file* %11, i32* %13, %struct.poll_table_struct* %14)
  %16 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %17 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %21 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %20, i32 0, i32 2
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %25 = call i64 @ctx_event_pending(%struct.cxl_context* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @EPOLLIN, align 4
  %29 = load i32, i32* @EPOLLRDNORM, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %44

33:                                               ; preds = %2
  %34 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %35 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CLOSED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @EPOLLERR, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %46 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %45, i32 0, i32 2
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %50 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @pr_devel(i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ctx_event_pending(%struct.cxl_context*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
