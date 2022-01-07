; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_setapp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_setapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i64, i64, i32 }

@DCB_APP_IDTYPE_ETHTYPE = common dso_local global i64 0, align 8
@DCB_APP_IDTYPE_PORTNUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i32, i64)* @cxgb4_setapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_setapp(%struct.net_device* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dcb_app, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %11, i32 0, i32 1
  %15 = load i64, i64* %9, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %11, i32 0, i32 2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @DCB_APP_IDTYPE_ETHTYPE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @DCB_APP_IDTYPE_PORTNUM, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %48

28:                                               ; preds = %21, %4
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @DCB_APP_IDTYPE_ETHTYPE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i64 [ %34, %33 ], [ 3, %35 ]
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @__cxgb4_setapp(%struct.net_device* %29, i64 %37, i32 %38, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %36
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = call i32 @dcb_setapp(%struct.net_device* %46, %struct.dcb_app* %11)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %43, %25
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @__cxgb4_setapp(%struct.net_device*, i64, i32, i64) #1

declare dso_local i32 @dcb_setapp(%struct.net_device*, %struct.dcb_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
