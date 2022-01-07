; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hinfc_irq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hinfc_irq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinfc_host = type { i32, i32 }

@HINFC504_INTS = common dso_local global i32 0, align 4
@HINFC504_INTS_DMA = common dso_local global i32 0, align 4
@HINFC504_INTCLR_DMA = common dso_local global i32 0, align 4
@HINFC504_INTCLR = common dso_local global i32 0, align 4
@HINFC504_INTS_CE = common dso_local global i32 0, align 4
@HINFC504_INTCLR_CE = common dso_local global i32 0, align 4
@HINFC504_INTS_UE = common dso_local global i32 0, align 4
@HINFC504_INTCLR_UE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hinfc_irq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinfc_irq_handle(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hinfc_host*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hinfc_host*
  store %struct.hinfc_host* %8, %struct.hinfc_host** %5, align 8
  %9 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %10 = load i32, i32* @HINFC504_INTS, align 4
  %11 = call i32 @hinfc_read(%struct.hinfc_host* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %14 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @HINFC504_INTS_DMA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %23 = load i32, i32* @HINFC504_INTCLR_DMA, align 4
  %24 = load i32, i32* @HINFC504_INTCLR, align 4
  %25 = call i32 @hinfc_write(%struct.hinfc_host* %22, i32 %23, i32 %24)
  %26 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %27 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %26, i32 0, i32 1
  %28 = call i32 @complete(i32* %27)
  br label %51

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @HINFC504_INTS_CE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %36 = load i32, i32* @HINFC504_INTCLR_CE, align 4
  %37 = load i32, i32* @HINFC504_INTCLR, align 4
  %38 = call i32 @hinfc_write(%struct.hinfc_host* %35, i32 %36, i32 %37)
  br label %50

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @HINFC504_INTS_UE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %46 = load i32, i32* @HINFC504_INTCLR_UE, align 4
  %47 = load i32, i32* @HINFC504_INTCLR, align 4
  %48 = call i32 @hinfc_write(%struct.hinfc_host* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @hinfc_read(%struct.hinfc_host*, i32) #1

declare dso_local i32 @hinfc_write(%struct.hinfc_host*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
