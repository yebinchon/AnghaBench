; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.atmel_nand = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.atmel_nand_controller = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.atmel_nand*, i32, %struct.nand_data_interface*)* }

@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @atmel_nand_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_setup_data_interface(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.atmel_nand*, align 8
  %9 = alloca %struct.atmel_nand_controller*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %10)
  store %struct.atmel_nand* %11, %struct.atmel_nand** %8, align 8
  %12 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %13 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.atmel_nand_controller* @to_nand_controller(i32 %15)
  store %struct.atmel_nand_controller* %16, %struct.atmel_nand_controller** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %19 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %44

32:                                               ; preds = %25, %22
  %33 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %9, align 8
  %34 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (%struct.atmel_nand*, i32, %struct.nand_data_interface*)*, i32 (%struct.atmel_nand*, i32, %struct.nand_data_interface*)** %38, align 8
  %40 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %43 = call i32 %39(%struct.atmel_nand* %40, i32 %41, %struct.nand_data_interface* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %32, %29
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand_controller* @to_nand_controller(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
