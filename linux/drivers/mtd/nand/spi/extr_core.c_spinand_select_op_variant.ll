; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_select_op_variant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_select_op_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem_op = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spinand_device = type { i32 }
%struct.spinand_op_variants = type { i32, %struct.spi_mem_op* }
%struct.nand_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spi_mem_op* (%struct.spinand_device*, %struct.spinand_op_variants*)* @spinand_select_op_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spi_mem_op* @spinand_select_op_variant(%struct.spinand_device* %0, %struct.spinand_op_variants* %1) #0 {
  %3 = alloca %struct.spi_mem_op*, align 8
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca %struct.spinand_op_variants*, align 8
  %6 = alloca %struct.nand_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_mem_op, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %4, align 8
  store %struct.spinand_op_variants* %1, %struct.spinand_op_variants** %5, align 8
  %11 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %12 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %11)
  store %struct.nand_device* %12, %struct.nand_device** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %71, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.spinand_op_variants*, %struct.spinand_op_variants** %5, align 8
  %16 = getelementptr inbounds %struct.spinand_op_variants, %struct.spinand_op_variants* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %13
  %20 = load %struct.spinand_op_variants*, %struct.spinand_op_variants** %5, align 8
  %21 = getelementptr inbounds %struct.spinand_op_variants, %struct.spinand_op_variants* %20, i32 0, i32 1
  %22 = load %struct.spi_mem_op*, %struct.spi_mem_op** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %22, i64 %24
  %26 = bitcast %struct.spi_mem_op* %8 to i8*
  %27 = bitcast %struct.spi_mem_op* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %29 = call i32 @nanddev_per_page_oobsize(%struct.nand_device* %28)
  %30 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %31 = call i32 @nanddev_page_size(%struct.nand_device* %30)
  %32 = add i32 %29, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %54, %19
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %41 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @spi_mem_adjust_op_size(i32 %42, %struct.spi_mem_op* %8)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %60

47:                                               ; preds = %36
  %48 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %49 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @spi_mem_supports_op(i32 %50, %struct.spi_mem_op* %8)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %60

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %8, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %33

60:                                               ; preds = %53, %46, %33
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load %struct.spinand_op_variants*, %struct.spinand_op_variants** %5, align 8
  %65 = getelementptr inbounds %struct.spinand_op_variants, %struct.spinand_op_variants* %64, i32 0, i32 1
  %66 = load %struct.spi_mem_op*, %struct.spi_mem_op** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %66, i64 %68
  store %struct.spi_mem_op* %69, %struct.spi_mem_op** %3, align 8
  br label %75

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %13

74:                                               ; preds = %13
  store %struct.spi_mem_op* null, %struct.spi_mem_op** %3, align 8
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  ret %struct.spi_mem_op* %76
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nanddev_per_page_oobsize(%struct.nand_device*) #1

declare dso_local i32 @nanddev_page_size(%struct.nand_device*) #1

declare dso_local i32 @spi_mem_adjust_op_size(i32, %struct.spi_mem_op*) #1

declare dso_local i32 @spi_mem_supports_op(i32, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
