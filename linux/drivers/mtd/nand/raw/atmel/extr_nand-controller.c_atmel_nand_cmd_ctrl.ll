; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.atmel_nand = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.atmel_nand_controller = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @atmel_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_nand_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_nand*, align 8
  %8 = alloca %struct.atmel_nand_controller*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %9)
  store %struct.atmel_nand* %10, %struct.atmel_nand** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.atmel_nand_controller* @to_nand_controller(i32 %13)
  store %struct.atmel_nand_controller* %14, %struct.atmel_nand_controller** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %3
  %20 = load %struct.atmel_nand*, %struct.atmel_nand** %7, align 8
  %21 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NAND_NCE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.atmel_nand*, %struct.atmel_nand** %7, align 8
  %33 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @gpiod_set_value(i64 %36, i32 0)
  br label %45

38:                                               ; preds = %26
  %39 = load %struct.atmel_nand*, %struct.atmel_nand** %7, align 8
  %40 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @gpiod_set_value(i64 %43, i32 1)
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %45, %19, %3
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @NAND_ALE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.atmel_nand*, %struct.atmel_nand** %7, align 8
  %54 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %8, align 8
  %60 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  %65 = call i32 @writeb(i32 %52, i64 %64)
  br label %87

66:                                               ; preds = %46
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @NAND_CLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.atmel_nand*, %struct.atmel_nand** %7, align 8
  %74 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %8, align 8
  %80 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %78, %83
  %85 = call i32 @writeb(i32 %72, i64 %84)
  br label %86

86:                                               ; preds = %71, %66
  br label %87

87:                                               ; preds = %86, %51
  ret void
}

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand_controller* @to_nand_controller(i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
