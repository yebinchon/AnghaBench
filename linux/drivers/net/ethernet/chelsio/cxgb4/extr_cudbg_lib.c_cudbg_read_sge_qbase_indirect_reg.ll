; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_read_sge_qbase_indirect_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_read_sge_qbase_indirect_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_qbase_reg_field = type { i64**, i64**, i32*, i32 }

@SGE_QBASE_DATA_REG_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_qbase_reg_field*, i64, i32)* @cudbg_read_sge_qbase_indirect_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cudbg_read_sge_qbase_indirect_reg(%struct.adapter* %0, %struct.sge_qbase_reg_field* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_qbase_reg_field*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_qbase_reg_field* %1, %struct.sge_qbase_reg_field** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.sge_qbase_reg_field*, %struct.sge_qbase_reg_field** %6, align 8
  %15 = getelementptr inbounds %struct.sge_qbase_reg_field, %struct.sge_qbase_reg_field* %14, i32 0, i32 0
  %16 = load i64**, i64*** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i64*, i64** %16, i64 %17
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %9, align 8
  br label %29

20:                                               ; preds = %4
  %21 = load %struct.sge_qbase_reg_field*, %struct.sge_qbase_reg_field** %6, align 8
  %22 = getelementptr inbounds %struct.sge_qbase_reg_field, %struct.sge_qbase_reg_field* %21, i32 0, i32 1
  %23 = load i64**, i64*** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i64*, i64** %23, i64 %24
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %20, %13
  %30 = load %struct.adapter*, %struct.adapter** %5, align 8
  %31 = load %struct.sge_qbase_reg_field*, %struct.sge_qbase_reg_field** %6, align 8
  %32 = getelementptr inbounds %struct.sge_qbase_reg_field, %struct.sge_qbase_reg_field* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @t4_write_reg(%struct.adapter* %30, i32 %33, i64 %34)
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %50, %29
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @SGE_QBASE_DATA_REG_NUM, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.adapter*, %struct.adapter** %5, align 8
  %42 = load %struct.sge_qbase_reg_field*, %struct.sge_qbase_reg_field** %6, align 8
  %43 = getelementptr inbounds %struct.sge_qbase_reg_field, %struct.sge_qbase_reg_field* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @t4_read_reg(%struct.adapter* %41, i32 %47)
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %40
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %10, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %9, align 8
  br label %36

55:                                               ; preds = %36
  ret void
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i64) #1

declare dso_local i64 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
