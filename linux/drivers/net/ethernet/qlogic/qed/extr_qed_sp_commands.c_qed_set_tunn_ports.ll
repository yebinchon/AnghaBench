; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_set_tunn_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_set_tunn_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_tunnel_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_tunnel_info*, %struct.qed_tunnel_info*)* @qed_set_tunn_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_set_tunn_ports(%struct.qed_tunnel_info* %0, %struct.qed_tunnel_info* %1) #0 {
  %3 = alloca %struct.qed_tunnel_info*, align 8
  %4 = alloca %struct.qed_tunnel_info*, align 8
  store %struct.qed_tunnel_info* %0, %struct.qed_tunnel_info** %3, align 8
  store %struct.qed_tunnel_info* %1, %struct.qed_tunnel_info** %4, align 8
  %5 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %6 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %10 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i64 %8, i64* %11, align 8
  %12 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %13 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %17 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 %15, i64* %18, align 8
  %19 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %20 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %26 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %30 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  br label %32

32:                                               ; preds = %24, %2
  %33 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %34 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %40 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %44 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  br label %46

46:                                               ; preds = %38, %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
