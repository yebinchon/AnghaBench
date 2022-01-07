; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_fill_column_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_fill_column_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32)* @nand_fill_column_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_fill_column_cycles(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %14, %17
  %19 = icmp ugt i32 %11, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %72

23:                                               ; preds = %3
  %24 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ule i32 %26, 512
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %28, %23
  %41 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = urem i32 %48, 2
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %72

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = udiv i32 %56, 2
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %40
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ule i32 %64, 512
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %72

67:                                               ; preds = %58
  %68 = load i32, i32* %7, align 4
  %69 = lshr i32 %68, 8
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %69, i32* %71, align 4
  store i32 2, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %66, %52, %20
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
