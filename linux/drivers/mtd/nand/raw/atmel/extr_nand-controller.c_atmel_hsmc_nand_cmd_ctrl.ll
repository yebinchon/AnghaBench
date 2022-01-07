; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.atmel_nand = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.atmel_hsmc_nand_controller = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32*, i32, i32*, i32 }

@NAND_ALE = common dso_local global i32 0, align 4
@ATMEL_NFC_MAX_ADDR_CYCLES = common dso_local global i64 0, align 8
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @atmel_hsmc_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hsmc_nand_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_nand*, align 8
  %8 = alloca %struct.atmel_hsmc_nand_controller*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %9)
  store %struct.atmel_nand* %10, %struct.atmel_nand** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32 %13)
  store %struct.atmel_hsmc_nand_controller* %14, %struct.atmel_hsmc_nand_controller** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @NAND_ALE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %21 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ATMEL_NFC_MAX_ADDR_CYCLES, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %80

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %30 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %34 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32 %28, i32* %38, align 4
  br label %65

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NAND_CLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %46 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %80

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %54 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %58 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  store i32 %52, i32* %63, align 4
  br label %64

64:                                               ; preds = %51, %39
  br label %65

65:                                               ; preds = %64, %27
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @NAND_CMD_NONE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.atmel_nand*, %struct.atmel_nand** %7, align 8
  %71 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %76 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 8
  %78 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %79 = call i32 @atmel_nfc_exec_op(%struct.atmel_hsmc_nand_controller* %78, i32 1)
  br label %80

80:                                               ; preds = %26, %50, %69, %65
  ret void
}

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32) #1

declare dso_local i32 @atmel_nfc_exec_op(%struct.atmel_hsmc_nand_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
