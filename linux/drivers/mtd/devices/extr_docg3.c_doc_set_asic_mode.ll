; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_set_asic_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_set_asic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@DOC_IOSPACE_IPL = common dso_local global i32 0, align 4
@DOC_ASICMODE_MDWREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"doc_set_asic_mode(%02x)\0A\00", align 1
@DOC_ASICMODE = common dso_local global i32 0, align 4
@DOC_ASICMODECONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.docg3*, i32)* @doc_set_asic_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doc_set_asic_mode(%struct.docg3* %0, i32 %1) #0 {
  %3 = alloca %struct.docg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %13, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 12
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load %struct.docg3*, %struct.docg3** %3, align 8
  %11 = load i32, i32* @DOC_IOSPACE_IPL, align 4
  %12 = call i32 @doc_readb(%struct.docg3* %10, i32 %11)
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* @DOC_ASICMODE_MDWREN, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @doc_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.docg3*, %struct.docg3** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @DOC_ASICMODE, align 4
  %25 = call i32 @doc_writeb(%struct.docg3* %22, i32 %23, i32 %24)
  %26 = load %struct.docg3*, %struct.docg3** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* @DOC_ASICMODECONFIRM, align 4
  %30 = call i32 @doc_writeb(%struct.docg3* %26, i32 %28, i32 %29)
  %31 = load %struct.docg3*, %struct.docg3** %3, align 8
  %32 = call i32 @doc_delay(%struct.docg3* %31, i32 1)
  ret void
}

declare dso_local i32 @doc_readb(%struct.docg3*, i32) #1

declare dso_local i32 @doc_dbg(i8*, i32) #1

declare dso_local i32 @doc_writeb(%struct.docg3*, i32, i32) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
