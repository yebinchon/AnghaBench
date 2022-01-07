; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_select_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_select_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { i32, {}* }
%struct.nand_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spinand_select_target(%struct.spinand_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_device*, align 8
  %7 = alloca i32, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %9 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %8)
  store %struct.nand_device* %9, %struct.nand_device** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %12 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp uge i32 %10, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %24 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %55

29:                                               ; preds = %22
  %30 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %31 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %38 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %3, align 4
  br label %55

39:                                               ; preds = %29
  %40 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %41 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %40, i32 0, i32 1
  %42 = bitcast {}** %41 to i32 (%struct.spinand_device*, i32)**
  %43 = load i32 (%struct.spinand_device*, i32)*, i32 (%struct.spinand_device*, i32)** %42, align 8
  %44 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 %43(%struct.spinand_device* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %55

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %54 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %49, %35, %28, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
