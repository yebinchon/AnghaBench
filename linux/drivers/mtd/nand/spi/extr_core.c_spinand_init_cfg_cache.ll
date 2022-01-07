; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_init_cfg_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_init_cfg_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nand_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*)* @spinand_init_cfg_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_init_cfg_cache(%struct.spinand_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spinand_device*, align 8
  %4 = alloca %struct.nand_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %3, align 8
  %8 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %9 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %8)
  store %struct.nand_device* %9, %struct.nand_device** %4, align 8
  %10 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %11 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %18 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @devm_kcalloc(%struct.device* %16, i32 %20, i32 4, i32 %21)
  %23 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %24 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %26 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %36 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %34, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %33
  %41 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @spinand_select_target(%struct.spinand_device* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %67

48:                                               ; preds = %40
  %49 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %50 = load i32, i32* @REG_CFG, align 4
  %51 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %52 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @spinand_read_reg_op(%struct.spinand_device* %49, i32 %50, i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %67

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %33

66:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %60, %46, %29
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @spinand_select_target(%struct.spinand_device*, i32) #1

declare dso_local i32 @spinand_read_reg_op(%struct.spinand_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
