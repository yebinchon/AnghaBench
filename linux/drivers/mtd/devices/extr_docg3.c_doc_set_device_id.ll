; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_set_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_set_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"doc_set_device_id(%d)\0A\00", align 1
@DOC_DEVICESELECT = common dso_local global i32 0, align 4
@DOC_FLASHCONTROL = common dso_local global i32 0, align 4
@DOC_CTRL_VIOLATION = common dso_local global i32 0, align 4
@DOC_CTRL_CE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.docg3*, i32)* @doc_set_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doc_set_device_id(%struct.docg3* %0, i32 %1) #0 {
  %3 = alloca %struct.docg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @doc_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.docg3*, %struct.docg3** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DOC_DEVICESELECT, align 4
  %11 = call i32 @doc_writeb(%struct.docg3* %8, i32 %9, i32 %10)
  %12 = load %struct.docg3*, %struct.docg3** %3, align 8
  %13 = load i32, i32* @DOC_FLASHCONTROL, align 4
  %14 = call i32 @doc_register_readb(%struct.docg3* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @DOC_CTRL_VIOLATION, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @DOC_CTRL_CE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.docg3*, %struct.docg3** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DOC_FLASHCONTROL, align 4
  %25 = call i32 @doc_writeb(%struct.docg3* %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @doc_dbg(i8*, i32) #1

declare dso_local i32 @doc_writeb(%struct.docg3*, i32, i32) #1

declare dso_local i32 @doc_register_readb(%struct.docg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
