; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_sp_afk_encode_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_sp_afk_encode_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_item*, %struct.mlxsw_item*, i8*, i8*)* @mlxsw_sp_afk_encode_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_afk_encode_buf(%struct.mlxsw_item* %0, %struct.mlxsw_item* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.mlxsw_item*, align 8
  %6 = alloca %struct.mlxsw_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.mlxsw_item* %0, %struct.mlxsw_item** %5, align 8
  store %struct.mlxsw_item* %1, %struct.mlxsw_item** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.mlxsw_item*, %struct.mlxsw_item** %5, align 8
  %14 = call i8* @__mlxsw_item_data(i8* %12, %struct.mlxsw_item* %13, i32 0)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.mlxsw_item*, %struct.mlxsw_item** %6, align 8
  %17 = call i8* @__mlxsw_item_data(i8* %15, %struct.mlxsw_item* %16, i32 0)
  store i8* %17, i8** %10, align 8
  %18 = load %struct.mlxsw_item*, %struct.mlxsw_item** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @memcpy(i8* %22, i8* %23, i64 %24)
  ret void
}

declare dso_local i8* @__mlxsw_item_data(i8*, %struct.mlxsw_item*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
