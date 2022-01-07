; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_macronix.c_mx35lf1ge4ab_ecc_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_macronix.c_mx35lf1ge4ab_ecc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { i32 }
%struct.nand_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STATUS_ECC_MASK = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*, i32)* @mx35lf1ge4ab_ecc_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx35lf1ge4ab_ecc_get_status(%struct.spinand_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_device*, align 8
  %7 = alloca i32, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %9 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %8)
  store %struct.nand_device* %9, %struct.nand_device** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @STATUS_ECC_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %49 [
    i32 129, label %13
    i32 128, label %14
    i32 130, label %17
  ]

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  %15 = load i32, i32* @EBADMSG, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %19 = call i32 @mx35lf1ge4ab_get_eccsr(%struct.spinand_device* %18, i32* %7)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %23 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %29 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %26
  %38 = phi i1 [ true, %26 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %44 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %2
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %47, %42, %21, %14, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

declare dso_local i32 @mx35lf1ge4ab_get_eccsr(%struct.spinand_device*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
