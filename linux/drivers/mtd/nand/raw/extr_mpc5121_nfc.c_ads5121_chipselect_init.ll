; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_ads5121_chipselect_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_ads5121_chipselect_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 }
%struct.mpc5121_nfc_prv = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"fsl,mpc5121ads-cpld\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @ads5121_chipselect_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads5121_chipselect_init(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.mpc5121_nfc_prv*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %7)
  store %struct.nand_chip* %8, %struct.nand_chip** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.mpc5121_nfc_prv* %10, %struct.mpc5121_nfc_prv** %5, align 8
  %11 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = call i32 @of_iomap(%struct.device_node* %15, i32 0)
  %17 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %5, align 8
  %18 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  %21 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %5, align 8
  %22 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %14
  %29 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %5, align 8
  %30 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 9
  store i32 %32, i32* %30, align 4
  store i32 0, i32* %2, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %28, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
