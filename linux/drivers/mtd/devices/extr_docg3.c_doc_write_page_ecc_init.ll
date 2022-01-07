; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_write_page_ecc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_write_page_ecc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@DOC_ECCCONF0_WRITE_MODE = common dso_local global i32 0, align 4
@DOC_ECCCONF0_BCH_ENABLE = common dso_local global i32 0, align 4
@DOC_ECCCONF0_HAMMING_ENABLE = common dso_local global i32 0, align 4
@DOC_ECCCONF0_DATA_BYTES_MASK = common dso_local global i32 0, align 4
@DOC_ECCCONF0 = common dso_local global i32 0, align 4
@DOC_FLASHCONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*, i32)* @doc_write_page_ecc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_write_page_ecc_init(%struct.docg3* %0, i32 %1) #0 {
  %3 = alloca %struct.docg3*, align 8
  %4 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.docg3*, %struct.docg3** %3, align 8
  %6 = load i32, i32* @DOC_ECCCONF0_WRITE_MODE, align 4
  %7 = load i32, i32* @DOC_ECCCONF0_BCH_ENABLE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DOC_ECCCONF0_HAMMING_ENABLE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @DOC_ECCCONF0_DATA_BYTES_MASK, align 4
  %13 = and i32 %11, %12
  %14 = or i32 %10, %13
  %15 = load i32, i32* @DOC_ECCCONF0, align 4
  %16 = call i32 @doc_writew(%struct.docg3* %5, i32 %14, i32 %15)
  %17 = load %struct.docg3*, %struct.docg3** %3, align 8
  %18 = call i32 @doc_delay(%struct.docg3* %17, i32 4)
  %19 = load %struct.docg3*, %struct.docg3** %3, align 8
  %20 = load i32, i32* @DOC_FLASHCONTROL, align 4
  %21 = call i32 @doc_register_readb(%struct.docg3* %19, i32 %20)
  %22 = load %struct.docg3*, %struct.docg3** %3, align 8
  %23 = call i32 @doc_wait_ready(%struct.docg3* %22)
  ret i32 %23
}

declare dso_local i32 @doc_writew(%struct.docg3*, i32, i32) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

declare dso_local i32 @doc_register_readb(%struct.docg3*, i32) #1

declare dso_local i32 @doc_wait_ready(%struct.docg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
