; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_delta_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_delta_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_delta = type { i32, i32 }

@__MASK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_acl_erp_delta_clear(%struct.mlxsw_sp_acl_erp_delta* %0, i8* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_erp_delta*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_erp_delta* %0, %struct.mlxsw_sp_acl_erp_delta** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.mlxsw_sp_acl_erp_delta*, %struct.mlxsw_sp_acl_erp_delta** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, %struct.mlxsw_sp_acl_erp_delta* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mlxsw_sp_acl_erp_delta*, %struct.mlxsw_sp_acl_erp_delta** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, %struct.mlxsw_sp_acl_erp_delta* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = srem i32 %16, 8
  %18 = load i32, i32* %8, align 4
  %19 = shl i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = xor i32 %20, -1
  store i32 %21, i32* %8, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 8
  %25 = call i64 @__MASK_IDX(i32 %24)
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 255
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, %28
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 1
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %34, 8
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* @__MASK_LEN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %2
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sdiv i32 %41, 8
  %43 = add nsw i32 %42, 1
  %44 = call i64 @__MASK_IDX(i32 %43)
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, %48
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  br label %54

54:                                               ; preds = %39, %2
  ret void
}

declare dso_local i64 @__MASK_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
