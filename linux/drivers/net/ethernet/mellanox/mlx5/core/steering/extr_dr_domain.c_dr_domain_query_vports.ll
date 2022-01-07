; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_dr_domain_query_vports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_dr_domain_query_vports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_esw_caps }
%struct.mlx5dr_cmd_vport_cap = type { i32, i64, i32, i32, i32 }
%struct.mlx5dr_esw_caps = type { i32, i32 }

@WIRE_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*)* @dr_domain_query_vports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_domain_query_vports(%struct.mlx5dr_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca %struct.mlx5dr_esw_caps*, align 8
  %5 = alloca %struct.mlx5dr_cmd_vport_cap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  %8 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store %struct.mlx5dr_esw_caps* %11, %struct.mlx5dr_esw_caps** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %35, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %13, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %12
  %22 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dr_domain_query_vport(%struct.mlx5dr_domain* %22, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %69

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %43, i64 %45
  store %struct.mlx5dr_cmd_vport_cap* %46, %struct.mlx5dr_cmd_vport_cap** %5, align 8
  %47 = load i32, i32* @WIRE_PORT, align 4
  %48 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.mlx5dr_esw_caps*, %struct.mlx5dr_esw_caps** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5dr_esw_caps, %struct.mlx5dr_esw_caps* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mlx5dr_esw_caps*, %struct.mlx5dr_esw_caps** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5dr_esw_caps, %struct.mlx5dr_esw_caps* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %38, %32
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @dr_domain_query_vport(%struct.mlx5dr_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
