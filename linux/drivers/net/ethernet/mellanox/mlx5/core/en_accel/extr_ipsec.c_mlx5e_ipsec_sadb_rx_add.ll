; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_ipsec_sadb_rx_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_ipsec_sadb_rx_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_ipsec_sa_entry = type { i32, i32, %struct.mlx5e_ipsec* }
%struct.mlx5e_ipsec = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_ipsec_sa_entry*)* @mlx5e_ipsec_sadb_rx_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_ipsec_sadb_rx_add(%struct.mlx5e_ipsec_sa_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_ipsec_sa_entry*, align 8
  %4 = alloca %struct.mlx5e_ipsec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5e_ipsec_sa_entry* %0, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %7 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %7, i32 0, i32 2
  %9 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %8, align 8
  store %struct.mlx5e_ipsec* %9, %struct.mlx5e_ipsec** %4, align 8
  %10 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %10, i32 0, i32 2
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @ida_simple_get(i32* %11, i32 1, i32 0, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %29, i32 0, i32 1
  %31 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hash_add_rcu(i32 %28, i32* %30, i32 %33)
  %35 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %18, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hash_add_rcu(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
