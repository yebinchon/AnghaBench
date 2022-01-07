; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c___bnx2x_del_udp_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c___bnx2x_del_udp_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.bnx2x_udp_tunnel* }
%struct.bnx2x_udp_tunnel = type { i64, i64 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid UDP tunnel [%d] port\0A\00", align 1
@BNX2X_SP_RTNL_CHANGE_UDP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Deleted UDP tunnel [%d] port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i64, i32)* @__bnx2x_del_udp_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnx2x_del_udp_port(%struct.bnx2x* %0, i64 %1, i32 %2) #0 {
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
  %15 = call i32 @IS_PF(%struct.bnx2x* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %3
  br label %64

22:                                               ; preds = %17
  %23 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %24 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %29 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %22
  %34 = load i32, i32* @BNX2X_MSG_SP, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, i32, ...) @DP(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %64

37:                                               ; preds = %27
  %38 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %39 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %43 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %64

47:                                               ; preds = %37
  %48 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %7, align 8
  %49 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %51 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @netif_running(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = load i32, i32* @BNX2X_SP_RTNL_CHANGE_UDP_PORT, align 4
  %58 = call i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x* %56, i32 %57, i32 0)
  br label %64

59:                                               ; preds = %47
  %60 = load i32, i32* @BNX2X_MSG_SP, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 (i32, i8*, i32, ...) @DP(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %21, %33, %46, %59, %55
  ret void
}

declare dso_local i32 @IS_PF(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
