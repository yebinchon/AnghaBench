; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_flex_actions.c_mlxsw_sp_act_mirror_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_flex_actions.c_mlxsw_sp_act_mirror_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_port** }
%struct.mlxsw_sp_port = type { i32 }

@MLXSW_SP_SPAN_INGRESS = common dso_local global i32 0, align 4
@MLXSW_SP_SPAN_EGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i32)* @mlxsw_sp_act_mirror_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_act_mirror_del(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca %struct.mlxsw_sp_port*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mlxsw_sp*
  store %struct.mlxsw_sp* %13, %struct.mlxsw_sp** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @MLXSW_SP_SPAN_INGRESS, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @MLXSW_SP_SPAN_EGRESS, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %11, align 4
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 0
  %24 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %24, i64 %25
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %26, align 8
  store %struct.mlxsw_sp_port* %27, %struct.mlxsw_sp_port** %10, align 8
  %28 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @mlxsw_sp_span_mirror_del(%struct.mlxsw_sp_port* %28, i32 %29, i32 %30, i32 0)
  ret void
}

declare dso_local i32 @mlxsw_sp_span_mirror_del(%struct.mlxsw_sp_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
