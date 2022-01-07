; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_family_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_family_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32** }
%struct.mlxsw_sp_fid_family = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_fid_family*)* @mlxsw_sp_fid_family_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fid_family_unregister(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fid_family* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_fid_family*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_fid_family* %1, %struct.mlxsw_sp_fid_family** %4, align 8
  %5 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32**, i32*** %8, align 8
  %10 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32*, i32** %9, i64 %12
  store i32* null, i32** %13, align 8
  %14 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bitmap_free(i32 %16)
  %18 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %18, i32 0, i32 1
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %4, align 8
  %26 = call i32 @kfree(%struct.mlxsw_sp_fid_family* %25)
  ret void
}

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_fid_family*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
