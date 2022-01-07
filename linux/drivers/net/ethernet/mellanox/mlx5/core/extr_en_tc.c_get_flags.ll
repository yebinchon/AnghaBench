; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_get_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INGRESS = common dso_local global i32 0, align 4
@MLX5E_TC_FLOW_FLAG_INGRESS = common dso_local global i32 0, align 4
@EGRESS = common dso_local global i32 0, align 4
@MLX5E_TC_FLOW_FLAG_EGRESS = common dso_local global i32 0, align 4
@ESW_OFFLOAD = common dso_local global i32 0, align 4
@MLX5E_TC_FLOW_FLAG_ESWITCH = common dso_local global i32 0, align 4
@NIC_OFFLOAD = common dso_local global i32 0, align 4
@MLX5E_TC_FLOW_FLAG_NIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*)* @get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_flags(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @INGRESS, align 4
  %8 = call i32 @MLX5_TC_FLAG(i32 %7)
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @MLX5E_TC_FLOW_FLAG_INGRESS, align 4
  %13 = call i64 @BIT(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @EGRESS, align 4
  %19 = call i32 @MLX5_TC_FLAG(i32 %18)
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @MLX5E_TC_FLOW_FLAG_EGRESS, align 4
  %24 = call i64 @BIT(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ESW_OFFLOAD, align 4
  %30 = call i32 @MLX5_TC_FLAG(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @MLX5E_TC_FLOW_FLAG_ESWITCH, align 4
  %35 = call i64 @BIT(i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @NIC_OFFLOAD, align 4
  %41 = call i32 @MLX5_TC_FLAG(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @MLX5E_TC_FLOW_FLAG_NIC, align 4
  %46 = call i64 @BIT(i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %44, %38
  %50 = load i64, i64* %5, align 8
  %51 = load i64*, i64** %4, align 8
  store i64 %50, i64* %51, align 8
  ret void
}

declare dso_local i32 @MLX5_TC_FLAG(i32) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
