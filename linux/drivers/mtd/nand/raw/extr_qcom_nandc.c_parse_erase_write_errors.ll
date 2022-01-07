; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_parse_erase_write_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_parse_erase_write_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { i32, %struct.nand_chip }
%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32 }
%struct.qcom_nand_controller = type { i32* }

@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@FS_MPU_ERR = common dso_local global i32 0, align 4
@NAND_STATUS_WP = common dso_local global i32 0, align 4
@FS_OP_ERR = common dso_local global i32 0, align 4
@FS_DEVICE_STS_ERR = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_nand_host*, i32)* @parse_erase_write_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_erase_write_errors(%struct.qcom_nand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_nand_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.qcom_nand_controller*, align 8
  %7 = alloca %struct.nand_ecc_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %12 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %11, i32 0, i32 1
  store %struct.nand_chip* %12, %struct.nand_chip** %5, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %13)
  store %struct.qcom_nand_controller* %14, %struct.qcom_nand_controller** %6, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %16, %struct.nand_ecc_ctrl** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %7, align 8
  %22 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 1, %24 ]
  store i32 %26, i32* %8, align 4
  %27 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %28 = call i32 @nandc_read_buffer_sync(%struct.qcom_nand_controller* %27, i32 1)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %75, %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  %34 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %35 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @FS_MPU_ERR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load i32, i32* @NAND_STATUS_WP, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %50 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %33
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @FS_OP_ERR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @FS_DEVICE_STS_ERR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63, %53
  %69 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %70 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %71 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %63, %58
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %29

78:                                               ; preds = %29
  ret void
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @nandc_read_buffer_sync(%struct.qcom_nand_controller*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
