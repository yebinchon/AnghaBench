; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8483x_enable_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8483x_enable_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@PHY848xx_CMD_SET_EEE_MODE = common dso_local global i32 0, align 4
@PHY84833_MB_PROCESS1 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"EEE enable failed.\0A\00", align 1
@SHMEM_EEE_10G_ADV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_8483x_enable_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8483x_enable_eee(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca %struct.link_vars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x*, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %5, align 8
  store %struct.link_params* %1, %struct.link_params** %6, align 8
  store %struct.link_vars* %2, %struct.link_vars** %7, align 8
  %11 = load %struct.link_params*, %struct.link_params** %6, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %9, align 8
  store i32 1, i32* %10, align 4
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %15 = load %struct.link_params*, %struct.link_params** %6, align 8
  %16 = load i32, i32* @PHY848xx_CMD_SET_EEE_MODE, align 4
  %17 = load i32, i32* @PHY84833_MB_PROCESS1, align 4
  %18 = call i32 @bnx2x_848xx_cmd_hdlr(%struct.bnx2x_phy* %14, %struct.link_params* %15, i32 %16, i32* %10, i32 1, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @NETIF_MSG_LINK, align 4
  %23 = call i32 @DP(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %27 = load %struct.link_params*, %struct.link_params** %6, align 8
  %28 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %29 = load i32, i32* @SHMEM_EEE_10G_ADV, align 4
  %30 = call i32 @bnx2x_eee_advertise(%struct.bnx2x_phy* %26, %struct.link_params* %27, %struct.link_vars* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @bnx2x_848xx_cmd_hdlr(%struct.bnx2x_phy*, %struct.link_params*, i32, i32*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_eee_advertise(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
