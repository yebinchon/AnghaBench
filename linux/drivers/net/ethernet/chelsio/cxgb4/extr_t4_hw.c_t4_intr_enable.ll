; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PL_WHOAMI_A = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@ERR_DROPPED_DB_F = common dso_local global i32 0, align 4
@ERR_EGR_CTXT_PRIO_F = common dso_local global i32 0, align 4
@DBFIFO_HP_INT_F = common dso_local global i32 0, align 4
@SGE_INT_ENABLE3_A = common dso_local global i32 0, align 4
@ERR_CPL_EXCEED_IQE_SIZE_F = common dso_local global i32 0, align 4
@ERR_INVALID_CIDX_INC_F = common dso_local global i32 0, align 4
@ERR_CPL_OPCODE_0_F = common dso_local global i32 0, align 4
@ERR_DATA_CPL_ON_HIGH_QID1_F = common dso_local global i32 0, align 4
@INGRESS_SIZE_ERR_F = common dso_local global i32 0, align 4
@ERR_DATA_CPL_ON_HIGH_QID0_F = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX3_F = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX2_F = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX1_F = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX0_F = common dso_local global i32 0, align 4
@ERR_ING_CTXT_PRIO_F = common dso_local global i32 0, align 4
@DBFIFO_LP_INT_F = common dso_local global i32 0, align 4
@EGRESS_SIZE_ERR_F = common dso_local global i32 0, align 4
@PL_PF_INT_ENABLE_A = common dso_local global i32 0, align 4
@PF_INTR_MASK = common dso_local global i32 0, align 4
@PL_INT_MAP0_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_intr_enable(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = load i32, i32* @PL_WHOAMI_A, align 4
  %8 = call i32 @t4_read_reg(%struct.adapter* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @CHELSIO_CHIP_VERSION(i32 %12)
  %14 = load i64, i64* @CHELSIO_T5, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @SOURCEPF_G(i32 %17)
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @T6_SOURCEPF_G(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  store i32 %23, i32* %5, align 4
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @CHELSIO_CHIP_VERSION(i32 %27)
  %29 = load i64, i64* @CHELSIO_T5, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* @ERR_DROPPED_DB_F, align 4
  %33 = load i32, i32* @ERR_EGR_CTXT_PRIO_F, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DBFIFO_HP_INT_F, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %22
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = load i32, i32* @SGE_INT_ENABLE3_A, align 4
  %40 = load i32, i32* @ERR_CPL_EXCEED_IQE_SIZE_F, align 4
  %41 = load i32, i32* @ERR_INVALID_CIDX_INC_F, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ERR_CPL_OPCODE_0_F, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ERR_DATA_CPL_ON_HIGH_QID1_F, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @INGRESS_SIZE_ERR_F, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ERR_DATA_CPL_ON_HIGH_QID0_F, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ERR_BAD_DB_PIDX3_F, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ERR_BAD_DB_PIDX2_F, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ERR_BAD_DB_PIDX1_F, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ERR_BAD_DB_PIDX0_F, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ERR_ING_CTXT_PRIO_F, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @DBFIFO_LP_INT_F, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @EGRESS_SIZE_ERR_F, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @t4_write_reg(%struct.adapter* %38, i32 %39, i32 %66)
  %68 = load %struct.adapter*, %struct.adapter** %2, align 8
  %69 = load i32, i32* @PL_PF_INT_ENABLE_A, align 4
  %70 = call i32 @MYPF_REG(i32 %69)
  %71 = load i32, i32* @PF_INTR_MASK, align 4
  %72 = call i32 @t4_write_reg(%struct.adapter* %68, i32 %70, i32 %71)
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = load i32, i32* @PL_INT_MAP0_A, align 4
  %75 = load i32, i32* %5, align 4
  %76 = shl i32 1, %75
  %77 = call i32 @t4_set_reg_field(%struct.adapter* %73, i32 %74, i32 0, i32 %76)
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @SOURCEPF_G(i32) #1

declare dso_local i32 @T6_SOURCEPF_G(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
