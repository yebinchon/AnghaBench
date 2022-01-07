; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sharpsl.c_sharpsl_nand_hwcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sharpsl.c_sharpsl_nand_hwcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sharpsl_nand = type { i64 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@FLASHCTL = common dso_local global i64 0, align 8
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @sharpsl_nand_hwcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharpsl_nand_hwcontrol(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sharpsl_nand*, align 8
  %8 = alloca i8, align 1
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call i32 @nand_to_mtd(%struct.nand_chip* %9)
  %11 = call %struct.sharpsl_nand* @mtd_to_sharpsl(i32 %10)
  store %struct.sharpsl_nand* %11, %struct.sharpsl_nand** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 7
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %8, align 1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 1
  %22 = shl i32 %21, 4
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = xor i32 %28, 17
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %8, align 1
  %31 = load %struct.sharpsl_nand*, %struct.sharpsl_nand** %7, align 8
  %32 = getelementptr inbounds %struct.sharpsl_nand, %struct.sharpsl_nand* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FLASHCTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readb(i64 %35)
  %37 = and i32 %36, -24
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %37, %39
  %41 = load %struct.sharpsl_nand*, %struct.sharpsl_nand** %7, align 8
  %42 = getelementptr inbounds %struct.sharpsl_nand, %struct.sharpsl_nand* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FLASHCTL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writeb(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %16, %3
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NAND_CMD_NONE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @writeb(i32 %52, i64 %56)
  br label %58

58:                                               ; preds = %51, %47
  ret void
}

declare dso_local %struct.sharpsl_nand* @mtd_to_sharpsl(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
