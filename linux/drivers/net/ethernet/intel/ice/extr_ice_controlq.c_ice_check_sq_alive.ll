; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_check_sq_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_check_sq_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_ctl_q_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_check_sq_alive(%struct.ice_hw* %0, %struct.ice_ctl_q_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_ctl_q_info*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_ctl_q_info* %1, %struct.ice_ctl_q_info** %5, align 8
  %6 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %7 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %2
  %12 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %13 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %11
  %18 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %19 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %25 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %26 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @rd32(%struct.ice_hw* %24, i64 %28)
  %30 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %31 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %35 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %33, %37
  %39 = and i32 %29, %38
  %40 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %41 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %44 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %42, %46
  %48 = icmp eq i32 %39, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %17, %11, %2
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @rd32(%struct.ice_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
