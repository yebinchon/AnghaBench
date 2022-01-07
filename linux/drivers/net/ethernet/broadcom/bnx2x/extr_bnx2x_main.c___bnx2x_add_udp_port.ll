; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c___bnx2x_add_udp_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c___bnx2x_add_udp_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.bnx2x_udp_tunnel* }
%struct.bnx2x_udp_tunnel = type { i32, i64 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"UDP tunnel [%d] -  destination port limit reached\0A\00", align 1
@BNX2X_SP_RTNL_CHANGE_UDP_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i64, i32)* @__bnx2x_add_udp_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnx2x_add_udp_port(%struct.bnx2x* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_udp_tunnel*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 1
  %10 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %10, i64 %12
  store %struct.bnx2x_udp_tunnel* %13, %struct.bnx2x_udp_tunnel** %7, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netif_running(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %21 = call i32 @IS_PF(%struct.bnx2x* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %3
  br label %62

28:                                               ; preds = %23
  %29 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %30 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %35 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %41 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %62

44:                                               ; preds = %33, %28
  %45 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %46 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @BNX2X_MSG_SP, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @DP(i32 %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %62

53:                                               ; preds = %44
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %56 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %58 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %60 = load i32, i32* @BNX2X_SP_RTNL_CHANGE_UDP_PORT, align 4
  %61 = call i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %53, %49, %39, %27
  ret void
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @IS_PF(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
