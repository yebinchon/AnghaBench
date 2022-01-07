; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_neighs_update_rauhtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_neighs_update_rauhtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_RAUHTD_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_REG_RAUHTD_TYPE_IPV4 = common dso_local global i32 0, align 4
@MLXSW_REG_RAUHTD_TYPE_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_router_neighs_update_rauhtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_router_neighs_update_rauhtd(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %7 = load i32, i32* @MLXSW_REG_RAUHTD_LEN, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kmalloc(i32 %7, i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load i32, i32* @MLXSW_REG_RAUHTD_TYPE_IPV4, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @__mlxsw_sp_router_neighs_update_rauhtd(%struct.mlxsw_sp* %17, i8* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %30

24:                                               ; preds = %15
  %25 = load i32, i32* @MLXSW_REG_RAUHTD_TYPE_IPV6, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @__mlxsw_sp_router_neighs_update_rauhtd(%struct.mlxsw_sp* %26, i8* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %24, %23
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @kfree(i8* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @__mlxsw_sp_router_neighs_update_rauhtd(%struct.mlxsw_sp*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
