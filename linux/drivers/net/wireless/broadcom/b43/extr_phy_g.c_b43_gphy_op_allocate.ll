; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_op_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_op_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_txpower_lo_control* }
%struct.b43_txpower_lo_control = type { %struct.b43_txpower_lo_control* }
%struct.b43_phy_g = type { %struct.b43_phy_g* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_gphy_op_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_gphy_op_allocate(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca %struct.b43_txpower_lo_control*, align 8
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.b43_txpower_lo_control* @kzalloc(i32 8, i32 %7)
  %9 = bitcast %struct.b43_txpower_lo_control* %8 to %struct.b43_phy_g*
  store %struct.b43_phy_g* %9, %struct.b43_phy_g** %4, align 8
  %10 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %11 = icmp ne %struct.b43_phy_g* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %17 = bitcast %struct.b43_phy_g* %16 to %struct.b43_txpower_lo_control*
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.b43_txpower_lo_control* %17, %struct.b43_txpower_lo_control** %20, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.b43_txpower_lo_control* @kzalloc(i32 8, i32 %21)
  store %struct.b43_txpower_lo_control* %22, %struct.b43_txpower_lo_control** %5, align 8
  %23 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %24 = icmp ne %struct.b43_txpower_lo_control* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %42

28:                                               ; preds = %15
  %29 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %30 = bitcast %struct.b43_txpower_lo_control* %29 to %struct.b43_phy_g*
  %31 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %32 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %31, i32 0, i32 0
  store %struct.b43_phy_g* %30, %struct.b43_phy_g** %32, align 8
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = call i32 @b43_gphy_init_tssi2dbm_table(%struct.b43_wldev* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %39

38:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %48

39:                                               ; preds = %37
  %40 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %41 = call i32 @kfree(%struct.b43_txpower_lo_control* %40)
  br label %42

42:                                               ; preds = %39, %25
  %43 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %44 = bitcast %struct.b43_phy_g* %43 to %struct.b43_txpower_lo_control*
  %45 = call i32 @kfree(%struct.b43_txpower_lo_control* %44)
  br label %46

46:                                               ; preds = %42, %12
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %38
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.b43_txpower_lo_control* @kzalloc(i32, i32) #1

declare dso_local i32 @b43_gphy_init_tssi2dbm_table(%struct.b43_wldev*) #1

declare dso_local i32 @kfree(%struct.b43_txpower_lo_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
