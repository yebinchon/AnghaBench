; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_core.c_nanddev_mtd_max_bad_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_core.c_nanddev_mtd_max_bad_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nand_pos = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanddev_mtd_max_bad_blocks(%struct.mtd_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nand_device*, align 8
  %9 = alloca %struct.nand_pos, align 4
  %10 = alloca %struct.nand_pos, align 4
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %13 = call %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %12)
  store %struct.nand_device* %13, %struct.nand_device** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.nand_device*, %struct.nand_device** %8, align 8
  %15 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %51

22:                                               ; preds = %3
  %23 = load %struct.nand_device*, %struct.nand_device** %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @nanddev_offs_to_pos(%struct.nand_device* %23, i64 %24, %struct.nand_pos* %9)
  %26 = load %struct.nand_device*, %struct.nand_device** %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @nanddev_offs_to_pos(%struct.nand_device* %26, i64 %29, %struct.nand_pos* %10)
  %31 = load %struct.nand_device*, %struct.nand_device** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @nanddev_offs_to_pos(%struct.nand_device* %31, i64 %32, %struct.nand_pos* %9)
  br label %34

34:                                               ; preds = %46, %22
  %35 = call i64 @nanddev_pos_cmp(%struct.nand_pos* %9, %struct.nand_pos* %10)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.nand_device*, %struct.nand_device** %8, align 8
  %39 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %37
  %47 = load %struct.nand_device*, %struct.nand_device** %8, align 8
  %48 = call i32 @nanddev_pos_next_lun(%struct.nand_device* %47, %struct.nand_pos* %9)
  br label %34

49:                                               ; preds = %34
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info*) #1

declare dso_local i32 @nanddev_offs_to_pos(%struct.nand_device*, i64, %struct.nand_pos*) #1

declare dso_local i64 @nanddev_pos_cmp(%struct.nand_pos*, %struct.nand_pos*) #1

declare dso_local i32 @nanddev_pos_next_lun(%struct.nand_device*, %struct.nand_pos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
