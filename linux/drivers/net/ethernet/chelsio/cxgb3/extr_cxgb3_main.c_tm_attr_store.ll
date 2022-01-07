; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_tm_attr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_tm_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i64, i32)* @tm_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tm_attr_store(%struct.device* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.port_info*, align 8
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_net_dev(%struct.device* %14)
  %16 = call %struct.port_info* @netdev_priv(i32 %15)
  store %struct.port_info* %16, %struct.port_info** %10, align 8
  %17 = load %struct.port_info*, %struct.port_info** %10, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 0
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %11, align 8
  %20 = load i32, i32* @CAP_NET_ADMIN, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* @EPERM, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %52

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @kstrtouint(i8* %27, i32 0, i32* %12)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* %13, align 8
  store i64 %32, i64* %5, align 8
  br label %52

33:                                               ; preds = %26
  %34 = load i32, i32* %12, align 4
  %35 = icmp ugt i32 %34, 10000000
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %52

39:                                               ; preds = %33
  %40 = call i32 (...) @rtnl_lock()
  %41 = load %struct.adapter*, %struct.adapter** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @t3_config_sched(%struct.adapter* %41, i32 %42, i32 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %47, %39
  %50 = call i32 (...) @rtnl_unlock()
  %51 = load i64, i64* %13, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %49, %36, %31, %23
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @t3_config_sched(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
