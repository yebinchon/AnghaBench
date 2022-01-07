; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_core.c_nanddev_isbad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_core.c_nanddev_isbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.nand_pos = type { i32 }

@NAND_BBT_BLOCK_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@NAND_BBT_BLOCK_FACTORY_BAD = common dso_local global i32 0, align 4
@NAND_BBT_BLOCK_GOOD = common dso_local global i32 0, align 4
@NAND_BBT_BLOCK_WORN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanddev_isbad(%struct.nand_device* %0, %struct.nand_pos* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_device*, align 8
  %5 = alloca %struct.nand_pos*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nand_device* %0, %struct.nand_device** %4, align 8
  store %struct.nand_pos* %1, %struct.nand_pos** %5, align 8
  %8 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %9 = call i64 @nanddev_bbt_is_initialized(%struct.nand_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %13 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %14 = call i32 @nanddev_bbt_pos_to_entry(%struct.nand_device* %12, %struct.nand_pos* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @nanddev_bbt_get_block_status(%struct.nand_device* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NAND_BBT_BLOCK_STATUS_UNKNOWN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %11
  %22 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %23 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.nand_device*, %struct.nand_pos*)**
  %27 = load i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)** %26, align 8
  %28 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %29 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %30 = call i32 %27(%struct.nand_device* %28, %struct.nand_pos* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @NAND_BBT_BLOCK_FACTORY_BAD, align 4
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @NAND_BBT_BLOCK_GOOD, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @nanddev_bbt_set_block_status(%struct.nand_device* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %11
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @NAND_BBT_BLOCK_WORN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @NAND_BBT_BLOCK_FACTORY_BAD, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41
  store i32 1, i32* %3, align 4
  br label %61

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %61

51:                                               ; preds = %2
  %52 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %53 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.nand_device*, %struct.nand_pos*)**
  %57 = load i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)** %56, align 8
  %58 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %59 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %60 = call i32 %57(%struct.nand_device* %58, %struct.nand_pos* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %51, %50, %49
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @nanddev_bbt_is_initialized(%struct.nand_device*) #1

declare dso_local i32 @nanddev_bbt_pos_to_entry(%struct.nand_device*, %struct.nand_pos*) #1

declare dso_local i32 @nanddev_bbt_get_block_status(%struct.nand_device*, i32) #1

declare dso_local i32 @nanddev_bbt_set_block_status(%struct.nand_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
