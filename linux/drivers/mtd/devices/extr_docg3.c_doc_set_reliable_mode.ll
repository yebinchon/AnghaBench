; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_set_reliable_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_set_reliable_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i64 }

@doc_set_reliable_mode.strmode = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"reliable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"doc_set_reliable_mode(%s)\0A\00", align 1
@DOC_SEQ_SET_FASTMODE = common dso_local global i32 0, align 4
@DOC_CMD_FAST_MODE = common dso_local global i32 0, align 4
@DOC_SEQ_SET_RELIABLEMODE = common dso_local global i32 0, align 4
@DOC_CMD_RELIABLE_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"doc_set_reliable_mode(): invalid mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.docg3*)* @doc_set_reliable_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doc_set_reliable_mode(%struct.docg3* %0) #0 {
  %2 = alloca %struct.docg3*, align 8
  store %struct.docg3* %0, %struct.docg3** %2, align 8
  %3 = load %struct.docg3*, %struct.docg3** %2, align 8
  %4 = getelementptr inbounds %struct.docg3, %struct.docg3* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds [4 x i8*], [4 x i8*]* @doc_set_reliable_mode.strmode, i64 0, i64 %5
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @doc_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %7)
  %9 = load %struct.docg3*, %struct.docg3** %2, align 8
  %10 = getelementptr inbounds %struct.docg3, %struct.docg3* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  switch i64 %11, label %30 [
    i64 0, label %12
    i64 1, label %13
    i64 2, label %20
  ]

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.docg3*, %struct.docg3** %2, align 8
  %15 = load i32, i32* @DOC_SEQ_SET_FASTMODE, align 4
  %16 = call i32 @doc_flash_sequence(%struct.docg3* %14, i32 %15)
  %17 = load %struct.docg3*, %struct.docg3** %2, align 8
  %18 = load i32, i32* @DOC_CMD_FAST_MODE, align 4
  %19 = call i32 @doc_flash_command(%struct.docg3* %17, i32 %18)
  br label %32

20:                                               ; preds = %1
  %21 = load %struct.docg3*, %struct.docg3** %2, align 8
  %22 = load i32, i32* @DOC_SEQ_SET_RELIABLEMODE, align 4
  %23 = call i32 @doc_flash_sequence(%struct.docg3* %21, i32 %22)
  %24 = load %struct.docg3*, %struct.docg3** %2, align 8
  %25 = load i32, i32* @DOC_CMD_FAST_MODE, align 4
  %26 = call i32 @doc_flash_command(%struct.docg3* %24, i32 %25)
  %27 = load %struct.docg3*, %struct.docg3** %2, align 8
  %28 = load i32, i32* @DOC_CMD_RELIABLE_MODE, align 4
  %29 = call i32 @doc_flash_command(%struct.docg3* %27, i32 %28)
  br label %32

30:                                               ; preds = %1
  %31 = call i32 @doc_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %20, %13, %12
  %33 = load %struct.docg3*, %struct.docg3** %2, align 8
  %34 = call i32 @doc_delay(%struct.docg3* %33, i32 2)
  ret void
}

declare dso_local i32 @doc_dbg(i8*, i8*) #1

declare dso_local i32 @doc_flash_sequence(%struct.docg3*, i32) #1

declare dso_local i32 @doc_flash_command(%struct.docg3*, i32) #1

declare dso_local i32 @doc_err(i8*) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
