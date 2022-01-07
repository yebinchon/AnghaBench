; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_reset_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_reset_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@DOC_FLASHCONTROL = common dso_local global i32 0, align 4
@DOC_SEQ_RESET = common dso_local global i32 0, align 4
@DOC_CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"doc_reset_seq() -> isReady=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*)* @doc_reset_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_reset_seq(%struct.docg3* %0) #0 {
  %2 = alloca %struct.docg3*, align 8
  %3 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %2, align 8
  %4 = load %struct.docg3*, %struct.docg3** %2, align 8
  %5 = load i32, i32* @DOC_FLASHCONTROL, align 4
  %6 = call i32 @doc_writeb(%struct.docg3* %4, i32 16, i32 %5)
  %7 = load %struct.docg3*, %struct.docg3** %2, align 8
  %8 = load i32, i32* @DOC_SEQ_RESET, align 4
  %9 = call i32 @doc_flash_sequence(%struct.docg3* %7, i32 %8)
  %10 = load %struct.docg3*, %struct.docg3** %2, align 8
  %11 = load i32, i32* @DOC_CMD_RESET, align 4
  %12 = call i32 @doc_flash_command(%struct.docg3* %10, i32 %11)
  %13 = load %struct.docg3*, %struct.docg3** %2, align 8
  %14 = call i32 @doc_delay(%struct.docg3* %13, i32 2)
  %15 = load %struct.docg3*, %struct.docg3** %2, align 8
  %16 = call i32 @doc_wait_ready(%struct.docg3* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 @doc_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @doc_writeb(%struct.docg3*, i32, i32) #1

declare dso_local i32 @doc_flash_sequence(%struct.docg3*, i32) #1

declare dso_local i32 @doc_flash_command(%struct.docg3*, i32) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

declare dso_local i32 @doc_wait_ready(%struct.docg3*) #1

declare dso_local i32 @doc_dbg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
