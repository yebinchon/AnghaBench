; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_core.c_nanddev_mtd_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_core.c_nanddev_mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.erase_info = type { i32, i64, i64 }
%struct.nand_device = type { i32 }
%struct.nand_pos = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanddev_mtd_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.nand_device*, align 8
  %7 = alloca %struct.nand_pos, align 4
  %8 = alloca %struct.nand_pos, align 4
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %10)
  store %struct.nand_device* %11, %struct.nand_device** %6, align 8
  %12 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %13 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %14 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @nanddev_offs_to_pos(%struct.nand_device* %12, i64 %15, %struct.nand_pos* %7)
  %17 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %18 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %19 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %22 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @nanddev_offs_to_pos(%struct.nand_device* %17, i64 %25, %struct.nand_pos* %8)
  br label %27

27:                                               ; preds = %41, %2
  %28 = call i64 @nanddev_pos_cmp(%struct.nand_pos* %7, %struct.nand_pos* %8)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %32 = call i32 @nanddev_erase(%struct.nand_device* %31, %struct.nand_pos* %7)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %37 = call i32 @nanddev_pos_to_offs(%struct.nand_device* %36, %struct.nand_pos* %7)
  %38 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %39 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %30
  %42 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %43 = call i32 @nanddev_pos_next_eraseblock(%struct.nand_device* %42, %struct.nand_pos* %7)
  br label %27

44:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info*) #1

declare dso_local i32 @nanddev_offs_to_pos(%struct.nand_device*, i64, %struct.nand_pos*) #1

declare dso_local i64 @nanddev_pos_cmp(%struct.nand_pos*, %struct.nand_pos*) #1

declare dso_local i32 @nanddev_erase(%struct.nand_device*, %struct.nand_pos*) #1

declare dso_local i32 @nanddev_pos_to_offs(%struct.nand_device*, %struct.nand_pos*) #1

declare dso_local i32 @nanddev_pos_next_eraseblock(%struct.nand_device*, %struct.nand_pos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
