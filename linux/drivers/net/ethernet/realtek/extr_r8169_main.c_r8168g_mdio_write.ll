; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168g_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168g_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@OCP_STD_PHY_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, i32, i32)* @r8168g_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8168g_mdio_write(%struct.rtl8169_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 31
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 4
  br label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @OCP_STD_PHY_BASE, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ]
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %20 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %40

21:                                               ; preds = %3
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCP_STD_PHY_BASE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 16
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %33 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 2
  %37 = add nsw i32 %34, %36
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @r8168_phy_ocp_write(%struct.rtl8169_private* %31, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %30, %17
  ret void
}

declare dso_local i32 @r8168_phy_ocp_write(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
