; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_t3_fatal_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_t3_fatal_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32 }

@FULL_INIT_DONE = common dso_local global i32 0, align 4
@A_XGM_TX_CTRL = common dso_local global i32 0, align 4
@A_XGM_RX_CTRL = common dso_local global i32 0, align 4
@cxgb3_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"encountered fatal error, operation suspended\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"FW status: 0x%x, 0x%x, 0x%x, 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_fatal_err(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca [4 x i32], align 16
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FULL_INIT_DONE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call i32 @t3_sge_stop(%struct.adapter* %11)
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = load i32, i32* @A_XGM_TX_CTRL, align 4
  %15 = call i32 @t3_write_reg(%struct.adapter* %13, i32 %14, i32 0)
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i32, i32* @A_XGM_RX_CTRL, align 4
  %18 = call i32 @t3_write_reg(%struct.adapter* %16, i32 %17, i32 0)
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = load i32, i32* @A_XGM_TX_CTRL, align 4
  %21 = call i32 @XGM_REG(i32 %20, i32 1)
  %22 = call i32 @t3_write_reg(%struct.adapter* %19, i32 %21, i32 0)
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = load i32, i32* @A_XGM_RX_CTRL, align 4
  %25 = call i32 @XGM_REG(i32 %24, i32 1)
  %26 = call i32 @t3_write_reg(%struct.adapter* %23, i32 %25, i32 0)
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = call i32 @t3_intr_disable(%struct.adapter* %30)
  %32 = load i32, i32* @cxgb3_wq, align 4
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 2
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %10, %1
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = call i32 (%struct.adapter*, i8*, ...) @CH_ALERT(%struct.adapter* %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.adapter*, %struct.adapter** %2, align 8
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %44 = call i32 @t3_cim_ctl_blk_read(%struct.adapter* %42, i32 160, i32 4, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %39
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.adapter*, i8*, ...) @CH_ALERT(%struct.adapter* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %46, %39
  ret void
}

declare dso_local i32 @t3_sge_stop(%struct.adapter*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @XGM_REG(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t3_intr_disable(%struct.adapter*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @CH_ALERT(%struct.adapter*, i8*, ...) #1

declare dso_local i32 @t3_cim_ctl_blk_read(%struct.adapter*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
