; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_set_forwarding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_set_forwarding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@B53_SWITCH_MODE = common dso_local global i32 0, align 4
@SM_SW_FWD_EN = common dso_local global i32 0, align 4
@B53_SWITCH_CTRL = common dso_local global i32 0, align 4
@B53_MII_DUMB_FWDG_EN = common dso_local global i32 0, align 4
@B53_IP_MULTICAST_CTRL = common dso_local global i32 0, align 4
@B53_UC_FWD_EN = common dso_local global i32 0, align 4
@B53_MC_FWD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b53_device*, i32)* @b53_set_forwarding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_set_forwarding(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %7 = load i32, i32* @B53_CTRL_PAGE, align 4
  %8 = load i32, i32* @B53_SWITCH_MODE, align 4
  %9 = call i32 @b53_read8(%struct.b53_device* %6, i32 %7, i32 %8, i32* %5)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @SM_SW_FWD_EN, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @SM_SW_FWD_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %23 = load i32, i32* @B53_CTRL_PAGE, align 4
  %24 = load i32, i32* @B53_SWITCH_MODE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @b53_write8(%struct.b53_device* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %28 = load i32, i32* @B53_CTRL_PAGE, align 4
  %29 = load i32, i32* @B53_SWITCH_CTRL, align 4
  %30 = call i32 @b53_read8(%struct.b53_device* %27, i32 %28, i32 %29, i32* %5)
  %31 = load i32, i32* @B53_MII_DUMB_FWDG_EN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %35 = load i32, i32* @B53_CTRL_PAGE, align 4
  %36 = load i32, i32* @B53_SWITCH_CTRL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @b53_write8(%struct.b53_device* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %40 = load i32, i32* @B53_CTRL_PAGE, align 4
  %41 = load i32, i32* @B53_IP_MULTICAST_CTRL, align 4
  %42 = call i32 @b53_read8(%struct.b53_device* %39, i32 %40, i32 %41, i32* %5)
  %43 = load i32, i32* @B53_UC_FWD_EN, align 4
  %44 = load i32, i32* @B53_MC_FWD_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %49 = load i32, i32* @B53_CTRL_PAGE, align 4
  %50 = load i32, i32* @B53_IP_MULTICAST_CTRL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @b53_write8(%struct.b53_device* %48, i32 %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
