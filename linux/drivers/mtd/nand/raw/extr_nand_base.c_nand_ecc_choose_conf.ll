; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_ecc_choose_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_ecc_choose_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.nand_ecc_caps = type { i32 }
%struct.mtd_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NAND_ECC_MAXIMIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_ecc_choose_conf(%struct.nand_chip* %0, %struct.nand_ecc_caps* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.nand_ecc_caps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store %struct.nand_ecc_caps* %1, %struct.nand_ecc_caps** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %14, %17
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ true, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %69

27:                                               ; preds = %19
  %28 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %41 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @nand_check_ecc_caps(%struct.nand_chip* %40, %struct.nand_ecc_caps* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %69

44:                                               ; preds = %33, %27
  %45 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NAND_ECC_MAXIMIZE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %54 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @nand_maximize_ecc(%struct.nand_chip* %53, %struct.nand_ecc_caps* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %69

57:                                               ; preds = %44
  %58 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %59 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @nand_match_ecc_req(%struct.nand_chip* %58, %struct.nand_ecc_caps* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %69

64:                                               ; preds = %57
  %65 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %66 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @nand_maximize_ecc(%struct.nand_chip* %65, %struct.nand_ecc_caps* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %63, %52, %39, %24
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nand_check_ecc_caps(%struct.nand_chip*, %struct.nand_ecc_caps*, i32) #1

declare dso_local i32 @nand_maximize_ecc(%struct.nand_chip*, %struct.nand_ecc_caps*, i32) #1

declare dso_local i32 @nand_match_ecc_req(%struct.nand_chip*, %struct.nand_ecc_caps*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
