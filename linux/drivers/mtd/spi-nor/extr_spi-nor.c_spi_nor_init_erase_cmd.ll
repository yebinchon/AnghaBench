; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_init_erase_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_init_erase_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor_erase_command = type { i32, i32, i32, i32 }
%struct.spi_nor_erase_region = type { i32, i32 }
%struct.spi_nor_erase_type = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNOR_OVERLAID_REGION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spi_nor_erase_command* (%struct.spi_nor_erase_region*, %struct.spi_nor_erase_type*)* @spi_nor_init_erase_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spi_nor_erase_command* @spi_nor_init_erase_cmd(%struct.spi_nor_erase_region* %0, %struct.spi_nor_erase_type* %1) #0 {
  %3 = alloca %struct.spi_nor_erase_command*, align 8
  %4 = alloca %struct.spi_nor_erase_region*, align 8
  %5 = alloca %struct.spi_nor_erase_type*, align 8
  %6 = alloca %struct.spi_nor_erase_command*, align 8
  store %struct.spi_nor_erase_region* %0, %struct.spi_nor_erase_region** %4, align 8
  store %struct.spi_nor_erase_type* %1, %struct.spi_nor_erase_type** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.spi_nor_erase_command* @kmalloc(i32 16, i32 %7)
  store %struct.spi_nor_erase_command* %8, %struct.spi_nor_erase_command** %6, align 8
  %9 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %6, align 8
  %10 = icmp ne %struct.spi_nor_erase_command* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.spi_nor_erase_command* @ERR_PTR(i32 %13)
  store %struct.spi_nor_erase_command* %14, %struct.spi_nor_erase_command** %3, align 8
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %6, align 8
  %17 = getelementptr inbounds %struct.spi_nor_erase_command, %struct.spi_nor_erase_command* %16, i32 0, i32 3
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %5, align 8
  %20 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %6, align 8
  %23 = getelementptr inbounds %struct.spi_nor_erase_command, %struct.spi_nor_erase_command* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %6, align 8
  %25 = getelementptr inbounds %struct.spi_nor_erase_command, %struct.spi_nor_erase_command* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %4, align 8
  %27 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SNOR_OVERLAID_REGION, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %15
  %33 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %4, align 8
  %34 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %6, align 8
  %37 = getelementptr inbounds %struct.spi_nor_erase_command, %struct.spi_nor_erase_command* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %44

38:                                               ; preds = %15
  %39 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %5, align 8
  %40 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %6, align 8
  %43 = getelementptr inbounds %struct.spi_nor_erase_command, %struct.spi_nor_erase_command* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %6, align 8
  store %struct.spi_nor_erase_command* %45, %struct.spi_nor_erase_command** %3, align 8
  br label %46

46:                                               ; preds = %44, %11
  %47 = load %struct.spi_nor_erase_command*, %struct.spi_nor_erase_command** %3, align 8
  ret %struct.spi_nor_erase_command* %47
}

declare dso_local %struct.spi_nor_erase_command* @kmalloc(i32, i32) #1

declare dso_local %struct.spi_nor_erase_command* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
