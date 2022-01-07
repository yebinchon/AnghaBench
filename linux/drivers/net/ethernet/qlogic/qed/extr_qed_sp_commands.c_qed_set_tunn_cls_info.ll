; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_set_tunn_cls_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_set_tunn_cls_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_tunnel_info = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_tunnel_info*, %struct.qed_tunnel_info*)* @qed_set_tunn_cls_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_set_tunn_cls_info(%struct.qed_tunnel_info* %0, %struct.qed_tunnel_info* %1) #0 {
  %3 = alloca %struct.qed_tunnel_info*, align 8
  %4 = alloca %struct.qed_tunnel_info*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_tunnel_info* %0, %struct.qed_tunnel_info** %3, align 8
  store %struct.qed_tunnel_info* %1, %struct.qed_tunnel_info** %4, align 8
  %6 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %7 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %10 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 4
  %11 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %12 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %15 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %17 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @qed_tunn_clss_to_fw_clss(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %23 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %26 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qed_tunn_clss_to_fw_clss(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %32 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %35 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @qed_tunn_clss_to_fw_clss(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %41 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %44 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @qed_tunn_clss_to_fw_clss(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %50 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %53 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @qed_tunn_clss_to_fw_clss(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %3, align 8
  %59 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  ret void
}

declare dso_local i32 @qed_tunn_clss_to_fw_clss(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
