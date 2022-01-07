; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_set_4byte_opcodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_set_4byte_opcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.TYPE_2__, i8*, i32, i32 }
%struct.TYPE_2__ = type { %struct.spi_nor_erase_map }
%struct.spi_nor_erase_map = type { %struct.spi_nor_erase_type* }
%struct.spi_nor_erase_type = type { i8* }

@SNOR_ERASE_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor*)* @spi_nor_set_4byte_opcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_nor_set_4byte_opcodes(%struct.spi_nor* %0) #0 {
  %2 = alloca %struct.spi_nor*, align 8
  %3 = alloca %struct.spi_nor_erase_map*, align 8
  %4 = alloca %struct.spi_nor_erase_type*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %2, align 8
  %6 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %7 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @spi_nor_convert_3to4_read(i32 %8)
  %10 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %13 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @spi_nor_convert_3to4_program(i32 %14)
  %16 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %17 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %19 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @spi_nor_convert_3to4_erase(i8* %20)
  %22 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %23 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %25 = call i32 @spi_nor_has_uniform_erase(%struct.spi_nor* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %1
  %28 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %29 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.spi_nor_erase_map* %30, %struct.spi_nor_erase_map** %3, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %48, %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SNOR_ERASE_TYPE_MAX, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %3, align 8
  %37 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %36, i32 0, i32 0
  %38 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %38, i64 %40
  store %struct.spi_nor_erase_type* %41, %struct.spi_nor_erase_type** %4, align 8
  %42 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %4, align 8
  %43 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @spi_nor_convert_3to4_erase(i8* %44)
  %46 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %4, align 8
  %47 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %31

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @spi_nor_convert_3to4_read(i32) #1

declare dso_local i32 @spi_nor_convert_3to4_program(i32) #1

declare dso_local i8* @spi_nor_convert_3to4_erase(i8*) #1

declare dso_local i32 @spi_nor_has_uniform_erase(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
