; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_markbad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_markbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_device = type { i32 }
%struct.nand_pos = type { i32 }
%struct.spinand_device = type { i32 }
%struct.nand_page_io_req = type { i32, %struct.TYPE_2__, i32, %struct.nand_pos }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_device*, %struct.nand_pos*)* @spinand_markbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_markbad(%struct.nand_device* %0, %struct.nand_pos* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_device*, align 8
  %5 = alloca %struct.nand_pos*, align 8
  %6 = alloca %struct.spinand_device*, align 8
  %7 = alloca %struct.nand_page_io_req, align 4
  %8 = alloca i32, align 4
  store %struct.nand_device* %0, %struct.nand_device** %4, align 8
  store %struct.nand_pos* %1, %struct.nand_pos** %5, align 8
  %9 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %10 = call %struct.spinand_device* @nand_to_spinand(%struct.nand_device* %9)
  store %struct.spinand_device* %10, %struct.spinand_device** %6, align 8
  %11 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %7, i32 0, i32 0
  store i32 2, i32* %11, align 4
  %12 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %7, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %15 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %7, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %7, i32 0, i32 3
  %19 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %20 = bitcast %struct.nand_pos* %18 to i8*
  %21 = bitcast %struct.nand_pos* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %23 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %24 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @spinand_select_target(%struct.spinand_device* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %48

31:                                               ; preds = %2
  %32 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %33 = call i32 @spinand_write_enable_op(%struct.spinand_device* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %48

38:                                               ; preds = %31
  %39 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %40 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %41 = call i32 @spinand_erase_op(%struct.spinand_device* %39, %struct.nand_pos* %40)
  %42 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %43 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memset(i32 %44, i32 0, i32 2)
  %46 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %47 = call i32 @spinand_write_page(%struct.spinand_device* %46, %struct.nand_page_io_req* %7)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %38, %36, %29
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.spinand_device* @nand_to_spinand(%struct.nand_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spinand_select_target(%struct.spinand_device*, i32) #1

declare dso_local i32 @spinand_write_enable_op(%struct.spinand_device*) #1

declare dso_local i32 @spinand_erase_op(%struct.spinand_device*, %struct.nand_pos*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spinand_write_page(%struct.spinand_device*, %struct.nand_page_io_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
