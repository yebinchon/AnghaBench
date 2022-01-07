; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_read_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_read_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.onenand_chip = type { i32 (i64)*, i64 }

@ONENAND_REG_ECC_STATUS = common dso_local global i64 0, align 8
@FLEXONENAND_UNCORRECTABLE_ERROR = common dso_local global i32 0, align 4
@ONENAND_ECC_2BIT_ALL = common dso_local global i32 0, align 4
@ONENAND_ECC_1BIT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.onenand_chip*)* @onenand_read_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_read_ecc(%struct.onenand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.onenand_chip* %0, %struct.onenand_chip** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %8 = call i32 @FLEXONENAND(%struct.onenand_chip* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %12 = call i32 @ONENAND_IS_4KB_PAGE(%struct.onenand_chip* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %16 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %15, i32 0, i32 0
  %17 = load i32 (i64)*, i32 (i64)** %16, align 8
  %18 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %19 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ONENAND_REG_ECC_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 %17(i64 %22)
  store i32 %23, i32* %2, align 4
  br label %64

24:                                               ; preds = %10, %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %59, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %30 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %29, i32 0, i32 0
  %31 = load i32 (i64)*, i32 (i64)** %30, align 8
  %32 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %33 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ONENAND_REG_ECC_STATUS, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = call i32 %31(i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  br label %59

49:                                               ; preds = %28
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @FLEXONENAND_UNCORRECTABLE_ERROR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @ONENAND_ECC_2BIT_ALL, align 4
  store i32 %55, i32* %2, align 4
  br label %64

56:                                               ; preds = %49
  %57 = load i32, i32* @ONENAND_ECC_1BIT_ALL, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %25

62:                                               ; preds = %25
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %54, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @FLEXONENAND(%struct.onenand_chip*) #1

declare dso_local i32 @ONENAND_IS_4KB_PAGE(%struct.onenand_chip*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
