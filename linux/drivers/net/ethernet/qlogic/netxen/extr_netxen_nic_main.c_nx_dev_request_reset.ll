; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_nx_dev_request_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_nx_dev_request_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@NX_DEV_NEED_RESET = common dso_local global i64 0, align 8
@NX_DEV_FAILED = common dso_local global i64 0, align 8
@NX_DEV_INITALIZING = common dso_local global i64 0, align 8
@NX_DEV_NEED_AER = common dso_local global i64 0, align 8
@NETXEN_FW_RESET_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nx_dev_request_reset(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %9 = call i64 @netxen_api_lock(%struct.netxen_adapter* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %15 = load i32, i32* @NX_CRB_DEV_STATE, align 4
  %16 = call i64 @NXRD32(%struct.netxen_adapter* %14, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @NX_DEV_NEED_RESET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @NX_DEV_FAILED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %13
  store i32 0, i32* %5, align 4
  br label %44

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @NX_DEV_INITALIZING, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @NX_DEV_NEED_AER, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %35 = load i32, i32* @NX_CRB_DEV_STATE, align 4
  %36 = load i64, i64* @NX_DEV_NEED_RESET, align 8
  %37 = call i32 @NXWR32(%struct.netxen_adapter* %34, i32 %35, i64 %36)
  %38 = load i32, i32* @NETXEN_FW_RESET_OWNER, align 4
  %39 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %33, %29, %25
  br label %44

44:                                               ; preds = %43, %24
  %45 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %46 = call i32 @netxen_api_unlock(%struct.netxen_adapter* %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @netxen_api_lock(%struct.netxen_adapter*) #1

declare dso_local i64 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i64) #1

declare dso_local i32 @netxen_api_unlock(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
