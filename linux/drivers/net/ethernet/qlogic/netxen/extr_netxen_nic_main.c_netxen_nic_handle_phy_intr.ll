; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_handle_phy_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_handle_phy_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CRB_XG_STATE_P3 = common dso_local global i32 0, align 4
@XG_LINK_UP_P3 = common dso_local global i32 0, align 4
@CRB_XG_STATE = common dso_local global i32 0, align 4
@XG_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_nic_handle_phy_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_nic_handle_phy_intr(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %6 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @NX_IS_REVISION_P3(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %17 = load i32, i32* @CRB_XG_STATE_P3, align 4
  %18 = call i32 @NXRD32(%struct.netxen_adapter* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @XG_LINK_STATE_P3(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @XG_LINK_UP_P3, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %42

29:                                               ; preds = %1
  %30 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %31 = load i32, i32* @CRB_XG_STATE, align 4
  %32 = call i32 @NXRD32(%struct.netxen_adapter* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, 8
  %36 = ashr i32 %33, %35
  %37 = and i32 %36, 255
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @XG_LINK_UP, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %29, %15
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @netxen_advert_link_change(%struct.netxen_adapter* %43, i32 %44)
  ret void
}

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @XG_LINK_STATE_P3(i32, i32) #1

declare dso_local i32 @netxen_advert_link_change(%struct.netxen_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
