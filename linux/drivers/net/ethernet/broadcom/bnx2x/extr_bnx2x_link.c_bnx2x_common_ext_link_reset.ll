; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_common_ext_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_common_ext_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MISC_REGISTERS_GPIO_1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_LOW = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_2 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"reset external PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_common_ext_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_common_ext_link_reset(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %7 = load %struct.link_params*, %struct.link_params** %4, align 8
  %8 = getelementptr inbounds %struct.link_params, %struct.link_params* %7, i32 0, i32 1
  %9 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  store %struct.bnx2x* %9, %struct.bnx2x** %5, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %11 = call i64 @CHIP_IS_E2(%struct.bnx2x* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %15 = call i32 @BP_PATH(%struct.bnx2x* %14)
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.link_params*, %struct.link_params** %4, align 8
  %18 = getelementptr inbounds %struct.link_params, %struct.link_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %22 = load i32, i32* @MISC_REGISTERS_GPIO_1, align 4
  %23 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %27 = load i32, i32* @MISC_REGISTERS_GPIO_2, align 4
  %28 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @NETIF_MSG_LINK, align 4
  %32 = call i32 @DP(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_gpio(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
