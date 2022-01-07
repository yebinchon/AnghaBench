; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_arfs_get_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_arfs_get_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arfs_table = type { i32 }
%struct.mlx5e_arfs_tables = type { %struct.arfs_table* }

@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@ARFS_IPV4_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@ARFS_IPV4_UDP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ARFS_IPV6_TCP = common dso_local global i64 0, align 8
@ARFS_IPV6_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arfs_table* (%struct.mlx5e_arfs_tables*, i64, i64)* @arfs_get_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arfs_table* @arfs_get_table(%struct.mlx5e_arfs_tables* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.arfs_table*, align 8
  %5 = alloca %struct.mlx5e_arfs_tables*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mlx5e_arfs_tables* %0, %struct.mlx5e_arfs_tables** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @ETH_P_IP, align 4
  %10 = call i64 @htons(i32 %9)
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @IPPROTO_TCP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.mlx5e_arfs_tables*, %struct.mlx5e_arfs_tables** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5e_arfs_tables, %struct.mlx5e_arfs_tables* %17, i32 0, i32 0
  %19 = load %struct.arfs_table*, %struct.arfs_table** %18, align 8
  %20 = load i64, i64* @ARFS_IPV4_TCP, align 8
  %21 = getelementptr inbounds %struct.arfs_table, %struct.arfs_table* %19, i64 %20
  store %struct.arfs_table* %21, %struct.arfs_table** %4, align 8
  br label %68

22:                                               ; preds = %12, %3
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @ETH_P_IP, align 4
  %25 = call i64 @htons(i32 %24)
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @IPPROTO_UDP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.mlx5e_arfs_tables*, %struct.mlx5e_arfs_tables** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5e_arfs_tables, %struct.mlx5e_arfs_tables* %32, i32 0, i32 0
  %34 = load %struct.arfs_table*, %struct.arfs_table** %33, align 8
  %35 = load i64, i64* @ARFS_IPV4_UDP, align 8
  %36 = getelementptr inbounds %struct.arfs_table, %struct.arfs_table* %34, i64 %35
  store %struct.arfs_table* %36, %struct.arfs_table** %4, align 8
  br label %68

37:                                               ; preds = %27, %22
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @ETH_P_IPV6, align 4
  %40 = call i64 @htons(i32 %39)
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @IPPROTO_TCP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.mlx5e_arfs_tables*, %struct.mlx5e_arfs_tables** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5e_arfs_tables, %struct.mlx5e_arfs_tables* %47, i32 0, i32 0
  %49 = load %struct.arfs_table*, %struct.arfs_table** %48, align 8
  %50 = load i64, i64* @ARFS_IPV6_TCP, align 8
  %51 = getelementptr inbounds %struct.arfs_table, %struct.arfs_table* %49, i64 %50
  store %struct.arfs_table* %51, %struct.arfs_table** %4, align 8
  br label %68

52:                                               ; preds = %42, %37
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* @ETH_P_IPV6, align 4
  %55 = call i64 @htons(i32 %54)
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @IPPROTO_UDP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.mlx5e_arfs_tables*, %struct.mlx5e_arfs_tables** %5, align 8
  %63 = getelementptr inbounds %struct.mlx5e_arfs_tables, %struct.mlx5e_arfs_tables* %62, i32 0, i32 0
  %64 = load %struct.arfs_table*, %struct.arfs_table** %63, align 8
  %65 = load i64, i64* @ARFS_IPV6_UDP, align 8
  %66 = getelementptr inbounds %struct.arfs_table, %struct.arfs_table* %64, i64 %65
  store %struct.arfs_table* %66, %struct.arfs_table** %4, align 8
  br label %68

67:                                               ; preds = %57, %52
  store %struct.arfs_table* null, %struct.arfs_table** %4, align 8
  br label %68

68:                                               ; preds = %67, %61, %46, %31, %16
  %69 = load %struct.arfs_table*, %struct.arfs_table** %4, align 8
  ret %struct.arfs_table* %69
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
