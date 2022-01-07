; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.nand_chip.0*)* }
%struct.nand_chip.0 = type opaque
%struct.r852_device = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @r852_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r852_wait(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.r852_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %7 = call %struct.r852_device* @nand_get_controller_data(%struct.nand_chip* %6)
  store %struct.r852_device* %7, %struct.r852_device** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = call i64 @msecs_to_jiffies(i32 400)
  %10 = add i64 %8, %9
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @time_before(i64 %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (%struct.nand_chip.0*)*, i64 (%struct.nand_chip.0*)** %19, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %22 = bitcast %struct.nand_chip* %21 to %struct.nand_chip.0*
  %23 = call i64 %20(%struct.nand_chip.0* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %27

26:                                               ; preds = %16
  br label %11

27:                                               ; preds = %25, %11
  %28 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %29 = call i32 @nand_status_op(%struct.nand_chip* %28, i32* %5)
  %30 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %31 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %39 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.r852_device* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @nand_status_op(%struct.nand_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
