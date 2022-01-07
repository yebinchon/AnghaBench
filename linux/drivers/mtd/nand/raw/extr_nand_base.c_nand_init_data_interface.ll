; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_init_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_init_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.nand_chip*, i32, i32*)* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@NAND_SDR_IFACE = common dso_local global i32 0, align 4
@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @nand_init_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_init_data_interface(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call i32 @nand_has_setup_data_iface(%struct.nand_chip* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %11
  %25 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %74

30:                                               ; preds = %24
  %31 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @GENMASK(i32 %33, i32 0)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %17
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @fls(i32 %36)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %70, %35
  %40 = load i32, i32* %5, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %44 = load i32, i32* @NAND_SDR_IFACE, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @onfi_fill_data_interface(%struct.nand_chip* %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %70

50:                                               ; preds = %42
  %51 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32 (%struct.nand_chip*, i32, i32*)*, i32 (%struct.nand_chip*, i32, i32*)** %56, align 8
  %58 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %59 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %60 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %61 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %60, i32 0, i32 1
  %62 = call i32 %57(%struct.nand_chip* %58, i32 %59, i32* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %73

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %49
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %5, align 4
  br label %39

73:                                               ; preds = %65, %39
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %29, %10
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @nand_has_setup_data_iface(%struct.nand_chip*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @onfi_fill_data_interface(%struct.nand_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
