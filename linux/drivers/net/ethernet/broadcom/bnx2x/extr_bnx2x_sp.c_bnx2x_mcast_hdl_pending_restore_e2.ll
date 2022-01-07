; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_hdl_pending_restore_e2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_hdl_pending_restore_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_obj = type { i64 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i64, i32*)* }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_pending_mcast_cmd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_mcast_obj*, %struct.bnx2x_pending_mcast_cmd*, i32*)* @bnx2x_mcast_hdl_pending_restore_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_mcast_hdl_pending_restore_e2(%struct.bnx2x* %0, %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_pending_mcast_cmd* %2, i32* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_mcast_obj*, align 8
  %7 = alloca %struct.bnx2x_pending_mcast_cmd*, align 8
  %8 = alloca i32*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_mcast_obj** %6, align 8
  store %struct.bnx2x_pending_mcast_cmd* %2, %struct.bnx2x_pending_mcast_cmd** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %9, i32 0, i32 0
  %11 = load i64 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i64, i32*)*, i64 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i64, i32*)** %10, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %13 = bitcast %struct.bnx2x* %12 to %struct.bnx2x.0*
  %14 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %15 = load %struct.bnx2x_pending_mcast_cmd*, %struct.bnx2x_pending_mcast_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.bnx2x_pending_mcast_cmd, %struct.bnx2x_pending_mcast_cmd* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i64 %11(%struct.bnx2x.0* %13, %struct.bnx2x_mcast_obj* %14, i64 %18, i32* %19)
  %21 = load %struct.bnx2x_pending_mcast_cmd*, %struct.bnx2x_pending_mcast_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.bnx2x_pending_mcast_cmd, %struct.bnx2x_pending_mcast_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.bnx2x_pending_mcast_cmd*, %struct.bnx2x_pending_mcast_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.bnx2x_pending_mcast_cmd, %struct.bnx2x_pending_mcast_cmd* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load %struct.bnx2x_pending_mcast_cmd*, %struct.bnx2x_pending_mcast_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.bnx2x_pending_mcast_cmd, %struct.bnx2x_pending_mcast_cmd* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %38

32:                                               ; preds = %4
  %33 = load %struct.bnx2x_pending_mcast_cmd*, %struct.bnx2x_pending_mcast_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.bnx2x_pending_mcast_cmd, %struct.bnx2x_pending_mcast_cmd* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %32, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
