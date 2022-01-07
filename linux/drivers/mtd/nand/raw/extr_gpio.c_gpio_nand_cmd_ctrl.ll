; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_gpio.c_gpio_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_gpio.c_gpio_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.gpiomtd = type { %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @gpio_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_nand_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpiomtd*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call i32 @nand_to_mtd(%struct.nand_chip* %8)
  %10 = call %struct.gpiomtd* @gpio_nand_getpriv(i32 %9)
  store %struct.gpiomtd* %10, %struct.gpiomtd** %7, align 8
  %11 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %12 = call i32 @gpio_nand_dosync(%struct.gpiomtd* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %3
  %18 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %19 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %24 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NAND_NCE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @gpiod_set_value(i64 %25, i32 %31)
  br label %33

33:                                               ; preds = %22, %17
  %34 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %35 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @NAND_CLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @gpiod_set_value(i64 %36, i32 %43)
  %45 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %46 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @NAND_ALE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @gpiod_set_value(i64 %47, i32 %54)
  %56 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %57 = call i32 @gpio_nand_dosync(%struct.gpiomtd* %56)
  br label %58

58:                                               ; preds = %33, %3
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @NAND_CMD_NONE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %73

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %66 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @writeb(i32 %64, i32 %69)
  %71 = load %struct.gpiomtd*, %struct.gpiomtd** %7, align 8
  %72 = call i32 @gpio_nand_dosync(%struct.gpiomtd* %71)
  br label %73

73:                                               ; preds = %63, %62
  ret void
}

declare dso_local %struct.gpiomtd* @gpio_nand_getpriv(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @gpio_nand_dosync(%struct.gpiomtd*) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
