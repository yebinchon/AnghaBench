; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_bloom_filter.c_mlxsw_sp_acl_bf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_bloom_filter.c_mlxsw_sp_acl_bf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_bf = type { i32, i32 }
%struct.mlxsw_sp = type { i32 }

@ACL_MAX_BF_LOG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@refcnt = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_acl_bf* @mlxsw_sp_acl_bf_init(%struct.mlxsw_sp* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_bf*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_acl_bf*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ACL_MAX_BF_LOG, align 4
  %12 = call i32 @MLXSW_CORE_RES_VALID(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.mlxsw_sp_acl_bf* @ERR_PTR(i32 %16)
  store %struct.mlxsw_sp_acl_bf* %17, %struct.mlxsw_sp_acl_bf** %3, align 8
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ACL_MAX_BF_LOG, align 4
  %23 = call i32 @MLXSW_CORE_RES_GET(i32 %21, i32 %22)
  %24 = shl i32 1, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %6, align 8
  %26 = load i32, i32* @refcnt, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul i32 %27, %28
  %30 = call i32 @struct_size(%struct.mlxsw_sp_acl_bf* %25, i32 %26, i32 %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mlxsw_sp_acl_bf* @kzalloc(i32 %30, i32 %31)
  store %struct.mlxsw_sp_acl_bf* %32, %struct.mlxsw_sp_acl_bf** %6, align 8
  %33 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %6, align 8
  %34 = icmp ne %struct.mlxsw_sp_acl_bf* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %18
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.mlxsw_sp_acl_bf* @ERR_PTR(i32 %37)
  store %struct.mlxsw_sp_acl_bf* %38, %struct.mlxsw_sp_acl_bf** %3, align 8
  br label %47

39:                                               ; preds = %18
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_acl_bf, %struct.mlxsw_sp_acl_bf* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %6, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_acl_bf, %struct.mlxsw_sp_acl_bf* %43, i32 0, i32 1
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %6, align 8
  store %struct.mlxsw_sp_acl_bf* %46, %struct.mlxsw_sp_acl_bf** %3, align 8
  br label %47

47:                                               ; preds = %39, %35, %14
  %48 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %3, align 8
  ret %struct.mlxsw_sp_acl_bf* %48
}

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #1

declare dso_local %struct.mlxsw_sp_acl_bf* @ERR_PTR(i32) #1

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local %struct.mlxsw_sp_acl_bf* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mlxsw_sp_acl_bf*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
