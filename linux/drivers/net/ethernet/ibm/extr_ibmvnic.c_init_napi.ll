; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Adding napi[%d]\0A\00", align 1
@ibmvnic_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @init_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_napi(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %5 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32* @kcalloc(i32 %7, i32 4, i32 %8)
  %10 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %10, i32 0, i32 2
  store i32* %9, i32** %11, align 8
  %12 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %53

19:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @netdev_dbg(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* @ibmvnic_poll, align 4
  %42 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %43 = call i32 @netif_napi_add(i32 %34, i32* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %20

47:                                               ; preds = %20
  %48 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
