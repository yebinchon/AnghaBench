; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_gigadevice.c_gd5fxgq4uexxg_ecc_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_gigadevice.c_gd5fxgq4uexxg_ecc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { i32 }
%struct.spi_mem_op = type { i32 }

@GD5FXGQ4UEXXG_REG_STATUS2 = common dso_local global i32 0, align 4
@STATUS_ECC_MASK = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*, i32)* @gd5fxgq4uexxg_ecc_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gd5fxgq4uexxg_ecc_get_status(%struct.spinand_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_mem_op, align 4
  %8 = alloca i32, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GD5FXGQ4UEXXG_REG_STATUS2, align 4
  %10 = call i32 @SPINAND_GET_FEATURE_OP(i32 %9, i32* %6)
  %11 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @STATUS_ECC_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %39 [
    i32 129, label %15
    i32 131, label %16
    i32 130, label %35
    i32 128, label %36
  ]

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %18 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @spi_mem_exec_op(i32 %19, %struct.spi_mem_op* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @STATUS_ECC_MASK, align 4
  %28 = and i32 %26, %27
  %29 = ashr i32 %28, 2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @STATUS_ECC_MASK, align 4
  %32 = and i32 %30, %31
  %33 = ashr i32 %32, 4
  %34 = or i32 %29, %33
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %2
  store i32 8, i32* %3, align 4
  br label %43

36:                                               ; preds = %2
  %37 = load i32, i32* @EBADMSG, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %36, %35, %25, %23, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @SPINAND_GET_FEATURE_OP(i32, i32*) #1

declare dso_local i32 @spi_mem_exec_op(i32, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
