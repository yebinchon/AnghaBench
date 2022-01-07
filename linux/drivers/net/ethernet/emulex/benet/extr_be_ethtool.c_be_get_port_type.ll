; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_port_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_port_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PORT_TP = common dso_local global i32 0, align 4
@SFP_PLUS_COPPER_CABLE = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@QSFP_PLUS_CR4_CABLE = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_get_port_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_port_type(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %4 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %40 [
    i32 134, label %8
    i32 133, label %8
    i32 129, label %8
    i32 130, label %10
    i32 132, label %23
    i32 128, label %36
    i32 131, label %36
    i32 135, label %38
  ]

8:                                                ; preds = %1, %1, %1
  %9 = load i32, i32* @PORT_TP, align 4
  store i32 %9, i32* %3, align 4
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SFP_PLUS_COPPER_CABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @PORT_DA, align 4
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %10
  %21 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %18
  br label %42

23:                                               ; preds = %1
  %24 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @QSFP_PLUS_CR4_CABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @PORT_DA, align 4
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %42

36:                                               ; preds = %1, %1
  %37 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %1
  %39 = load i32, i32* @PORT_TP, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @PORT_OTHER, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %38, %36, %35, %22, %8
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
