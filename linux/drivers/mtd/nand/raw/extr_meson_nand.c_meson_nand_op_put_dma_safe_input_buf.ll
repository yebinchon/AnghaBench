; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nand_op_put_dma_safe_input_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nand_op_put_dma_safe_input_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_op_instr = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@NAND_OP_DATA_IN_INSTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_op_instr*, i8*)* @meson_nand_op_put_dma_safe_input_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_nand_op_put_dma_safe_input_buf(%struct.nand_op_instr* %0, i8* %1) #0 {
  %3 = alloca %struct.nand_op_instr*, align 8
  %4 = alloca i8*, align 8
  store %struct.nand_op_instr* %0, %struct.nand_op_instr** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.nand_op_instr*, %struct.nand_op_instr** %3, align 8
  %6 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NAND_OP_DATA_IN_INSTR, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %2
  br label %47

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.nand_op_instr*, %struct.nand_op_instr** %3, align 8
  %24 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %22, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %47

31:                                               ; preds = %21
  %32 = load %struct.nand_op_instr*, %struct.nand_op_instr** %3, align 8
  %33 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.nand_op_instr*, %struct.nand_op_instr** %3, align 8
  %40 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memcpy(i8* %37, i8* %38, i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @kfree(i8* %45)
  br label %47

47:                                               ; preds = %31, %30, %20
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
