; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_xfer_data_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_xfer_data_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_subop = type { i32 }
%struct.marvell_nfc_op = type { i32, %struct.nand_op_instr* }
%struct.nand_op_instr = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.marvell_nfc = type { i32 }

@NAND_OP_DATA_IN_INSTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_subop*, %struct.marvell_nfc_op*)* @marvell_nfc_xfer_data_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_xfer_data_pio(%struct.nand_chip* %0, %struct.nand_subop* %1, %struct.marvell_nfc_op* %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_subop*, align 8
  %6 = alloca %struct.marvell_nfc_op*, align 8
  %7 = alloca %struct.marvell_nfc*, align 8
  %8 = alloca %struct.nand_op_instr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_subop* %1, %struct.nand_subop** %5, align 8
  store %struct.marvell_nfc_op* %2, %struct.marvell_nfc_op** %6, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %18)
  store %struct.marvell_nfc* %19, %struct.marvell_nfc** %7, align 8
  %20 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %6, align 8
  %21 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %20, i32 0, i32 1
  %22 = load %struct.nand_op_instr*, %struct.nand_op_instr** %21, align 8
  store %struct.nand_op_instr* %22, %struct.nand_op_instr** %8, align 8
  %23 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %6, align 8
  %24 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @nand_subop_get_data_len(%struct.nand_subop* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @nand_subop_get_data_start_off(%struct.nand_subop* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %33 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NAND_OP_DATA_IN_INSTR, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %39 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %46 = call i32 @marvell_nfc_force_byte_access(%struct.nand_chip* %45, i32 1)
  br label %47

47:                                               ; preds = %44, %3
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %52 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32* %59, i32** %14, align 8
  %60 = load %struct.marvell_nfc*, %struct.marvell_nfc** %7, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @marvell_nfc_xfer_data_in_pio(%struct.marvell_nfc* %60, i32* %61, i32 %62)
  store i32 %63, i32* %13, align 4
  br label %78

64:                                               ; preds = %47
  %65 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %66 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %15, align 8
  %74 = load %struct.marvell_nfc*, %struct.marvell_nfc** %7, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @marvell_nfc_xfer_data_out_pio(%struct.marvell_nfc* %74, i32* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %64, %50
  %79 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %80 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %87 = call i32 @marvell_nfc_force_byte_access(%struct.nand_chip* %86, i32 0)
  br label %88

88:                                               ; preds = %85, %78
  %89 = load i32, i32* %13, align 4
  ret i32 %89
}

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @nand_subop_get_data_len(%struct.nand_subop*, i32) #1

declare dso_local i32 @nand_subop_get_data_start_off(%struct.nand_subop*, i32) #1

declare dso_local i32 @marvell_nfc_force_byte_access(%struct.nand_chip*, i32) #1

declare dso_local i32 @marvell_nfc_xfer_data_in_pio(%struct.marvell_nfc*, i32*, i32) #1

declare dso_local i32 @marvell_nfc_xfer_data_out_pio(%struct.marvell_nfc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
