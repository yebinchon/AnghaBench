; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_read_ula_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_read_ula_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NETXEN_ULA_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ULA adapter\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"non ULA adapter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_read_ula_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_read_ula_info(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %4 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %11 = load i32, i32* @NETXEN_ULA_KEY, align 4
  %12 = call i32 @NXRD32(%struct.netxen_adapter* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %26 [
    i32 128, label %14
    i32 129, label %20
  ]

14:                                               ; preds = %9
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_info(i32* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %27

20:                                               ; preds = %9
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %27

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %26, %20, %14
  br label %28

28:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
