; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_post_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_post_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { %struct.nand_chip }
%struct.nand_chip = type { i32 }
%struct.qcom_nand_controller = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_nand_host*, i32)* @post_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_command(%struct.qcom_nand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_nand_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.qcom_nand_controller*, align 8
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %7, i32 0, i32 0
  store %struct.nand_chip* %8, %struct.nand_chip** %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %10 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %9)
  store %struct.qcom_nand_controller* %10, %struct.qcom_nand_controller** %6, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %29 [
    i32 128, label %12
    i32 129, label %25
    i32 130, label %25
  ]

12:                                               ; preds = %2
  %13 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %14 = call i32 @nandc_read_buffer_sync(%struct.qcom_nand_controller* %13, i32 1)
  %15 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %16 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %19 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %22 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i32 %17, i32 %20, i32 %23)
  br label %30

25:                                               ; preds = %2, %2
  %26 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @parse_erase_write_errors(%struct.qcom_nand_host* %26, i32 %27)
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %25, %12
  ret void
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @nandc_read_buffer_sync(%struct.qcom_nand_controller*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @parse_erase_write_errors(%struct.qcom_nand_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
