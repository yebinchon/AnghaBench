; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_subop_get_data_start_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_subop_get_data_start_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_subop = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_subop_get_data_start_off(%struct.nand_subop* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_subop*, align 8
  %5 = alloca i32, align 4
  store %struct.nand_subop* %0, %struct.nand_subop** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @nand_subop_instr_is_valid(%struct.nand_subop* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %12 = getelementptr inbounds %struct.nand_subop, %struct.nand_subop* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @nand_instr_is_data(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %10, %2
  %21 = phi i1 [ true, %2 ], [ %19, %10 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %30

26:                                               ; preds = %20
  %27 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @nand_subop_get_start_off(%struct.nand_subop* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %25
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nand_subop_instr_is_valid(%struct.nand_subop*, i32) #1

declare dso_local i32 @nand_instr_is_data(i32*) #1

declare dso_local i32 @nand_subop_get_start_off(%struct.nand_subop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
