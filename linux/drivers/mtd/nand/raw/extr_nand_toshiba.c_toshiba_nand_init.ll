; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_toshiba.c_toshiba_nand_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_toshiba.c_toshiba_nand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }

@NAND_BBM_FIRSTPAGE = common dso_local global i32 0, align 4
@NAND_BBM_SECONDPAGE = common dso_local global i32 0, align 4
@NAND_ECC_ON_DIE = common dso_local global i64 0, align 8
@TOSHIBA_NAND_ID4_IS_BENAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @toshiba_nand_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_nand_init(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %3 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %4 = call i64 @nand_is_slc(%struct.nand_chip* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* @NAND_BBM_FIRSTPAGE, align 4
  %8 = load i32, i32* @NAND_BBM_SECONDPAGE, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  br label %14

14:                                               ; preds = %6, %1
  %15 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %16 = call i64 @nand_is_slc(%struct.nand_chip* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NAND_ECC_ON_DIE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TOSHIBA_NAND_ID4_IS_BENAND, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %37 = call i32 @toshiba_nand_benand_init(%struct.nand_chip* %36)
  br label %38

38:                                               ; preds = %35, %25, %18, %14
  ret i32 0
}

declare dso_local i64 @nand_is_slc(%struct.nand_chip*) #1

declare dso_local i32 @toshiba_nand_benand_init(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
