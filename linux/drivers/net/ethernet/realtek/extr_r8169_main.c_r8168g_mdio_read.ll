; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168g_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168g_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@OCP_STD_PHY_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, i32)* @r8168g_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8168g_mdio_read(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 31
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %10 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OCP_STD_PHY_BASE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %20

15:                                               ; preds = %8
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %17 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 4
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i32 [ 0, %14 ], [ %19, %15 ]
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %24 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OCP_STD_PHY_BASE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 16
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %34 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %35, %37
  %39 = call i32 @r8168_phy_ocp_read(%struct.rtl8169_private* %32, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @r8168_phy_ocp_read(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
