; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_force_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_force_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@B53_PORT_OVERRIDE_CTRL = common dso_local global i32 0, align 4
@PORT_OVERRIDE_EN = common dso_local global i32 0, align 4
@GMII_PO_EN = common dso_local global i32 0, align 4
@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@PORT_OVERRIDE_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b53_device*, i32, i32)* @b53_force_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_force_link(%struct.b53_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %12 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @PORT_OVERRIDE_EN, align 4
  store i32 %17, i32* %8, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @B53_GMII_PORT_OVERRIDE_CTRL(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @GMII_PO_EN, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %24 = load i32, i32* @B53_CTRL_PAGE, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @b53_read8(%struct.b53_device* %23, i32 %24, i32 %25, i32* %7)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @PORT_OVERRIDE_LINK, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %41

36:                                               ; preds = %22
  %37 = load i32, i32* @PORT_OVERRIDE_LINK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %43 = load i32, i32* @B53_CTRL_PAGE, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @b53_write8(%struct.b53_device* %42, i32 %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @B53_GMII_PORT_OVERRIDE_CTRL(i32) #1

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
