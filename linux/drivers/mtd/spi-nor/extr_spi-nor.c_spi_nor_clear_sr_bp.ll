; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_clear_sr_bp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_clear_sr_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 }

@SR_BP2 = common dso_local global i32 0, align 4
@SR_BP1 = common dso_local global i32 0, align 4
@SR_BP0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"error while reading status register\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"write to status register failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"timeout while writing status register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @spi_nor_clear_sr_bp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_clear_sr_bp(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %6 = load i32, i32* @SR_BP2, align 4
  %7 = load i32, i32* @SR_BP1, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SR_BP0, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %12 = call i32 @read_sr(%struct.spi_nor* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %17 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %23 = call i32 @write_enable(%struct.spi_nor* %22)
  %24 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @write_sr(%struct.spi_nor* %24, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %34 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %21
  %39 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %40 = call i32 @spi_nor_wait_till_ready(%struct.spi_nor* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %45 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %32, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @read_sr(%struct.spi_nor*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @write_enable(%struct.spi_nor*) #1

declare dso_local i32 @write_sr(%struct.spi_nor*, i32) #1

declare dso_local i32 @spi_nor_wait_till_ready(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
