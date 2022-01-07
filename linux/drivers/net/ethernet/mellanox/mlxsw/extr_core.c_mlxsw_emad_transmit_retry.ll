; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_transmit_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_transmit_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_reg_trans = type { i64, i32 }

@MLXSW_EMAD_MAX_RETRY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_core*, %struct.mlxsw_reg_trans*)* @mlxsw_emad_transmit_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_emad_transmit_retry(%struct.mlxsw_core* %0, %struct.mlxsw_reg_trans* %1) #0 {
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca %struct.mlxsw_reg_trans*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  store %struct.mlxsw_reg_trans* %1, %struct.mlxsw_reg_trans** %4, align 8
  %6 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %4, align 8
  %7 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MLXSW_EMAD_MAX_RETRY, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %4, align 8
  %20 = call i32 @mlxsw_emad_transmit(i32 %18, %struct.mlxsw_reg_trans* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %32

24:                                               ; preds = %11
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %24
  %29 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mlxsw_emad_trans_finish(%struct.mlxsw_reg_trans* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @mlxsw_emad_transmit(i32, %struct.mlxsw_reg_trans*) #1

declare dso_local i32 @mlxsw_emad_trans_finish(%struct.mlxsw_reg_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
