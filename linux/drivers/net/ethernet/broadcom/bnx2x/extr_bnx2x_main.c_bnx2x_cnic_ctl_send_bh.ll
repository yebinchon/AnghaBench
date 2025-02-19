; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_ctl_send_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_ctl_send_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32 }
%struct.cnic_ctl_info = type { i32 }
%struct.cnic_ops = type { i32 (i32, %struct.cnic_ctl_info.0*)* }
%struct.cnic_ctl_info.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.cnic_ctl_info*)* @bnx2x_cnic_ctl_send_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_cnic_ctl_send_bh(%struct.bnx2x* %0, %struct.cnic_ctl_info* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.cnic_ctl_info*, align 8
  %5 = alloca %struct.cnic_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.cnic_ctl_info* %1, %struct.cnic_ctl_info** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cnic_ops* @rcu_dereference(i32 %10)
  store %struct.cnic_ops* %11, %struct.cnic_ops** %5, align 8
  %12 = load %struct.cnic_ops*, %struct.cnic_ops** %5, align 8
  %13 = icmp ne %struct.cnic_ops* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.cnic_ops*, %struct.cnic_ops** %5, align 8
  %16 = getelementptr inbounds %struct.cnic_ops, %struct.cnic_ops* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.cnic_ctl_info.0*)*, i32 (i32, %struct.cnic_ctl_info.0*)** %16, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cnic_ctl_info*, %struct.cnic_ctl_info** %4, align 8
  %22 = bitcast %struct.cnic_ctl_info* %21 to %struct.cnic_ctl_info.0*
  %23 = call i32 %17(i32 %20, %struct.cnic_ctl_info.0* %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %14, %2
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cnic_ops* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
