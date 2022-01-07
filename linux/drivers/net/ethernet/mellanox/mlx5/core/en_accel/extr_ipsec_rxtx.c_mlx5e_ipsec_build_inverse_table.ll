; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_build_inverse_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_build_inverse_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mlx5e_ipsec_inverse_table = common dso_local global i32* null, align 8
@MAX_LSO_MSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_ipsec_build_inverse_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i32 @htons(i32 65535)
  %4 = load i32*, i32** @mlx5e_ipsec_inverse_table, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %3, i32* %5, align 4
  store i64 2, i64* %2, align 8
  br label %6

6:                                                ; preds = %19, %0
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @MAX_LSO_MSS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @div_u64(i64 4294967296, i64 %11)
  %13 = ashr i32 %12, 16
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @htons(i32 %14)
  %16 = load i32*, i32** @mlx5e_ipsec_inverse_table, align 8
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  br label %19

19:                                               ; preds = %10
  %20 = load i64, i64* %2, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %2, align 8
  br label %6

22:                                               ; preds = %6
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @div_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
