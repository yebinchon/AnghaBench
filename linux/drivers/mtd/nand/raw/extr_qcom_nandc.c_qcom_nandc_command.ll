; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32 }
%struct.qcom_nand_host = type { i32 }
%struct.qcom_nand_controller = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failure executing command %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failure submitting descs for command %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32, i32)* @qcom_nandc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_nandc_command(%struct.nand_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qcom_nand_host*, align 8
  %10 = alloca %struct.nand_ecc_ctrl*, align 8
  %11 = alloca %struct.qcom_nand_controller*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %15 = call %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip* %14)
  store %struct.qcom_nand_host* %15, %struct.qcom_nand_host** %9, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %17, %struct.nand_ecc_ctrl** %10, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %18)
  store %struct.qcom_nand_controller* %19, %struct.qcom_nand_controller** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @pre_command(%struct.qcom_nand_host* %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %64 [
    i32 130, label %24
    i32 131, label %27
    i32 133, label %33
    i32 136, label %36
    i32 132, label %40
    i32 129, label %55
    i32 134, label %63
    i32 128, label %63
    i32 135, label %63
  ]

24:                                               ; preds = %4
  %25 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %26 = call i32 @reset(%struct.qcom_nand_host* %25)
  store i32 %26, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %65

27:                                               ; preds = %4
  %28 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %29 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %28, i32 0, i32 0
  store i32 4, i32* %29, align 4
  %30 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @read_id(%struct.qcom_nand_host* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %65

33:                                               ; preds = %4
  %34 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %35 = call i32 @nandc_param(%struct.qcom_nand_host* %34)
  store i32 %35, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %65

36:                                               ; preds = %4
  %37 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @erase_block(%struct.qcom_nand_host* %37, i32 %38)
  store i32 %39, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %65

40:                                               ; preds = %4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %46 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @set_address(%struct.qcom_nand_host* %47, i32 0, i32 %48)
  %50 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %51 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %52 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @update_rw_regs(%struct.qcom_nand_host* %50, i32 %53, i32 1)
  br label %65

55:                                               ; preds = %4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  %60 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @set_address(%struct.qcom_nand_host* %60, i32 0, i32 %61)
  br label %65

63:                                               ; preds = %4, %4, %4
  br label %64

64:                                               ; preds = %4, %63
  br label %65

65:                                               ; preds = %64, %55, %40, %36, %33, %27, %24
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %70 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %75 = call i32 @free_descs(%struct.qcom_nand_controller* %74)
  br label %97

76:                                               ; preds = %65
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %81 = call i32 @submit_descs(%struct.qcom_nand_controller* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %86 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90, %76
  %92 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %93 = call i32 @free_descs(%struct.qcom_nand_controller* %92)
  %94 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @post_command(%struct.qcom_nand_host* %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %68
  ret void
}

declare dso_local %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @pre_command(%struct.qcom_nand_host*, i32) #1

declare dso_local i32 @reset(%struct.qcom_nand_host*) #1

declare dso_local i32 @read_id(%struct.qcom_nand_host*, i32) #1

declare dso_local i32 @nandc_param(%struct.qcom_nand_host*) #1

declare dso_local i32 @erase_block(%struct.qcom_nand_host*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @set_address(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @update_rw_regs(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @free_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @submit_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @post_command(%struct.qcom_nand_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
