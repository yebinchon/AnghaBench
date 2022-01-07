; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*, i64, i32, i32*, i32, i32)*, i32 (%struct.nand_chip.1*, i32*, i32, i32)*, i32 (%struct.nand_chip.2*, i32*, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.nand_chip.2 = type opaque
%struct.mtd_info = type { i32 }

@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i64, i32, i32*, i32, i32, i32)* @nand_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_write_page(%struct.nand_chip* %0, i64 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mtd_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %20 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %19)
  store %struct.mtd_info* %20, %struct.mtd_info** %16, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %7
  %28 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.nand_chip.0*, i64, i32, i32*, i32, i32)*, i32 (%struct.nand_chip.0*, i64, i32, i32*, i32, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.nand_chip.0*, i64, i32, i32*, i32, i32)* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i1 [ true, %33 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %18, align 4
  br label %46

45:                                               ; preds = %27, %7
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %15, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (%struct.nand_chip.1*, i32*, i32, i32)*, i32 (%struct.nand_chip.1*, i32*, i32, i32)** %53, align 8
  %55 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %56 = bitcast %struct.nand_chip* %55 to %struct.nand_chip.1*
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 %54(%struct.nand_chip.1* %56, i32* %57, i32 %58, i32 %59)
  store i32 %60, i32* %17, align 4
  br label %89

61:                                               ; preds = %46
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.nand_chip.0*, i64, i32, i32*, i32, i32)*, i32 (%struct.nand_chip.0*, i64, i32, i32*, i32, i32)** %67, align 8
  %69 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %70 = bitcast %struct.nand_chip* %69 to %struct.nand_chip.0*
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 %68(%struct.nand_chip.0* %70, i64 %71, i32 %72, i32* %73, i32 %74, i32 %75)
  store i32 %76, i32* %17, align 4
  br label %88

77:                                               ; preds = %61
  %78 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %79 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32 (%struct.nand_chip.2*, i32*, i32, i32)*, i32 (%struct.nand_chip.2*, i32*, i32, i32)** %80, align 8
  %82 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %83 = bitcast %struct.nand_chip* %82 to %struct.nand_chip.2*
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 %81(%struct.nand_chip.2* %83, i32* %84, i32 %85, i32 %86)
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %77, %64
  br label %89

89:                                               ; preds = %88, %50
  %90 = load i32, i32* %17, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %8, align 4
  br label %95

94:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %92
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
