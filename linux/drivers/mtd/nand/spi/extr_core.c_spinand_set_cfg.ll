; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_set_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { i64, i64* }
%struct.nand_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@REG_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*, i64)* @spinand_set_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_set_cfg(%struct.spinand_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nand_device*, align 8
  %7 = alloca i32, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %9 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %8)
  store %struct.nand_device* %9, %struct.nand_device** %6, align 8
  %10 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %11 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %16 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %19 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %17, %21
  br label %23

23:                                               ; preds = %14, %2
  %24 = phi i1 [ true, %2 ], [ %22, %14 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %61

31:                                               ; preds = %23
  %32 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %33 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %36 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %61

43:                                               ; preds = %31
  %44 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %45 = load i32, i32* @REG_CFG, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spinand_write_reg_op(%struct.spinand_device* %44, i32 %45, i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %61

52:                                               ; preds = %43
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %55 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %58 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  store i64 %53, i64* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %52, %50, %42, %28
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spinand_write_reg_op(%struct.spinand_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
