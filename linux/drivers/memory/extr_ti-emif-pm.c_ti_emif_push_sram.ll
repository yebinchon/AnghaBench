; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_ti-emif-pm.c_ti_emif_push_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_ti-emif-pm.c_ti_emif_push_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_emif_data = type { i32, i32, i64 }

@ti_emif_sram = common dso_local global i32 0, align 4
@ti_emif_sram_sz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot copy emif code to sram\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ti_emif_pm_sram_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot copy emif data to code sram\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ti_emif_data*)* @ti_emif_push_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_emif_push_sram(%struct.device* %0, %struct.ti_emif_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ti_emif_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ti_emif_data* %1, %struct.ti_emif_data** %5, align 8
  %8 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %9 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %12 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i32, i32* @ti_emif_sram_sz, align 4
  %16 = call i8* @sram_exec_copy(i32 %10, i8* %14, i32* @ti_emif_sram, i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %26 = call i64 @sram_suspend_address(%struct.ti_emif_data* %25, i64 ptrtoint (i32* @ti_emif_pm_sram_data to i64))
  store i64 %26, i64* %7, align 8
  %27 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %28 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %7, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %33 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %32, i32 0, i32 0
  %34 = call i8* @sram_exec_copy(i32 %29, i8* %31, i32* %33, i32 4)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %24
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i8* @sram_exec_copy(i32, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @sram_suspend_address(%struct.ti_emif_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
