; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_set_extra_page_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_set_extra_page_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"doc_set_extra_page_mode()\0A\00", align 1
@DOC_SEQ_PAGE_SIZE_532 = common dso_local global i32 0, align 4
@DOC_CMD_PAGE_SIZE_532 = common dso_local global i32 0, align 4
@DOC_FLASHCONTROL = common dso_local global i32 0, align 4
@DOC_CTRL_PROTECTION_ERROR = common dso_local global i32 0, align 4
@DOC_CTRL_SEQUENCE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*)* @doc_set_extra_page_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_set_extra_page_mode(%struct.docg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.docg3*, align 8
  %4 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %3, align 8
  %5 = call i32 @doc_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.docg3*, %struct.docg3** %3, align 8
  %7 = load i32, i32* @DOC_SEQ_PAGE_SIZE_532, align 4
  %8 = call i32 @doc_flash_sequence(%struct.docg3* %6, i32 %7)
  %9 = load %struct.docg3*, %struct.docg3** %3, align 8
  %10 = load i32, i32* @DOC_CMD_PAGE_SIZE_532, align 4
  %11 = call i32 @doc_flash_command(%struct.docg3* %9, i32 %10)
  %12 = load %struct.docg3*, %struct.docg3** %3, align 8
  %13 = call i32 @doc_delay(%struct.docg3* %12, i32 2)
  %14 = load %struct.docg3*, %struct.docg3** %3, align 8
  %15 = load i32, i32* @DOC_FLASHCONTROL, align 4
  %16 = call i32 @doc_register_readb(%struct.docg3* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DOC_CTRL_PROTECTION_ERROR, align 4
  %19 = load i32, i32* @DOC_CTRL_SEQUENCE_ERROR, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @doc_dbg(i8*) #1

declare dso_local i32 @doc_flash_sequence(%struct.docg3*, i32) #1

declare dso_local i32 @doc_flash_command(%struct.docg3*, i32) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

declare dso_local i32 @doc_register_readb(%struct.docg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
