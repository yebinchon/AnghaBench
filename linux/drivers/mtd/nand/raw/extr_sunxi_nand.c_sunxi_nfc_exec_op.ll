; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_op_parser = type { i32 }
%struct.nand_chip = type { i32 }
%struct.nand_operation = type { i64 }
%struct.sunxi_nand_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@sunxi_nfc_op_parser = common dso_local global %struct.nand_op_parser zeroinitializer, align 4
@sunxi_nfc_norb_op_parser = common dso_local global %struct.nand_op_parser zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_operation*, i32)* @sunxi_nfc_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_exec_op(%struct.nand_chip* %0, %struct.nand_operation* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_operation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunxi_nand_chip*, align 8
  %8 = alloca %struct.nand_op_parser*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_operation* %1, %struct.nand_operation** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.sunxi_nand_chip* @to_sunxi_nand(%struct.nand_chip* %9)
  store %struct.sunxi_nand_chip* %10, %struct.sunxi_nand_chip** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = load %struct.nand_operation*, %struct.nand_operation** %5, align 8
  %13 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @sunxi_nfc_select_chip(%struct.nand_chip* %11, i64 %14)
  %16 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %7, align 8
  %17 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.nand_operation*, %struct.nand_operation** %5, align 8
  %20 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store %struct.nand_op_parser* @sunxi_nfc_op_parser, %struct.nand_op_parser** %8, align 8
  br label %28

27:                                               ; preds = %3
  store %struct.nand_op_parser* @sunxi_nfc_norb_op_parser, %struct.nand_op_parser** %8, align 8
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %30 = load %struct.nand_op_parser*, %struct.nand_op_parser** %8, align 8
  %31 = load %struct.nand_operation*, %struct.nand_operation** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @nand_op_parser_exec_op(%struct.nand_chip* %29, %struct.nand_op_parser* %30, %struct.nand_operation* %31, i32 %32)
  ret i32 %33
}

declare dso_local %struct.sunxi_nand_chip* @to_sunxi_nand(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_select_chip(%struct.nand_chip*, i64) #1

declare dso_local i32 @nand_op_parser_exec_op(%struct.nand_chip*, %struct.nand_op_parser*, %struct.nand_operation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
