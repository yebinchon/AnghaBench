; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_check_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_check_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.spi_mem_op = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SZ_16M = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, %struct.spi_mem_op*)* @spi_nor_spimem_check_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_spimem_check_op(%struct.spi_nor* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %6 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %7 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 4, i32* %8, align 4
  %9 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %10 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %13 = call i32 @spi_mem_supports_op(i32 %11, %struct.spi_mem_op* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %2
  %16 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %17 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SZ_16M, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %15
  %26 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %27 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 3, i32* %28, align 4
  %29 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %30 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %33 = call i32 @spi_mem_supports_op(i32 %31, %struct.spi_mem_op* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %2
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %35, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @spi_mem_supports_op(i32, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
