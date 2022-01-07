; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_bbt.c_nanddev_bbt_get_block_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_bbt.c_nanddev_bbt_get_block_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@NAND_BBT_BLOCK_NUM_STATUS = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanddev_bbt_get_block_status(%struct.nand_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.nand_device* %0, %struct.nand_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @NAND_BBT_BLOCK_NUM_STATUS, align 4
  %11 = call i32 @fls(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %13 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul i32 %16, %17
  %19 = load i32, i32* @BITS_PER_LONG, align 4
  %20 = udiv i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %15, i64 %21
  store i64* %22, i64** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul i32 %23, %24
  %26 = load i32, i32* @BITS_PER_LONG, align 4
  %27 = urem i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %30 = call i32 @nanddev_neraseblocks(%struct.nand_device* %29)
  %31 = icmp uge i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @ERANGE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %65

35:                                               ; preds = %2
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %38, %40
  store i64 %41, i64* %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* @BITS_PER_LONG, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = load i64*, i64** %7, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @BITS_PER_LONG, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = shl i64 %50, %54
  %56 = load i64, i64* %9, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %47, %35
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sub i32 %60, 1
  %62 = call i64 @GENMASK(i32 %61, i32 0)
  %63 = and i64 %59, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %32
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @nanddev_neraseblocks(%struct.nand_device*) #1

declare dso_local i64 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
