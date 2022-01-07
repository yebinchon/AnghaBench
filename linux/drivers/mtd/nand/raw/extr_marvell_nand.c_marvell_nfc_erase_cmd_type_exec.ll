; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_erase_cmd_type_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_erase_cmd_type_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_subop = type { i32 }
%struct.marvell_nfc_op = type { i32, i32, i32, i32* }

@TYPE_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_subop*)* @marvell_nfc_erase_cmd_type_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_erase_cmd_type_exec(%struct.nand_chip* %0, %struct.nand_subop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_subop*, align 8
  %6 = alloca %struct.marvell_nfc_op, align 8
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_subop* %1, %struct.nand_subop** %5, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %10 = call i32 @marvell_nfc_parse_instructions(%struct.nand_chip* %8, %struct.nand_subop* %9, %struct.marvell_nfc_op* %6)
  %11 = load i32, i32* @TYPE_ERASE, align 4
  %12 = call i32 @NDCB0_CMD_TYPE(i32 %11)
  %13 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %12
  store i32 %17, i32* %15, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %19 = call i32 @marvell_nfc_prepare_cmd(%struct.nand_chip* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %26 = call i32 @marvell_nfc_send_cmd(%struct.nand_chip* %25, %struct.marvell_nfc_op* %6)
  %27 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %28 = call i32 @marvell_nfc_wait_cmdd(%struct.nand_chip* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cond_delay(i32 %35)
  %37 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %38 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @marvell_nfc_wait_op(%struct.nand_chip* %37, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cond_delay(i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %43, %31, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @marvell_nfc_parse_instructions(%struct.nand_chip*, %struct.nand_subop*, %struct.marvell_nfc_op*) #1

declare dso_local i32 @NDCB0_CMD_TYPE(i32) #1

declare dso_local i32 @marvell_nfc_prepare_cmd(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_send_cmd(%struct.nand_chip*, %struct.marvell_nfc_op*) #1

declare dso_local i32 @marvell_nfc_wait_cmdd(%struct.nand_chip*) #1

declare dso_local i32 @cond_delay(i32) #1

declare dso_local i32 @marvell_nfc_wait_op(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
