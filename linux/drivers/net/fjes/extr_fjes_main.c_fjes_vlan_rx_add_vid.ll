; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fjes_adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @fjes_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fjes_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.fjes_adapter* %11, %struct.fjes_adapter** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %51, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.fjes_adapter*, %struct.fjes_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %12
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.fjes_adapter*, %struct.fjes_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %51

27:                                               ; preds = %19
  %28 = load %struct.fjes_adapter*, %struct.fjes_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @fjes_hw_check_vlan_id(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %27
  %40 = load %struct.fjes_adapter*, %struct.fjes_adapter** %7, align 8
  %41 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @fjes_hw_set_vlan_id(i32* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %39, %27
  br label %51

51:                                               ; preds = %50, %26
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %12

54:                                               ; preds = %12
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = sub nsw i32 0, %59
  br label %61

61:                                               ; preds = %58, %57
  %62 = phi i32 [ 0, %57 ], [ %60, %58 ]
  ret i32 %62
}

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fjes_hw_check_vlan_id(i32*, i32) #1

declare dso_local i32 @fjes_hw_set_vlan_id(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
