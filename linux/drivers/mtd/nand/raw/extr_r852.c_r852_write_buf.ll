; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.r852_device = type { i64, i64 }

@R852_DMA_LEN = common dso_local global i32 0, align 4
@R852_DATALINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @r852_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_write_buf(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r852_device*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call i32 @nand_to_mtd(%struct.nand_chip* %9)
  %11 = call %struct.r852_device* @r852_get_dev(i32 %10)
  store %struct.r852_device* %11, %struct.r852_device** %7, align 8
  %12 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %13 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %74

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @R852_DMA_LEN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %23 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @r852_do_dma(%struct.r852_device* %27, i32* %28, i32 0)
  br label %74

30:                                               ; preds = %21, %17
  br label %31

31:                                               ; preds = %34, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 4
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %37, %41
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 16
  %47 = or i32 %42, %46
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 24
  %52 = or i32 %47, %51
  store i32 %52, i32* %8, align 4
  %53 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %54 = load i32, i32* @R852_DATALINE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @r852_write_reg_dword(%struct.r852_device* %53, i32 %54, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32* %58, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 4
  store i32 %60, i32* %6, align 4
  br label %31

61:                                               ; preds = %31
  br label %62

62:                                               ; preds = %65, %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %67 = load i32, i32* @R852_DATALINE, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  %70 = load i32, i32* %68, align 4
  %71 = call i32 @r852_write_reg(%struct.r852_device* %66, i32 %67, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %6, align 4
  br label %62

74:                                               ; preds = %16, %26, %62
  ret void
}

declare dso_local %struct.r852_device* @r852_get_dev(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @r852_do_dma(%struct.r852_device*, i32*, i32) #1

declare dso_local i32 @r852_write_reg_dword(%struct.r852_device*, i32, i32) #1

declare dso_local i32 @r852_write_reg(%struct.r852_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
