; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_dt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_dt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nand-is-boot-medium\00", align 1
@NAND_IS_BOOT_MEDIUM = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"nand-ecc-maximize\00", align 1
@NAND_ECC_MAXIMIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @nand_dt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_dt_init(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.device_node* @nand_get_flash_node(%struct.nand_chip* %9)
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call i32 @of_get_nand_bus_width(%struct.device_node* %15)
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %14
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call i64 @of_property_read_bool(%struct.device_node* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @NAND_IS_BOOT_MEDIUM, align 4
  %30 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %24
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = call i64 @of_get_nand_on_flash_bbt(%struct.device_node* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %40 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load %struct.device_node*, %struct.device_node** %4, align 8
  %46 = call i32 @of_get_nand_ecc_mode(%struct.device_node* %45)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = call i32 @of_get_nand_ecc_algo(%struct.device_node* %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.device_node*, %struct.device_node** %4, align 8
  %50 = call i32 @of_get_nand_ecc_strength(%struct.device_node* %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  %52 = call i32 @of_get_nand_ecc_step_size(%struct.device_node* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %44
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %7, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.device_node*, %struct.device_node** %4, align 8
  %86 = call i64 @of_property_read_bool(%struct.device_node* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, i32* @NAND_ECC_MAXIMIZE, align 4
  %90 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %91 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %88, %84
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %13
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.device_node* @nand_get_flash_node(%struct.nand_chip*) #1

declare dso_local i32 @of_get_nand_bus_width(%struct.device_node*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_get_nand_on_flash_bbt(%struct.device_node*) #1

declare dso_local i32 @of_get_nand_ecc_mode(%struct.device_node*) #1

declare dso_local i32 @of_get_nand_ecc_algo(%struct.device_node*) #1

declare dso_local i32 @of_get_nand_ecc_strength(%struct.device_node*) #1

declare dso_local i32 @of_get_nand_ecc_step_size(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
