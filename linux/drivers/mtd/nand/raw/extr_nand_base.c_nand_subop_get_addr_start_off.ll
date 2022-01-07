; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_subop_get_addr_start_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_subop_get_addr_start_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_subop = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NAND_OP_ADDR_INSTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_subop_get_addr_start_off(%struct.nand_subop* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_subop*, align 8
  %5 = alloca i32, align 4
  store %struct.nand_subop* %0, %struct.nand_subop** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @nand_subop_instr_is_valid(%struct.nand_subop* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %12 = getelementptr inbounds %struct.nand_subop, %struct.nand_subop* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NAND_OP_ADDR_INSTR, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %10, %2
  %22 = phi i1 [ true, %2 ], [ %20, %10 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %21
  %28 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @nand_subop_get_start_off(%struct.nand_subop* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %26
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nand_subop_instr_is_valid(%struct.nand_subop*, i32) #1

declare dso_local i32 @nand_subop_get_start_off(%struct.nand_subop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
