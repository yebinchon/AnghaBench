; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_op_parser_cmp_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_op_parser_cmp_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_op_parser_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx*)* @nand_op_parser_cmp_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_op_parser_cmp_ctx(%struct.nand_op_parser_ctx* %0, %struct.nand_op_parser_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_op_parser_ctx*, align 8
  %5 = alloca %struct.nand_op_parser_ctx*, align 8
  store %struct.nand_op_parser_ctx* %0, %struct.nand_op_parser_ctx** %4, align 8
  store %struct.nand_op_parser_ctx* %1, %struct.nand_op_parser_ctx** %5, align 8
  %6 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %52

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %52

39:                                               ; preds = %28
  %40 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %52

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %49, %38, %26, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
