; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_force_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_force_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@XMAC_CONFIG = common dso_local global i32 0, align 4
@XMAC_CONFIG_FORCE_LED_ON = common dso_local global i32 0, align 4
@BMAC_XIF_CONFIG = common dso_local global i32 0, align 4
@BMAC_XIF_CONFIG_LINK_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i32)* @niu_force_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_force_led(%struct.niu* %0, i32 %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @XMAC_CONFIG, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @XMAC_CONFIG_FORCE_LED_ON, align 4
  store i32 %16, i32* %7, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @BMAC_XIF_CONFIG, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @BMAC_XIF_CONFIG_LINK_LED, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @nr64_mac(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %34

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @nw64_mac(i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @nr64_mac(i32) #1

declare dso_local i32 @nw64_mac(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
