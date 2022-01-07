; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_ieee_getapp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_ieee_getapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i64, i64, i64 }

@CXGB4_DCB_FW_APP_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @cxgb4_ieee_getapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_ieee_getapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcb_app*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = load i32, i32* @CXGB4_DCB_FW_APP_ID, align 4
  %9 = call i32 @cxgb4_ieee_negotiation_complete(%struct.net_device* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %16 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %21 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %19
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %30 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  %33 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %34 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @__cxgb4_getapp(%struct.net_device* %28, i64 %32, i64 %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %42 = call i32 @dcb_ieee_getapp_mask(%struct.net_device* %40, %struct.dcb_app* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %27
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @ffs(i32 %44)
  %46 = sub nsw i64 %45, 1
  %47 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %48 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %24, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @cxgb4_ieee_negotiation_complete(%struct.net_device*, i32) #1

declare dso_local i32 @__cxgb4_getapp(%struct.net_device*, i64, i64, i32) #1

declare dso_local i32 @dcb_ieee_getapp_mask(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i64 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
