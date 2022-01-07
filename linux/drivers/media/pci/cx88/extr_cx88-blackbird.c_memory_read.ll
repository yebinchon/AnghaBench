; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_memory_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_memory_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@P1_MADDR2 = common dso_local global i32 0, align 4
@P1_MADDR1 = common dso_local global i32 0, align 4
@P1_MADDR0 = common dso_local global i32 0, align 4
@P1_MDATA3 = common dso_local global i32 0, align 4
@P1_MDATA2 = common dso_local global i32 0, align 4
@P1_MDATA1 = common dso_local global i32 0, align 4
@P1_MDATA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_core*, i32, i32*)* @memory_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_read(%struct.cx88_core* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @P1_MADDR2, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 16
  %12 = and i32 %11, -193
  %13 = call i32 @cx_writeb(i32 %9, i32 %12)
  %14 = load i32, i32* @P1_MADDR1, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = call i32 @cx_writeb(i32 %14, i32 %16)
  %18 = load i32, i32* @P1_MADDR0, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @cx_writeb(i32 %18, i32 %19)
  %21 = load i32, i32* @P1_MADDR0, align 4
  %22 = call i64 @cx_read(i32 %21)
  %23 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %24 = call i32 @wait_ready_gpio0_bit1(%struct.cx88_core* %23, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @P1_MDATA3, align 4
  %26 = call i32 @cx_writeb(i32 %25, i32 0)
  %27 = load i32, i32* @P1_MDATA3, align 4
  %28 = call i64 @cx_read(i32 %27)
  %29 = trunc i64 %28 to i8
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 24
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @P1_MDATA2, align 4
  %33 = call i32 @cx_writeb(i32 %32, i32 0)
  %34 = load i32, i32* @P1_MDATA2, align 4
  %35 = call i64 @cx_read(i32 %34)
  %36 = trunc i64 %35 to i8
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 16
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @P1_MDATA1, align 4
  %42 = call i32 @cx_writeb(i32 %41, i32 0)
  %43 = load i32, i32* @P1_MDATA1, align 4
  %44 = call i64 @cx_read(i32 %43)
  %45 = trunc i64 %44 to i8
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @P1_MDATA0, align 4
  %51 = call i32 @cx_writeb(i32 %50, i32 0)
  %52 = load i32, i32* @P1_MDATA0, align 4
  %53 = call i64 @cx_read(i32 %52)
  %54 = trunc i64 %53 to i8
  %55 = zext i8 %54 to i32
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @cx_writeb(i32, i32) #1

declare dso_local i64 @cx_read(i32) #1

declare dso_local i32 @wait_ready_gpio0_bit1(%struct.cx88_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
