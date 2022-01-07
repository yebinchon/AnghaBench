; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.gpmi_nand_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fsl,no-blockmark-swap\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Blockmark swapping %sabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@NAND_SKIP_BBTSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @gpmi_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.gpmi_nand_data*, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip* %6)
  store %struct.gpmi_nand_data* %7, %struct.gpmi_nand_data** %4, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %21 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @of_property_read_bool(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %29 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %14
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %33 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %36 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %41 = call i32 @dev_dbg(%struct.TYPE_2__* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %43 = call i32 @gpmi_init_last(%struct.gpmi_nand_data* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %54

48:                                               ; preds = %31
  %49 = load i32, i32* @NAND_SKIP_BBTSCAN, align 4
  %50 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %46
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*, i8*) #1

declare dso_local i32 @gpmi_init_last(%struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
