; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_check_ecc_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_check_ecc_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nand_ecc_caps = type { i32, i32 (i32, i32)*, %struct.nand_ecc_step_info* }
%struct.nand_ecc_step_info = type { i32, i32, i32* }
%struct.mtd_info = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"ECC (step, strength) = (%d, %d) does not fit in OOB\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"ECC (step, strength) = (%d, %d) not supported on this controller\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_ecc_caps*, i32)* @nand_check_ecc_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_check_ecc_caps(%struct.nand_chip* %0, %struct.nand_ecc_caps* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.nand_ecc_caps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.nand_ecc_step_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store %struct.nand_ecc_caps* %1, %struct.nand_ecc_caps** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %16)
  store %struct.mtd_info* %17, %struct.mtd_info** %8, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %103, %3
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %34 = getelementptr inbounds %struct.nand_ecc_caps, %struct.nand_ecc_caps* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %106

37:                                               ; preds = %31
  %38 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %39 = getelementptr inbounds %struct.nand_ecc_caps, %struct.nand_ecc_caps* %38, i32 0, i32 2
  %40 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %40, i64 %42
  store %struct.nand_ecc_step_info* %43, %struct.nand_ecc_step_info** %9, align 8
  %44 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %9, align 8
  %45 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %103

50:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %99, %50
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %9, align 8
  %54 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %51
  %58 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %9, align 8
  %59 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %99

68:                                               ; preds = %57
  %69 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %70 = getelementptr inbounds %struct.nand_ecc_caps, %struct.nand_ecc_caps* %69, i32 0, i32 1
  %71 = load i32 (i32, i32)*, i32 (i32, i32)** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 %71(i32 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @WARN_ON_ONCE(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %112

82:                                               ; preds = %68
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @ENOSPC, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %112

94:                                               ; preds = %82
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %97 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 4
  store i32 0, i32* %4, align 4
  br label %112

99:                                               ; preds = %67
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %51

102:                                              ; preds = %51
  br label %103

103:                                              ; preds = %102, %49
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %31

106:                                              ; preds = %31
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* @ENOTSUPP, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %94, %88, %80
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
