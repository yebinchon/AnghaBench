; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_controller_add_nand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_controller_add_nand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand_controller = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.atmel_nand = type { i32, i32, i64, %struct.nand_chip }
%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"No SmartMedia card inserted.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NAND scan failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to register mtd device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_nand_controller*, %struct.atmel_nand*)* @atmel_nand_controller_add_nand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_controller_add_nand(%struct.atmel_nand_controller* %0, %struct.atmel_nand* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_nand_controller*, align 8
  %5 = alloca %struct.atmel_nand*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  store %struct.atmel_nand_controller* %0, %struct.atmel_nand_controller** %4, align 8
  store %struct.atmel_nand* %1, %struct.atmel_nand** %5, align 8
  %9 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %10 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %9, i32 0, i32 3
  store %struct.nand_chip* %10, %struct.nand_chip** %6, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %12 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %11)
  store %struct.mtd_info* %12, %struct.mtd_info** %7, align 8
  %13 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %14 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %19 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @gpiod_get_value(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %25 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_info(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

28:                                               ; preds = %17, %2
  %29 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %30 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.atmel_nand_controller*, %struct.atmel_nand*)**
  %36 = load i32 (%struct.atmel_nand_controller*, %struct.atmel_nand*)*, i32 (%struct.atmel_nand_controller*, %struct.atmel_nand*)** %35, align 8
  %37 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %38 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %39 = call i32 %36(%struct.atmel_nand_controller* %37, %struct.atmel_nand* %38)
  %40 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %41 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %42 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nand_scan(%struct.nand_chip* %40, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %28
  %48 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %49 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %74

54:                                               ; preds = %28
  %55 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %56 = call i32 @mtd_device_register(%struct.mtd_info* %55, i32* null, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %61 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %66 = call i32 @nand_cleanup(%struct.nand_chip* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %74

68:                                               ; preds = %54
  %69 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %70 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %69, i32 0, i32 0
  %71 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %72 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %71, i32 0, i32 0
  %73 = call i32 @list_add_tail(i32* %70, i32* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %59, %47, %23
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @gpiod_get_value(i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
