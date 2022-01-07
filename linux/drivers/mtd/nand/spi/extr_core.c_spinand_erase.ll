; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_device = type { i32 }
%struct.nand_pos = type { i32 }
%struct.spinand_device = type { i32 }

@STATUS_ERASE_FAILED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_device*, %struct.nand_pos*)* @spinand_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_erase(%struct.nand_device* %0, %struct.nand_pos* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_device*, align 8
  %5 = alloca %struct.nand_pos*, align 8
  %6 = alloca %struct.spinand_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_device* %0, %struct.nand_device** %4, align 8
  store %struct.nand_pos* %1, %struct.nand_pos** %5, align 8
  %9 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %10 = call %struct.spinand_device* @nand_to_spinand(%struct.nand_device* %9)
  store %struct.spinand_device* %10, %struct.spinand_device** %6, align 8
  %11 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %12 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %13 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @spinand_select_target(%struct.spinand_device* %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %22 = call i32 @spinand_write_enable_op(%struct.spinand_device* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %20
  %28 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %29 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %30 = call i32 @spinand_erase_op(%struct.spinand_device* %28, %struct.nand_pos* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %50

35:                                               ; preds = %27
  %36 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %37 = call i32 @spinand_wait(%struct.spinand_device* %36, i32* %7)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @STATUS_ERASE_FAILED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %40, %35
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %33, %25, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.spinand_device* @nand_to_spinand(%struct.nand_device*) #1

declare dso_local i32 @spinand_select_target(%struct.spinand_device*, i32) #1

declare dso_local i32 @spinand_write_enable_op(%struct.spinand_device*) #1

declare dso_local i32 @spinand_erase_op(%struct.spinand_device*, %struct.nand_pos*) #1

declare dso_local i32 @spinand_wait(%struct.spinand_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
