; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_init_function_ptrs_phy_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_init_function_ptrs_phy_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_phy_if = type { %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@xgbe_phy_init = common dso_local global i32 0, align 4
@xgbe_phy_exit = common dso_local global i32 0, align 4
@xgbe_phy_reset = common dso_local global i32 0, align 4
@xgbe_phy_start = common dso_local global i32 0, align 4
@xgbe_phy_stop = common dso_local global i32 0, align 4
@xgbe_phy_link_status = common dso_local global i32 0, align 4
@xgbe_phy_valid_speed = common dso_local global i32 0, align 4
@xgbe_phy_use_mode = common dso_local global i32 0, align 4
@xgbe_phy_set_mode = common dso_local global i32 0, align 4
@xgbe_phy_get_mode = common dso_local global i32 0, align 4
@xgbe_phy_switch_mode = common dso_local global i32 0, align 4
@xgbe_phy_cur_mode = common dso_local global i32 0, align 4
@xgbe_phy_an_mode = common dso_local global i32 0, align 4
@xgbe_phy_an_config = common dso_local global i32 0, align 4
@xgbe_phy_an_advertising = common dso_local global i32 0, align 4
@xgbe_phy_an_outcome = common dso_local global i32 0, align 4
@xgbe_phy_kr_training_pre = common dso_local global i32 0, align 4
@xgbe_phy_kr_training_post = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgbe_init_function_ptrs_phy_v1(%struct.xgbe_phy_if* %0) #0 {
  %2 = alloca %struct.xgbe_phy_if*, align 8
  %3 = alloca %struct.xgbe_phy_impl_if*, align 8
  store %struct.xgbe_phy_if* %0, %struct.xgbe_phy_if** %2, align 8
  %4 = load %struct.xgbe_phy_if*, %struct.xgbe_phy_if** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_phy_if, %struct.xgbe_phy_if* %4, i32 0, i32 0
  store %struct.xgbe_phy_impl_if* %5, %struct.xgbe_phy_impl_if** %3, align 8
  %6 = load i32, i32* @xgbe_phy_init, align 4
  %7 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %7, i32 0, i32 17
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @xgbe_phy_exit, align 4
  %10 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %11 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %10, i32 0, i32 16
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @xgbe_phy_reset, align 4
  %13 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %14 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %13, i32 0, i32 15
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @xgbe_phy_start, align 4
  %16 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %17 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %16, i32 0, i32 14
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @xgbe_phy_stop, align 4
  %19 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %20 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @xgbe_phy_link_status, align 4
  %22 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %23 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %22, i32 0, i32 12
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @xgbe_phy_valid_speed, align 4
  %25 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %26 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @xgbe_phy_use_mode, align 4
  %28 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %29 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @xgbe_phy_set_mode, align 4
  %31 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %32 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @xgbe_phy_get_mode, align 4
  %34 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %35 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @xgbe_phy_switch_mode, align 4
  %37 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %38 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @xgbe_phy_cur_mode, align 4
  %40 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %41 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @xgbe_phy_an_mode, align 4
  %43 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %44 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @xgbe_phy_an_config, align 4
  %46 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %47 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @xgbe_phy_an_advertising, align 4
  %49 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %50 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @xgbe_phy_an_outcome, align 4
  %52 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %53 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @xgbe_phy_kr_training_pre, align 4
  %55 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %56 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @xgbe_phy_kr_training_post, align 4
  %58 = load %struct.xgbe_phy_impl_if*, %struct.xgbe_phy_impl_if** %3, align 8
  %59 = getelementptr inbounds %struct.xgbe_phy_impl_if, %struct.xgbe_phy_impl_if* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
