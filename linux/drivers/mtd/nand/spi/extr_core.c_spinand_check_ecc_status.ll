; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_check_ecc_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_check_ecc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.spinand_device.0*, i32)* }
%struct.spinand_device.0 = type opaque
%struct.nand_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@STATUS_ECC_MASK = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*, i32)* @spinand_check_ecc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_check_ecc_status(%struct.spinand_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_device*, align 8
  store %struct.spinand_device* %0, %struct.spinand_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %8 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %7)
  store %struct.nand_device* %8, %struct.nand_device** %6, align 8
  %9 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %10 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.spinand_device.0*, i32)*, i32 (%struct.spinand_device.0*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.spinand_device.0*, i32)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %16 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.spinand_device.0*, i32)*, i32 (%struct.spinand_device.0*, i32)** %17, align 8
  %19 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %20 = bitcast %struct.spinand_device* %19 to %struct.spinand_device.0*
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %18(%struct.spinand_device.0* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @STATUS_ECC_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %36 [
    i32 129, label %27
    i32 130, label %28
    i32 128, label %33
  ]

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %40

28:                                               ; preds = %23
  %29 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %30 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %23
  %34 = load i32, i32* @EBADMSG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %33, %28, %27, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
