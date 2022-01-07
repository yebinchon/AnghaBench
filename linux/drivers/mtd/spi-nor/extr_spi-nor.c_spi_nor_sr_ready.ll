; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_sr_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_sr_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, i32 }

@SNOR_F_USE_CLSR = common dso_local global i32 0, align 4
@SR_E_ERR = common dso_local global i32 0, align 4
@SR_P_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Erase Error occurred\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Programming Error occurred\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SR_WIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @spi_nor_sr_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_sr_ready(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %5 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %6 = call i32 @read_sr(%struct.spi_nor* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %13 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SNOR_F_USE_CLSR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SR_E_ERR, align 4
  %21 = load i32, i32* @SR_P_ERR, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SR_E_ERR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %32 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %37 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %42 = call i32 @spi_nor_clear_sr(%struct.spi_nor* %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %18, %11
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SR_WIP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %40, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @read_sr(%struct.spi_nor*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spi_nor_clear_sr(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
