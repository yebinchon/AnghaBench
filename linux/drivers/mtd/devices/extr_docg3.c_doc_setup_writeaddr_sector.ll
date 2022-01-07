; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_setup_writeaddr_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_setup_writeaddr_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.docg3*, i32, i32)* @doc_setup_writeaddr_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doc_setup_writeaddr_sector(%struct.docg3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.docg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 2
  store i32 %8, i32* %6, align 4
  %9 = load %struct.docg3*, %struct.docg3** %4, align 8
  %10 = call i32 @doc_delay(%struct.docg3* %9, i32 1)
  %11 = load %struct.docg3*, %struct.docg3** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 255
  %14 = call i32 @doc_flash_address(%struct.docg3* %11, i32 %13)
  %15 = load %struct.docg3*, %struct.docg3** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = call i32 @doc_flash_address(%struct.docg3* %15, i32 %17)
  %19 = load %struct.docg3*, %struct.docg3** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = call i32 @doc_flash_address(%struct.docg3* %19, i32 %22)
  %24 = load %struct.docg3*, %struct.docg3** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = call i32 @doc_flash_address(%struct.docg3* %24, i32 %27)
  %29 = load %struct.docg3*, %struct.docg3** %4, align 8
  %30 = call i32 @doc_delay(%struct.docg3* %29, i32 1)
  ret void
}

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

declare dso_local i32 @doc_flash_address(%struct.docg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
