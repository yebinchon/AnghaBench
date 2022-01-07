; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_core.c_nanddev_markbad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_core.c_nanddev_markbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.nand_pos = type { i32 }
%struct.mtd_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"failed to write BBM to block @%llx (err = %d)\0A\00", align 1
@NAND_BBT_BLOCK_WORN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanddev_markbad(%struct.nand_device* %0, %struct.nand_pos* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_device*, align 8
  %5 = alloca %struct.nand_pos*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_device* %0, %struct.nand_device** %4, align 8
  store %struct.nand_pos* %1, %struct.nand_pos** %5, align 8
  %9 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %10 = call %struct.mtd_info* @nanddev_to_mtd(%struct.nand_device* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %12 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %13 = call i64 @nanddev_isbad(%struct.nand_device* %11, %struct.nand_pos* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %18 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.nand_device*, %struct.nand_pos*)**
  %22 = load i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)** %21, align 8
  %23 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %24 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %25 = call i32 %22(%struct.nand_device* %23, %struct.nand_pos* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %30 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %31 = call i32 @nanddev_pos_to_offs(%struct.nand_device* %29, %struct.nand_pos* %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %16
  %35 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %36 = call i32 @nanddev_bbt_is_initialized(%struct.nand_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %53

39:                                               ; preds = %34
  %40 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %41 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %42 = call i32 @nanddev_bbt_pos_to_entry(%struct.nand_device* %40, %struct.nand_pos* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NAND_BBT_BLOCK_WORN, align 4
  %46 = call i32 @nanddev_bbt_set_block_status(%struct.nand_device* %43, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %53

50:                                               ; preds = %39
  %51 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %52 = call i32 @nanddev_bbt_update(%struct.nand_device* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %49, %38
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.mtd_info* @nanddev_to_mtd(%struct.nand_device*) #1

declare dso_local i64 @nanddev_isbad(%struct.nand_device*, %struct.nand_pos*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @nanddev_pos_to_offs(%struct.nand_device*, %struct.nand_pos*) #1

declare dso_local i32 @nanddev_bbt_is_initialized(%struct.nand_device*) #1

declare dso_local i32 @nanddev_bbt_pos_to_entry(%struct.nand_device*, %struct.nand_pos*) #1

declare dso_local i32 @nanddev_bbt_set_block_status(%struct.nand_device*, i32, i32) #1

declare dso_local i32 @nanddev_bbt_update(%struct.nand_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
