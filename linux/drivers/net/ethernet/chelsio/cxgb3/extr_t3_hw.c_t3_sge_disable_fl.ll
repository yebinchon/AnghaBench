; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_sge_disable_fl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_sge_disable_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK0 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK1 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK2 = common dso_local global i32 0, align 4
@M_FL_SIZE = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK3 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA2 = common dso_local global i32 0, align 4
@F_FREELIST = common dso_local global i32 0, align 4
@SG_CONTEXT_CMD_ATTEMPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_disable_fl(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.adapter*, %struct.adapter** %4, align 8
  %7 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %8 = call i32 @t3_read_reg(%struct.adapter* %6, i32 %7)
  %9 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %47

15:                                               ; preds = %2
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = load i32, i32* @A_SG_CONTEXT_MASK0, align 4
  %18 = call i32 @t3_write_reg(%struct.adapter* %16, i32 %17, i32 0)
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = load i32, i32* @A_SG_CONTEXT_MASK1, align 4
  %21 = call i32 @t3_write_reg(%struct.adapter* %19, i32 %20, i32 0)
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = load i32, i32* @A_SG_CONTEXT_MASK2, align 4
  %24 = load i32, i32* @M_FL_SIZE, align 4
  %25 = call i32 @V_FL_SIZE(i32 %24)
  %26 = call i32 @t3_write_reg(%struct.adapter* %22, i32 %23, i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = load i32, i32* @A_SG_CONTEXT_MASK3, align 4
  %29 = call i32 @t3_write_reg(%struct.adapter* %27, i32 %28, i32 0)
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load i32, i32* @A_SG_CONTEXT_DATA2, align 4
  %32 = call i32 @t3_write_reg(%struct.adapter* %30, i32 %31, i32 0)
  %33 = load %struct.adapter*, %struct.adapter** %4, align 8
  %34 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %35 = call i32 @V_CONTEXT_CMD_OPCODE(i32 1)
  %36 = load i32, i32* @F_FREELIST, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @V_CONTEXT(i32 %38)
  %40 = or i32 %37, %39
  %41 = call i32 @t3_write_reg(%struct.adapter* %33, i32 %34, i32 %40)
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %44 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %45 = load i32, i32* @SG_CONTEXT_CMD_ATTEMPTS, align 4
  %46 = call i32 @t3_wait_op_done(%struct.adapter* %42, i32 %43, i32 %44, i32 0, i32 %45, i32 1)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %15, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_FL_SIZE(i32) #1

declare dso_local i32 @V_CONTEXT_CMD_OPCODE(i32) #1

declare dso_local i32 @V_CONTEXT(i32) #1

declare dso_local i32 @t3_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
