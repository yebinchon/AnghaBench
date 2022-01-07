; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.meson_nfc_nand_chip = type { i32, i64, i32, i32, i32, i32, i64* }
%struct.meson_nfc = type { i64, i32, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@NAND_CE1 = common dso_local global i32 0, align 4
@NAND_CE0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to set clock rate\0A\00", align 1
@NFC_CLK_CYCLE = common dso_local global i32 0, align 4
@NFC_REG_CFG = common dso_local global i64 0, align 8
@NFC_REG_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @meson_nfc_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_nfc_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_nfc_nand_chip*, align 8
  %6 = alloca %struct.meson_nfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip* %9)
  store %struct.meson_nfc_nand_chip* %10, %struct.meson_nfc_nand_chip** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = call %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.meson_nfc* %12, %struct.meson_nfc** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %18 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %2
  br label %130

25:                                               ; preds = %15
  %26 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %27 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %26, i32 0, i32 6
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @NAND_CE1, align 4
  br label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @NAND_CE0, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %41 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %44 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %48 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %51 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %54 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %57 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %60 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %63 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %66 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %69 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %72 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %38
  %76 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %77 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %80 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @clk_set_rate(i32 %78, i64 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %87 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %130

90:                                               ; preds = %75
  %91 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %92 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %95 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %38
  %97 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %98 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %101 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %96
  %105 = load i32, i32* @NFC_CLK_CYCLE, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %108 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 5
  %111 = or i32 %106, %110
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %114 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NFC_REG_CFG, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  %119 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %120 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @NFC_REG_CMD, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel(i32 -2147483648, i64 %123)
  %125 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %126 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %129 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %24, %85, %104, %96
  ret void
}

declare dso_local %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip*) #1

declare dso_local %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
