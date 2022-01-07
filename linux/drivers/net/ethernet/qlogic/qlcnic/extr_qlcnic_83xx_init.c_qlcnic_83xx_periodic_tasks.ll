; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_periodic_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_periodic_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@QLCNIC_ADD_VXLAN_PORT = common dso_local global i32 0, align 4
@QLCNIC_DEL_VXLAN_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_83xx_periodic_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_periodic_tasks(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %3 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %10 = call i32 @qlcnic_prune_lb_filters(%struct.qlcnic_adapter* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @QLCNIC_ADD_VXLAN_PORT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %11
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %20 = call i64 @qlcnic_set_vxlan_port(%struct.qlcnic_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %59

23:                                               ; preds = %18
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %25 = call i64 @qlcnic_set_vxlan_parsing(%struct.qlcnic_adapter* %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %59

28:                                               ; preds = %23
  %29 = load i32, i32* @QLCNIC_ADD_VXLAN_PORT, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %59

35:                                               ; preds = %11
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @QLCNIC_DEL_VXLAN_PORT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %44 = call i64 @qlcnic_set_vxlan_parsing(%struct.qlcnic_adapter* %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %59

47:                                               ; preds = %42
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @QLCNIC_DEL_VXLAN_PORT, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %47, %35
  br label %59

59:                                               ; preds = %22, %27, %46, %58, %28
  ret void
}

declare dso_local i32 @qlcnic_prune_lb_filters(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_set_vxlan_port(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_set_vxlan_parsing(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
