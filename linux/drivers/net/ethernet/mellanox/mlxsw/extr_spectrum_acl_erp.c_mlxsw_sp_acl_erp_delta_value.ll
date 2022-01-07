; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_delta_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_delta_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_delta = type { i32, i32 }

@__MASK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_erp_delta_value(%struct.mlxsw_sp_acl_erp_delta* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_acl_erp_delta*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_erp_delta* %0, %struct.mlxsw_sp_acl_erp_delta** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.mlxsw_sp_acl_erp_delta*, %struct.mlxsw_sp_acl_erp_delta** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, %struct.mlxsw_sp_acl_erp_delta* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mlxsw_sp_acl_erp_delta*, %struct.mlxsw_sp_acl_erp_delta** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, %struct.mlxsw_sp_acl_erp_delta* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 8
  %22 = call i64 @__MASK_IDX(i32 %21)
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sdiv i32 %26, 8
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @__MASK_LEN, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %18
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 8
  %35 = add nsw i32 %34, 1
  %36 = call i64 @__MASK_IDX(i32 %35)
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %31, %18
  %44 = load i32, i32* %6, align 4
  %45 = srem i32 %44, 8
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %43, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @__MASK_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
