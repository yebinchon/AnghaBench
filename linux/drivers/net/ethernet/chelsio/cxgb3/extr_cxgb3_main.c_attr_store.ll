; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_attr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type opaque

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i64, i64 (%struct.net_device*, i32)*, i32, i32)* @attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @attr_store(%struct.device* %0, i8* %1, i64 %2, i64 (%struct.net_device*, i32)* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64 (%struct.net_device*, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 (%struct.net_device*, i32)* %3, i64 (%struct.net_device*, i32)** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @CAP_NET_ADMIN, align 4
  %17 = call i32 @capable(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i64, i64* @EPERM, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %7, align 8
  br label %54

22:                                               ; preds = %6
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @kstrtouint(i8* %23, i32 0, i32* %15)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* %14, align 8
  store i64 %28, i64* %7, align 8
  br label %54

29:                                               ; preds = %22
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %7, align 8
  br label %54

40:                                               ; preds = %33
  %41 = call i32 (...) @rtnl_lock()
  %42 = load i64 (%struct.net_device*, i32)*, i64 (%struct.net_device*, i32)** %11, align 8
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = call %struct.net_device* @to_net_dev(%struct.device* %43)
  %45 = load i32, i32* %15, align 4
  %46 = call i64 %42(%struct.net_device* %44, i32 %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %14, align 8
  br label %51

51:                                               ; preds = %49, %40
  %52 = call i32 (...) @rtnl_unlock()
  %53 = load i64, i64* %14, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %51, %37, %27, %19
  %55 = load i64, i64* %7, align 8
  ret i64 %55
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.net_device* @to_net_dev(%struct.device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
