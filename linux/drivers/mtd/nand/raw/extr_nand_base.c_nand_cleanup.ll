; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.nand_bch_control = type { i32 }

@NAND_ECC_SOFT = common dso_local global i64 0, align 8
@NAND_ECC_BCH = common dso_local global i64 0, align 8
@NAND_BBT_DYNAMICSTRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nand_cleanup(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %3 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NAND_ECC_SOFT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NAND_ECC_BCH, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.nand_bch_control*
  %22 = call i32 @nand_bch_free(%struct.nand_bch_control* %21)
  br label %23

23:                                               ; preds = %16, %9, %1
  %24 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @kfree(%struct.TYPE_4__* %26)
  %28 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @kfree(%struct.TYPE_4__* %30)
  %32 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @kfree(%struct.TYPE_4__* %35)
  %37 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @kfree(%struct.TYPE_4__* %40)
  %42 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %23
  %47 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NAND_BBT_DYNAMICSTRUCT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call i32 @kfree(%struct.TYPE_4__* %58)
  br label %60

60:                                               ; preds = %55, %46, %23
  %61 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %62 = call i32 @nand_manufacturer_cleanup(%struct.nand_chip* %61)
  %63 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %64 = call i32 @nand_detach(%struct.nand_chip* %63)
  %65 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %66 = call i32 @nand_scan_ident_cleanup(%struct.nand_chip* %65)
  ret void
}

declare dso_local i32 @nand_bch_free(%struct.nand_bch_control*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @nand_manufacturer_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @nand_detach(%struct.nand_chip*) #1

declare dso_local i32 @nand_scan_ident_cleanup(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
