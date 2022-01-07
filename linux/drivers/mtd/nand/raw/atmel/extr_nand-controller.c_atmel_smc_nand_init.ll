; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_smc_nand_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_smc_nand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand_controller = type { i32 }
%struct.atmel_nand = type { i32, %struct.TYPE_3__*, %struct.nand_chip }
%struct.TYPE_3__ = type { i32 }
%struct.nand_chip = type { i32 }
%struct.atmel_smc_nand_controller = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_nand_controller*, %struct.atmel_nand*)* @atmel_smc_nand_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_smc_nand_init(%struct.atmel_nand_controller* %0, %struct.atmel_nand* %1) #0 {
  %3 = alloca %struct.atmel_nand_controller*, align 8
  %4 = alloca %struct.atmel_nand*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.atmel_smc_nand_controller*, align 8
  %7 = alloca i32, align 4
  store %struct.atmel_nand_controller* %0, %struct.atmel_nand_controller** %3, align 8
  store %struct.atmel_nand* %1, %struct.atmel_nand** %4, align 8
  %8 = load %struct.atmel_nand*, %struct.atmel_nand** %4, align 8
  %9 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %8, i32 0, i32 2
  store %struct.nand_chip* %9, %struct.nand_chip** %5, align 8
  %10 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %11 = load %struct.atmel_nand*, %struct.atmel_nand** %4, align 8
  %12 = call i32 @atmel_nand_init(%struct.atmel_nand_controller* %10, %struct.atmel_nand* %11)
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.atmel_smc_nand_controller* @to_smc_nand_controller(i32 %15)
  store %struct.atmel_smc_nand_controller* %16, %struct.atmel_smc_nand_controller** %6, align 8
  %17 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %6, align 8
  %18 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %87

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %57, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.atmel_nand*, %struct.atmel_nand** %4, align 8
  %26 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %6, align 8
  %31 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.atmel_nand*, %struct.atmel_nand** %4, align 8
  %39 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @BIT(i32 %45)
  %47 = load %struct.atmel_nand*, %struct.atmel_nand** %4, align 8
  %48 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @BIT(i32 %54)
  %56 = call i32 @regmap_update_bits(i32 %32, i32 %37, i64 %46, i64 %55)
  br label %57

57:                                               ; preds = %29
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %23

60:                                               ; preds = %23
  %61 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %6, align 8
  %62 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %60
  %68 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %6, align 8
  %69 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %6, align 8
  %72 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %6, align 8
  %77 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %6, align 8
  %82 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @regmap_update_bits(i32 %70, i32 %75, i64 %80, i64 %85)
  br label %87

87:                                               ; preds = %21, %67, %60
  ret void
}

declare dso_local i32 @atmel_nand_init(%struct.atmel_nand_controller*, %struct.atmel_nand*) #1

declare dso_local %struct.atmel_smc_nand_controller* @to_smc_nand_controller(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i64) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
