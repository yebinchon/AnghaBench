; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.ingenic_nand = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ingenic_nfc = type { i64, %struct.TYPE_4__*, i32, %struct.ingenic_nand_cs* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ingenic_nand_cs = type { i64, i32 }

@NAND_NCE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @ingenic_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_nand_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ingenic_nand*, align 8
  %8 = alloca %struct.ingenic_nfc*, align 8
  %9 = alloca %struct.ingenic_nand_cs*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = call i32 @nand_to_mtd(%struct.nand_chip* %10)
  %12 = call %struct.ingenic_nand* @to_ingenic_nand(i32 %11)
  store %struct.ingenic_nand* %12, %struct.ingenic_nand** %7, align 8
  %13 = load %struct.ingenic_nand*, %struct.ingenic_nand** %7, align 8
  %14 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ingenic_nfc* @to_ingenic_nfc(i32 %16)
  store %struct.ingenic_nfc* %17, %struct.ingenic_nfc** %8, align 8
  %18 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %8, align 8
  %19 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %83

26:                                               ; preds = %3
  %27 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %8, align 8
  %28 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %27, i32 0, i32 3
  %29 = load %struct.ingenic_nand_cs*, %struct.ingenic_nand_cs** %28, align 8
  %30 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %8, align 8
  %31 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.ingenic_nand_cs, %struct.ingenic_nand_cs* %29, i64 %32
  store %struct.ingenic_nand_cs* %33, %struct.ingenic_nand_cs** %9, align 8
  %34 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %8, align 8
  %35 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ingenic_nand_cs*, %struct.ingenic_nand_cs** %9, align 8
  %38 = getelementptr inbounds %struct.ingenic_nand_cs, %struct.ingenic_nand_cs* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NAND_NCE, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @jz4780_nemc_assert(i32 %36, i32 %39, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @NAND_CMD_NONE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  br label %83

48:                                               ; preds = %26
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @NAND_ALE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ingenic_nand_cs*, %struct.ingenic_nand_cs** %9, align 8
  %56 = getelementptr inbounds %struct.ingenic_nand_cs, %struct.ingenic_nand_cs* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %8, align 8
  %59 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = call i32 @writeb(i32 %54, i64 %63)
  br label %83

65:                                               ; preds = %48
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @NAND_CLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.ingenic_nand_cs*, %struct.ingenic_nand_cs** %9, align 8
  %73 = getelementptr inbounds %struct.ingenic_nand_cs, %struct.ingenic_nand_cs* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %8, align 8
  %76 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %74, %79
  %81 = call i32 @writeb(i32 %71, i64 %80)
  br label %82

82:                                               ; preds = %70, %65
  br label %83

83:                                               ; preds = %25, %47, %82, %53
  ret void
}

declare dso_local %struct.ingenic_nand* @to_ingenic_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.ingenic_nfc* @to_ingenic_nfc(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @jz4780_nemc_assert(i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
