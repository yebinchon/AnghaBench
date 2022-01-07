; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_set_vf_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_set_vf_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_vf_link_state(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca %struct.bnx2x_virtf*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %10)
  store %struct.bnx2x* %11, %struct.bnx2x** %8, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x* %12, i32 %13)
  store %struct.bnx2x_virtf* %14, %struct.bnx2x_virtf** %9, align 8
  %15 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %16 = icmp ne %struct.bnx2x_virtf* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %34

20:                                               ; preds = %3
  %21 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %22 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %34

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %30 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @bnx2x_iov_link_update_vf(%struct.bnx2x* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %26, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_iov_link_update_vf(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
