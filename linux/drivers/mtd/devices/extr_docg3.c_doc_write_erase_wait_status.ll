; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_write_erase_wait_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_write_erase_wait_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Timeout reached and the chip is still not ready\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@DOC_PLANES_STATUS_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Erase/Write failed on (a) plane(s), status = %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*)* @doc_write_erase_wait_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_write_erase_wait_status(%struct.docg3* %0) #0 {
  %2 = alloca %struct.docg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.docg3*, %struct.docg3** %2, align 8
  %8 = call i32 @doc_is_ready(%struct.docg3* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 5
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i1 [ false, %6 ], [ %12, %10 ]
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = call i32 @msleep(i32 20)
  br label %17

17:                                               ; preds = %15
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %6

20:                                               ; preds = %13
  %21 = load %struct.docg3*, %struct.docg3** %2, align 8
  %22 = call i32 @doc_is_ready(%struct.docg3* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @doc_dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %41

28:                                               ; preds = %20
  %29 = load %struct.docg3*, %struct.docg3** %2, align 8
  %30 = call i32 @doc_get_op_status(%struct.docg3* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @DOC_PLANES_STATUS_FAIL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i8*, ...) @doc_dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %35, %28
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.docg3*, %struct.docg3** %2, align 8
  %43 = call i32 @doc_page_finish(%struct.docg3* %42)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @doc_is_ready(%struct.docg3*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @doc_dbg(i8*, ...) #1

declare dso_local i32 @doc_get_op_status(%struct.docg3*) #1

declare dso_local i32 @doc_page_finish(%struct.docg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
