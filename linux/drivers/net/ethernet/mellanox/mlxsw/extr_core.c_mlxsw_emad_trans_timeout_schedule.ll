; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_trans_timeout_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_trans_timeout_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_reg_trans = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@MLXSW_EMAD_TIMEOUT_MS = common dso_local global i32 0, align 4
@MLXSW_EMAD_TIMEOUT_DURING_FW_FLASH_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_reg_trans*)* @mlxsw_emad_trans_timeout_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_emad_trans_timeout_schedule(%struct.mlxsw_reg_trans* %0) #0 {
  %2 = alloca %struct.mlxsw_reg_trans*, align 8
  %3 = alloca i64, align 8
  store %struct.mlxsw_reg_trans* %0, %struct.mlxsw_reg_trans** %2, align 8
  %4 = load i32, i32* @MLXSW_EMAD_TIMEOUT_MS, align 4
  %5 = call i64 @msecs_to_jiffies(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @MLXSW_EMAD_TIMEOUT_DURING_FW_FLASH_MS, align 4
  %14 = call i64 @msecs_to_jiffies(i32 %13)
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %17 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %22 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %21, i32 0, i32 0
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @queue_delayed_work(i32 %20, i32* %22, i64 %23)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
