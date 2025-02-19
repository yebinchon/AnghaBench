; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8727_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8727_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NIG_REG_PORT_SWAP = common dso_local global i32 0, align 4
@NIG_REG_STRAP_OVERRIDE = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_8727_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_8727_hw_reset(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %9 = load %struct.link_params*, %struct.link_params** %4, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %8, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %13 = load i32, i32* @NIG_REG_PORT_SWAP, align 4
  %14 = call i64 @REG_RD(%struct.bnx2x* %12, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %16 = load i32, i32* @NIG_REG_STRAP_OVERRIDE, align 4
  %17 = call i64 @REG_RD(%struct.bnx2x* %15, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %2
  %24 = phi i1 [ false, %2 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = xor i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %28 = load i32, i32* @MISC_REGISTERS_GPIO_1, align 4
  %29 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %27, i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i64 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_set_gpio(%struct.bnx2x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
