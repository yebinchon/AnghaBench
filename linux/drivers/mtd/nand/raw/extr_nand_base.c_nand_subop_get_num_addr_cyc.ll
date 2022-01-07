; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_subop_get_num_addr_cyc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_subop_get_num_addr_cyc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_subop = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NAND_OP_ADDR_INSTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_subop_get_num_addr_cyc(%struct.nand_subop* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_subop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nand_subop* %0, %struct.nand_subop** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @nand_subop_instr_is_valid(%struct.nand_subop* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %14 = getelementptr inbounds %struct.nand_subop, %struct.nand_subop* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NAND_OP_ADDR_INSTR, align 8
  %22 = icmp ne i64 %20, %21
  br label %23

23:                                               ; preds = %12, %2
  %24 = phi i1 [ true, %2 ], [ %22, %12 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %63

29:                                               ; preds = %23
  %30 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @nand_subop_get_addr_start_off(%struct.nand_subop* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %35 = getelementptr inbounds %struct.nand_subop, %struct.nand_subop* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %41 = getelementptr inbounds %struct.nand_subop, %struct.nand_subop* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %46 = getelementptr inbounds %struct.nand_subop, %struct.nand_subop* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  br label %59

48:                                               ; preds = %39, %29
  %49 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %50 = getelementptr inbounds %struct.nand_subop, %struct.nand_subop* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %48, %44
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %28
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nand_subop_instr_is_valid(%struct.nand_subop*, i32) #1

declare dso_local i32 @nand_subop_get_addr_start_off(%struct.nand_subop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
