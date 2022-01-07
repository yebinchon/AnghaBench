; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vregion_rehash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vregion_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp_acl_tcam_vregion = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_acl_tcam_rehash_ctx }
%struct.mlxsw_sp_acl_tcam_rehash_ctx = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed get rehash hints\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to migrate vregion\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vregion*, i32*)* @mlxsw_sp_acl_tcam_vregion_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_tcam_vregion_rehash(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_vregion* %1, i32* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_tcam_vregion*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_rehash_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_tcam_vregion* %1, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.mlxsw_sp_acl_tcam_rehash_ctx* %11, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %7, align 8
  %12 = load %struct.mlxsw_sp_acl_tcam_rehash_ctx*, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %7, align 8
  %13 = call i32 @mlxsw_sp_acl_tcam_vregion_rehash_in_progress(%struct.mlxsw_sp_acl_tcam_rehash_ctx* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %3
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %17 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  %18 = load %struct.mlxsw_sp_acl_tcam_rehash_ctx*, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %7, align 8
  %19 = call i32 @mlxsw_sp_acl_tcam_vregion_rehash_start(%struct.mlxsw_sp* %16, %struct.mlxsw_sp_acl_tcam_vregion* %17, %struct.mlxsw_sp_acl_tcam_rehash_ctx* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %27, %22
  br label %60

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %38 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  %39 = load %struct.mlxsw_sp_acl_tcam_rehash_ctx*, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %7, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @mlxsw_sp_acl_tcam_vregion_migrate(%struct.mlxsw_sp* %37, %struct.mlxsw_sp_acl_tcam_vregion* %38, %struct.mlxsw_sp_acl_tcam_rehash_ctx* %39, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %44, %36
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %57 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  %58 = load %struct.mlxsw_sp_acl_tcam_rehash_ctx*, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %7, align 8
  %59 = call i32 @mlxsw_sp_acl_tcam_vregion_rehash_end(%struct.mlxsw_sp* %56, %struct.mlxsw_sp_acl_tcam_vregion* %57, %struct.mlxsw_sp_acl_tcam_rehash_ctx* %58)
  br label %60

60:                                               ; preds = %34, %55, %51
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_tcam_vregion_rehash_in_progress(%struct.mlxsw_sp_acl_tcam_rehash_ctx*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vregion_rehash_start(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_rehash_ctx*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vregion_migrate(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_rehash_ctx*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vregion_rehash_end(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_rehash_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
