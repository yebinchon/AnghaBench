; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_mqprio_qopt = type { i32, i32 }

@TC_SETUP_QDISC_MQPRIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_MQPRIO_HW_OFFLOAD_TCS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*)* @netcp_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netcp_setup_tc(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_mqprio_qopt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.tc_mqprio_qopt*
  store %struct.tc_mqprio_qopt* %12, %struct.tc_mqprio_qopt** %8, align 8
  %13 = call i32 (...) @ASSERT_RTNL()
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TC_SETUP_QDISC_MQPRIO, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load i32, i32* @TC_MQPRIO_HW_OFFLOAD_TCS, align 4
  %22 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %8, align 8
  %23 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %8, align 8
  %25 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 1
  br i1 %30, label %37, label %31

31:                                               ; preds = %20
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %20
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %64

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @netdev_set_num_tc(%struct.net_device* %44, i32 %45)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %56, %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @netdev_set_tc_queue(%struct.net_device* %52, i32 %53, i32 1, i32 %54)
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %47

59:                                               ; preds = %47
  br label %63

60:                                               ; preds = %40
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i32 @netdev_reset_tc(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %60, %59
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %37, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @netdev_reset_tc(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
