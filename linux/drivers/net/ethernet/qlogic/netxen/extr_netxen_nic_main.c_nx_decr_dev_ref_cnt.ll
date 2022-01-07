; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_nx_decr_dev_ref_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_nx_decr_dev_ref_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@NX_CRB_DEV_REF_COUNT = common dso_local global i32 0, align 4
@NX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@NX_DEV_FAILED = common dso_local global i32 0, align 4
@NX_DEV_COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @nx_decr_dev_ref_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_decr_dev_ref_cnt(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %6 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %7 = call i64 @netxen_api_lock(%struct.netxen_adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %14 = load i32, i32* @NX_CRB_DEV_REF_COUNT, align 4
  %15 = call i32 @NXRD32(%struct.netxen_adapter* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %21 = load i32, i32* @NX_CRB_DEV_REF_COUNT, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = call i32 @NXWR32(%struct.netxen_adapter* %20, i32 %21, i32 %23)
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %26 = load i32, i32* @NX_CRB_DEV_STATE, align 4
  %27 = call i32 @NXRD32(%struct.netxen_adapter* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %12
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NX_DEV_FAILED, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %36 = load i32, i32* @NX_CRB_DEV_STATE, align 4
  %37 = load i32, i32* @NX_DEV_COLD, align 4
  %38 = call i32 @NXWR32(%struct.netxen_adapter* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %30, %12
  %40 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %41 = call i32 @netxen_api_unlock(%struct.netxen_adapter* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @netxen_api_lock(%struct.netxen_adapter*) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @netxen_api_unlock(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
