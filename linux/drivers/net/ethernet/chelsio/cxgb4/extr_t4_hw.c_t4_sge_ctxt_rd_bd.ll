; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_sge_ctxt_rd_bd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_sge_ctxt_rd_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@SGE_CTXT_CMD_A = common dso_local global i32 0, align 4
@BUSY_F = common dso_local global i32 0, align 4
@SGE_CTXT_DATA0_A = common dso_local global i32 0, align 4
@SGE_CTXT_DATA5_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sge_ctxt_rd_bd(%struct.adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = load i32, i32* @SGE_CTXT_CMD_A, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @CTXTQID_V(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @CTXTTYPE_V(i32 %15)
  %17 = or i32 %14, %16
  %18 = call i32 @t4_write_reg(%struct.adapter* %11, i32 %12, i32 %17)
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = load i32, i32* @SGE_CTXT_CMD_A, align 4
  %21 = load i32, i32* @BUSY_F, align 4
  %22 = call i32 @t4_wait_op_done(%struct.adapter* %19, i32 %20, i32 %21, i32 0, i32 3, i32 1)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @SGE_CTXT_DATA0_A, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %37, %25
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SGE_CTXT_DATA5_A, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @t4_read_reg(%struct.adapter* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %9, align 4
  br label %27

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i32, i32* %10, align 4
  ret i32 %42
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @CTXTQID_V(i32) #1

declare dso_local i32 @CTXTTYPE_V(i32) #1

declare dso_local i32 @t4_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
