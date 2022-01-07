; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_ctl_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_ctl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32 }
%struct.cnic_ctl_info = type { i32 }
%struct.cnic_ops = type { i32 (i32, %struct.cnic_ctl_info.0*)* }
%struct.cnic_ctl_info.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.cnic_ctl_info*)* @bnx2x_cnic_ctl_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_cnic_ctl_send(%struct.bnx2x* %0, %struct.cnic_ctl_info* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.cnic_ctl_info*, align 8
  %5 = alloca %struct.cnic_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.cnic_ctl_info* %1, %struct.cnic_ctl_info** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = call i32 @lockdep_is_held(i32* %14)
  %16 = call %struct.cnic_ops* @rcu_dereference_protected(i32 %12, i32 %15)
  store %struct.cnic_ops* %16, %struct.cnic_ops** %5, align 8
  %17 = load %struct.cnic_ops*, %struct.cnic_ops** %5, align 8
  %18 = icmp ne %struct.cnic_ops* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.cnic_ops*, %struct.cnic_ops** %5, align 8
  %21 = getelementptr inbounds %struct.cnic_ops, %struct.cnic_ops* %20, i32 0, i32 0
  %22 = load i32 (i32, %struct.cnic_ctl_info.0*)*, i32 (i32, %struct.cnic_ctl_info.0*)** %21, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cnic_ctl_info*, %struct.cnic_ctl_info** %4, align 8
  %27 = bitcast %struct.cnic_ctl_info* %26 to %struct.cnic_ctl_info.0*
  %28 = call i32 %22(i32 %25, %struct.cnic_ctl_info.0* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %19, %2
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cnic_ops* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
