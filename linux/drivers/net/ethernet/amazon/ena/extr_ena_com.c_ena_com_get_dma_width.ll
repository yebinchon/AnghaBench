; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_get_dma_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_get_dma_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }

@ENA_REGS_CAPS_OFF = common dso_local global i32 0, align 4
@ENA_MMIO_READ_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Reg read timeout occurred\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ENA_REGS_CAPS_DMA_ADDR_WIDTH_MASK = common dso_local global i32 0, align 4
@ENA_REGS_CAPS_DMA_ADDR_WIDTH_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ENA dma width: %d\0A\00", align 1
@ENA_MAX_PHYS_ADDR_SIZE_BITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"DMA width illegal value: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_get_dma_width(%struct.ena_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  %6 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %7 = load i32, i32* @ENA_REGS_CAPS_OFF, align 4
  %8 = call i32 @ena_com_reg_bar_read32(%struct.ena_com_dev* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ENA_MMIO_READ_TIMEOUT, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ETIME, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ENA_REGS_CAPS_DMA_ADDR_WIDTH_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @ENA_REGS_CAPS_DMA_ADDR_WIDTH_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ENA_MAX_PHYS_ADDR_SIZE_BITS, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %19
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %41 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %33, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ena_com_reg_bar_read32(%struct.ena_com_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
