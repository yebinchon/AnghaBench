; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_set_vf_start_tunn_update_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_set_vf_start_tunn_update_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_tunnel_info = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_vf_set_vf_start_tunn_update_param(%struct.qed_tunnel_info* %0) #0 {
  %2 = alloca %struct.qed_tunnel_info*, align 8
  store %struct.qed_tunnel_info* %0, %struct.qed_tunnel_info** %2, align 8
  %3 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %4 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %3, i32 0, i32 6
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %10 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %14 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %20 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %24 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %30 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %34 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %40 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %44 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %50 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %54 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %2, align 8
  %56 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
