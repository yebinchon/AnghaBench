; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_toshiba.c_tc58cxgxsx_ecc_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_toshiba.c_tc58cxgxsx_ecc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { i32 }
%struct.nand_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_mem_op = type { i32 }

@STATUS_ECC_MASK = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*, i32)* @tc58cxgxsx_ecc_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc58cxgxsx_ecc_get_status(%struct.spinand_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_mem_op, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %10 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %9)
  store %struct.nand_device* %10, %struct.nand_device** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 @SPINAND_GET_FEATURE_OP(i32 48, i32* %7)
  %12 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @STATUS_ECC_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %56 [
    i32 130, label %16
    i32 129, label %17
    i32 131, label %20
    i32 128, label %20
  ]

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load i32, i32* @EBADMSG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %2, %2
  %21 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %22 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @spi_mem_exec_op(i32 %23, %struct.spi_mem_op* %8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %28 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %36 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %40, %31
  %45 = phi i1 [ true, %31 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %51 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %2
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %54, %49, %26, %17, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

declare dso_local i32 @SPINAND_GET_FEATURE_OP(i32, i32*) #1

declare dso_local i32 @spi_mem_exec_op(i32, %struct.spi_mem_op*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
