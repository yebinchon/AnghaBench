; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_pre_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_pre_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { i32, i32, %struct.nand_chip }
%struct.nand_chip = type { i32 }
%struct.qcom_nand_controller = type { i64, i64 }

@NAND_CMD_RESET = common dso_local global i32 0, align 4
@NAND_CMD_READID = common dso_local global i32 0, align 4
@NAND_CMD_PARAM = common dso_local global i32 0, align 4
@NAND_CMD_ERASE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_nand_host*, i32)* @pre_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pre_command(%struct.qcom_nand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_nand_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.qcom_nand_controller*, align 8
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %7, i32 0, i32 2
  store %struct.nand_chip* %8, %struct.nand_chip** %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %10 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %9)
  store %struct.qcom_nand_controller* %10, %struct.qcom_nand_controller** %6, align 8
  %11 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %12 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %14 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %16 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %19 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %21 = call i32 @clear_read_regs(%struct.qcom_nand_controller* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NAND_CMD_RESET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NAND_CMD_READID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NAND_CMD_PARAM, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NAND_CMD_ERASE1, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29, %25, %2
  %38 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %39 = call i32 @clear_bam_transaction(%struct.qcom_nand_controller* %38)
  br label %40

40:                                               ; preds = %37, %33
  ret void
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @clear_read_regs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @clear_bam_transaction(%struct.qcom_nand_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
