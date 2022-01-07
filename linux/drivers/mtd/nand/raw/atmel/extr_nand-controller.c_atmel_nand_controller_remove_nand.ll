; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_controller_remove_nand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_controller_remove_nand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand = type { i32, %struct.nand_chip }
%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_nand*)* @atmel_nand_controller_remove_nand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_controller_remove_nand(%struct.atmel_nand* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_nand*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  store %struct.atmel_nand* %0, %struct.atmel_nand** %3, align 8
  %7 = load %struct.atmel_nand*, %struct.atmel_nand** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %7, i32 0, i32 1
  store %struct.nand_chip* %8, %struct.nand_chip** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %5, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = call i32 @mtd_device_unregister(%struct.mtd_info* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %19 = call i32 @nand_cleanup(%struct.nand_chip* %18)
  %20 = load %struct.atmel_nand*, %struct.atmel_nand** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @mtd_device_unregister(%struct.mtd_info*) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
