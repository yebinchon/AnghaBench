; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_read_abs_bbt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_read_abs_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.nand_bbt_descr = type { i32, i32* }
%struct.mtd_info = type { i32 }

@NAND_BBT_PERCHIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, %struct.nand_bbt_descr*, i32)* @read_abs_bbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_abs_bbt(%struct.nand_chip* %0, i32* %1, %struct.nand_bbt_descr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nand_bbt_descr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %10, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 1
  %19 = call i32 @nanddev_target_size(i32* %18)
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %21 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %71, %26
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 1
  %31 = call i32 @nanddev_ntargets(i32* %30)
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36, %33
  %41 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %44 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %50, %53
  %55 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @read_bbt(%struct.nand_chip* %41, i32* %42, i32 %49, i32 %54, %struct.nand_bbt_descr* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %40, %36
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %98

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %64, %67
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %27

74:                                               ; preds = %27
  br label %97

75:                                               ; preds = %4
  %76 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %79 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %84 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %87 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %85, %88
  %90 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %91 = call i32 @read_bbt(%struct.nand_chip* %76, i32* %77, i32 %82, i32 %89, %struct.nand_bbt_descr* %90, i32 0)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %75
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %98

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %96, %74
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %94, %61
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nanddev_target_size(i32*) #1

declare dso_local i32 @nanddev_ntargets(i32*) #1

declare dso_local i32 @read_bbt(%struct.nand_chip*, i32*, i32, i32, %struct.nand_bbt_descr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
