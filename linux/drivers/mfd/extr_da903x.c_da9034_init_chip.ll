; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da903x.c_da9034_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da903x.c_da9034_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da903x_chip = type { i32, i32 }

@DA9034_CHIP_ID = common dso_local global i32 0, align 4
@DA9034_SYS_CTRL_A = common dso_local global i32 0, align 4
@DA9034_SYS_CTRL_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DA9034 (CHIP ID: 0x%02x) detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da903x_chip*)* @da9034_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9034_init_chip(%struct.da903x_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da903x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.da903x_chip* %0, %struct.da903x_chip** %3, align 8
  %6 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %7 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DA9034_CHIP_ID, align 4
  %10 = call i32 @__da903x_read(i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %17 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DA9034_SYS_CTRL_A, align 4
  %20 = call i32 @__da903x_write(i32 %18, i32 %19, i32 232)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %65

25:                                               ; preds = %15
  %26 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %27 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__da903x_write(i32 %28, i32 16, i32 7)
  %30 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %31 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__da903x_write(i32 %32, i32 17, i32 255)
  %34 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %35 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__da903x_write(i32 %36, i32 18, i32 255)
  %38 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %39 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DA9034_SYS_CTRL_B, align 4
  %42 = call i32 @__da903x_write(i32 %40, i32 %41, i32 32)
  %43 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %44 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DA9034_SYS_CTRL_A, align 4
  %47 = call i32 @__da903x_write(i32 %45, i32 %46, i32 96)
  %48 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %49 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__da903x_write(i32 %50, i32 144, i32 1)
  %52 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %53 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__da903x_write(i32 %54, i32 176, i32 8)
  %56 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %57 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__da903x_write(i32 %58, i32 32, i32 0)
  %60 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %61 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @dev_info(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %25, %23, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @__da903x_read(i32, i32, i32*) #1

declare dso_local i32 @__da903x_write(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
