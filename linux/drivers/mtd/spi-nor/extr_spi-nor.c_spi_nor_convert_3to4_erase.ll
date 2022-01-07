; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_convert_3to4_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_convert_3to4_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@spi_nor_convert_3to4_erase.spi_nor_3to4_erase = internal constant [3 x [2 x %struct.TYPE_8__]] [[2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 131, i32 130 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 133, i32 132 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 129, i32 128 }, %struct.TYPE_8__ zeroinitializer]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @spi_nor_convert_3to4_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spi_nor_convert_3to4_erase(i64 %0) #0 {
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = bitcast %struct.TYPE_8__* %3 to i64*
  store i64 %0, i64* %4, align 4
  %5 = call i32 @ARRAY_SIZE(%struct.TYPE_8__** bitcast ([3 x [2 x %struct.TYPE_8__]]* @spi_nor_convert_3to4_erase.spi_nor_3to4_erase to %struct.TYPE_8__**))
  %6 = bitcast %struct.TYPE_8__* %3 to i64*
  %7 = load i64, i64* %6, align 4
  %8 = call i64 @spi_nor_convert_opcode(i64 %7, %struct.TYPE_8__** bitcast ([3 x [2 x %struct.TYPE_8__]]* @spi_nor_convert_3to4_erase.spi_nor_3to4_erase to %struct.TYPE_8__**), i32 %5)
  %9 = bitcast %struct.TYPE_8__* %2 to i64*
  store i64 %8, i64* %9, align 4
  %10 = bitcast %struct.TYPE_8__* %2 to i64*
  %11 = load i64, i64* %10, align 4
  ret i64 %11
}

declare dso_local i64 @spi_nor_convert_opcode(i64, %struct.TYPE_8__**, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
