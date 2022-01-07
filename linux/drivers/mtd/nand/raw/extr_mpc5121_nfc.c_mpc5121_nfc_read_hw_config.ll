; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_read_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_read_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32 }
%struct.mpc5121_nfc_prv = type { i32 }
%struct.mpc512x_reset_module = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"fsl,mpc5121-reset\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Missing 'fsl,mpc5121-reset' node in device tree!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Error mapping reset module node!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Configured for %u-bit NAND, page size %u with %u spare.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @mpc5121_nfc_read_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc5121_nfc_read_hw_config(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.mpc5121_nfc_prv*, align 8
  %6 = alloca %struct.mpc512x_reset_module*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %16 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %15)
  store %struct.nand_chip* %16, %struct.nand_chip** %4, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %18 = call %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip* %17)
  store %struct.mpc5121_nfc_prv* %18, %struct.mpc5121_nfc_prv** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %19 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %5, align 8
  %24 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %95

29:                                               ; preds = %1
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call %struct.mpc512x_reset_module* @of_iomap(%struct.device_node* %30, i32 0)
  store %struct.mpc512x_reset_module* %31, %struct.mpc512x_reset_module** %6, align 8
  %32 = load %struct.mpc512x_reset_module*, %struct.mpc512x_reset_module** %6, align 8
  %33 = icmp ne %struct.mpc512x_reset_module* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %5, align 8
  %36 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %14, align 4
  br label %91

41:                                               ; preds = %29
  %42 = load %struct.mpc512x_reset_module*, %struct.mpc512x_reset_module** %6, align 8
  %43 = getelementptr inbounds %struct.mpc512x_reset_module, %struct.mpc512x_reset_module* %42, i32 0, i32 0
  %44 = call i32 @in_be32(i32* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, 6
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 2, i32 1
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = ashr i32 %51, 7
  %53 = and i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = ashr i32 %54, 21
  %56 = and i32 %55, 3
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 %57, 2
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %58, %59
  switch i32 %60, label %65 [
    i32 0, label %61
    i32 1, label %61
    i32 2, label %62
    i32 3, label %62
    i32 4, label %63
    i32 5, label %63
    i32 6, label %64
    i32 7, label %64
  ]

61:                                               ; preds = %41, %41
  store i32 512, i32* %8, align 4
  store i32 16, i32* %9, align 4
  br label %65

62:                                               ; preds = %41, %41
  store i32 4096, i32* %8, align 4
  store i32 128, i32* %9, align 4
  br label %65

63:                                               ; preds = %41, %41
  store i32 2048, i32* %8, align 4
  store i32 64, i32* %9, align 4
  br label %65

64:                                               ; preds = %41, %41
  store i32 4096, i32* %8, align 4
  store i32 218, i32* %9, align 4
  br label %65

65:                                               ; preds = %41, %64, %63, %62, %61
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %76 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %77 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %65
  %81 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %5, align 8
  %82 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 %84, 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @dev_notice(i32 %83, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  %89 = load %struct.mpc512x_reset_module*, %struct.mpc512x_reset_module** %6, align 8
  %90 = call i32 @iounmap(%struct.mpc512x_reset_module* %89)
  br label %91

91:                                               ; preds = %80, %34
  %92 = load %struct.device_node*, %struct.device_node** %7, align 8
  %93 = call i32 @of_node_put(%struct.device_node* %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %22
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.mpc512x_reset_module* @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @dev_notice(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @iounmap(%struct.mpc512x_reset_module*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
