; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_adj_grp_size_round_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_adj_grp_size_round_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @mlxsw_sp_adj_grp_size_round_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_adj_grp_size_round_down(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp uge i32 %5, 4096
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  store i32 4096, i32* %8, align 4
  br label %27

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp uge i32 %10, 2048
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  store i32 2048, i32* %13, align 4
  br label %26

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = icmp uge i32 %15, 1024
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  store i32 1024, i32* %18, align 4
  br label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = icmp uge i32 %20, 512
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32*, i32** %3, align 8
  store i32 512, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %19
  br label %25

25:                                               ; preds = %24, %17
  br label %26

26:                                               ; preds = %25, %12
  br label %27

27:                                               ; preds = %26, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
