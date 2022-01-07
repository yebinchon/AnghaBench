; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.TYPE_4__, %struct.nand_ecc_ctrl }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.nand_ecc_ctrl = type { i32, i32, i64 }
%struct.device_node = type { i32 }

@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@NAND_NEED_SCRAMBLING = common dso_local global i32 0, align 4
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@NAND_SUBPAGE_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @sunxi_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.nand_ecc_ctrl*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 3
  store %struct.nand_ecc_ctrl* %8, %struct.nand_ecc_ctrl** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.device_node* @nand_get_flash_node(%struct.nand_chip* %9)
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NAND_NEED_SCRAMBLING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %23
  %37 = load i32, i32* @NAND_SUBPAGE_READ, align 4
  %38 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %36
  %47 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %4, align 8
  %53 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %4, align 8
  %60 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %46, %36
  %62 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %4, align 8
  %63 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %4, align 8
  %68 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %93

74:                                               ; preds = %66
  %75 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %4, align 8
  %76 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %89 [
    i32 130, label %78
    i32 129, label %88
    i32 128, label %88
  ]

78:                                               ; preds = %74
  %79 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %80 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %4, align 8
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = call i32 @sunxi_nand_hw_ecc_ctrl_init(%struct.nand_chip* %79, %struct.nand_ecc_ctrl* %80, %struct.device_node* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %93

87:                                               ; preds = %78
  br label %92

88:                                               ; preds = %74, %74
  br label %92

89:                                               ; preds = %74
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %88, %87
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %89, %85, %71
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.device_node* @nand_get_flash_node(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nand_hw_ecc_ctrl_init(%struct.nand_chip*, %struct.nand_ecc_ctrl*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
