; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_ops = type { i64, i32, i64 }
%struct.nand_chip = type { i32 }

@MTD_OPS_PLACE_OOB = common dso_local global i64 0, align 8
@MTD_OPS_AUTO_OOB = common dso_local global i64 0, align 8
@MTD_OPS_RAW = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)* @nand_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_read_oob(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %8, align 8
  %12 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %13 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %15 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MTD_OPS_PLACE_OOB, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %21 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MTD_OPS_AUTO_OOB, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %27 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MTD_OPS_RAW, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %60

34:                                               ; preds = %25, %19, %3
  %35 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %36 = call i32 @nand_get_device(%struct.nand_chip* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %60

41:                                               ; preds = %34
  %42 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %43 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %50 = call i32 @nand_do_read_oob(%struct.nand_chip* %47, i32 %48, %struct.mtd_oob_ops* %49)
  store i32 %50, i32* %9, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %55 = call i32 @nand_do_read_ops(%struct.nand_chip* %52, i32 %53, %struct.mtd_oob_ops* %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %58 = call i32 @nand_release_device(%struct.nand_chip* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %39, %31
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local i32 @nand_get_device(%struct.nand_chip*) #1

declare dso_local i32 @nand_do_read_oob(%struct.nand_chip*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @nand_do_read_ops(%struct.nand_chip*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @nand_release_device(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
