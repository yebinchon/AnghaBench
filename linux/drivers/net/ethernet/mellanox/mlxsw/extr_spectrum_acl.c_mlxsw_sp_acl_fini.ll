; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl* }
%struct.mlxsw_sp_acl = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_acl_fini(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca %struct.mlxsw_sp_acl*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %4 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %4, i32 0, i32 0
  %6 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  store %struct.mlxsw_sp_acl* %6, %struct.mlxsw_sp_acl** %3, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %7, i32 0, i32 0
  %9 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %8, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @cancel_delayed_work_sync(i32* %11)
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %14 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %3, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %14, i32 0, i32 4
  %16 = call i32 @mlxsw_sp_acl_tcam_fini(%struct.mlxsw_sp* %13, i32* %15)
  %17 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %17, i32 0, i32 3
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %3, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mlxsw_sp_fid_put(i32 %26)
  %28 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %3, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %28, i32 0, i32 1
  %30 = call i32 @rhashtable_destroy(i32* %29)
  %31 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %3, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlxsw_afk_destroy(i32 %33)
  %35 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %3, align 8
  %36 = call i32 @kfree(%struct.mlxsw_sp_acl* %35)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_fini(%struct.mlxsw_sp*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mlxsw_sp_fid_put(i32) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @mlxsw_afk_destroy(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
