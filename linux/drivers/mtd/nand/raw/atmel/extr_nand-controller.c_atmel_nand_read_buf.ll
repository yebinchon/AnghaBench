; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.atmel_nand = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.atmel_nand_controller = type { i64 }

@MIN_DMA_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @atmel_nand_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_nand_read_buf(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_nand*, align 8
  %8 = alloca %struct.atmel_nand_controller*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %9)
  store %struct.atmel_nand* %10, %struct.atmel_nand** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.atmel_nand_controller* @to_nand_controller(i32 %13)
  store %struct.atmel_nand_controller* %14, %struct.atmel_nand_controller** %8, align 8
  %15 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %8, align 8
  %16 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @virt_addr_valid(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MIN_DMA_LEN, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.atmel_nand*, %struct.atmel_nand** %7, align 8
  %31 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %38 = call i32 @atmel_nand_dma_transfer(%struct.atmel_nand_controller* %28, i32* %29, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %69

41:                                               ; preds = %27, %23, %19, %3
  %42 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.atmel_nand*, %struct.atmel_nand** %7, align 8
  %50 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sdiv i32 %56, 2
  %58 = call i32 @ioread16_rep(i32 %54, i32* %55, i32 %57)
  br label %69

59:                                               ; preds = %41
  %60 = load %struct.atmel_nand*, %struct.atmel_nand** %7, align 8
  %61 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ioread8_rep(i32 %65, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %40, %59, %48
  ret void
}

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand_controller* @to_nand_controller(i32) #1

declare dso_local i64 @virt_addr_valid(i32*) #1

declare dso_local i32 @atmel_nand_dma_transfer(%struct.atmel_nand_controller*, i32*, i32, i32, i32) #1

declare dso_local i32 @ioread16_rep(i32, i32*, i32) #1

declare dso_local i32 @ioread8_rep(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
