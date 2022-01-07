; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_sge_enable_ecntxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_sge_enable_ecntxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK0 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK1 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK2 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK3 = common dso_local global i32 0, align 4
@F_EC_VALID = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA3 = common dso_local global i32 0, align 4
@F_EGRESS = common dso_local global i32 0, align 4
@SG_CONTEXT_CMD_ATTEMPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_enable_ecntxt(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.adapter*, %struct.adapter** %5, align 8
  %9 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %10 = call i32 @t3_read_reg(%struct.adapter* %8, i32 %9)
  %11 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = load i32, i32* @A_SG_CONTEXT_MASK0, align 4
  %20 = call i32 @t3_write_reg(%struct.adapter* %18, i32 %19, i32 0)
  %21 = load %struct.adapter*, %struct.adapter** %5, align 8
  %22 = load i32, i32* @A_SG_CONTEXT_MASK1, align 4
  %23 = call i32 @t3_write_reg(%struct.adapter* %21, i32 %22, i32 0)
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = load i32, i32* @A_SG_CONTEXT_MASK2, align 4
  %26 = call i32 @t3_write_reg(%struct.adapter* %24, i32 %25, i32 0)
  %27 = load %struct.adapter*, %struct.adapter** %5, align 8
  %28 = load i32, i32* @A_SG_CONTEXT_MASK3, align 4
  %29 = load i32, i32* @F_EC_VALID, align 4
  %30 = call i32 @t3_write_reg(%struct.adapter* %27, i32 %28, i32 %29)
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = load i32, i32* @A_SG_CONTEXT_DATA3, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @V_EC_VALID(i32 %33)
  %35 = call i32 @t3_write_reg(%struct.adapter* %31, i32 %32, i32 %34)
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %38 = call i32 @V_CONTEXT_CMD_OPCODE(i32 1)
  %39 = load i32, i32* @F_EGRESS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @V_CONTEXT(i32 %41)
  %43 = or i32 %40, %42
  %44 = call i32 @t3_write_reg(%struct.adapter* %36, i32 %37, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %47 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %48 = load i32, i32* @SG_CONTEXT_CMD_ATTEMPTS, align 4
  %49 = call i32 @t3_wait_op_done(%struct.adapter* %45, i32 %46, i32 %47, i32 0, i32 %48, i32 1)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %17, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_EC_VALID(i32) #1

declare dso_local i32 @V_CONTEXT_CMD_OPCODE(i32) #1

declare dso_local i32 @V_CONTEXT(i32) #1

declare dso_local i32 @t3_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
