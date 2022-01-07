; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_ieee_setapp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_ieee_setapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i64, i32, i64 }

@CXGB4_DCB_FW_APP_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE_8021QAZ_APP_SEL_ETHERTYPE = common dso_local global i64 0, align 8
@IEEE_8021QAZ_APP_SEL_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @cxgb4_ieee_setapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_ieee_setapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
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
  br label %64

14:                                               ; preds = %2
  %15 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %16 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %21 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %19
  %28 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %29 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IEEE_8021QAZ_APP_SEL_ETHERTYPE, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %35 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IEEE_8021QAZ_APP_SEL_ANY, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %33, %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %33
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %45 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 1
  %48 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %49 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %52 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 1, %53
  %55 = call i32 @__cxgb4_setapp(%struct.net_device* %43, i64 %47, i64 %50, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %42
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %63 = call i32 @dcb_ieee_setapp(%struct.net_device* %61, %struct.dcb_app* %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %58, %39, %24, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @cxgb4_ieee_negotiation_complete(%struct.net_device*, i32) #1

declare dso_local i32 @__cxgb4_setapp(%struct.net_device*, i64, i64, i32) #1

declare dso_local i32 @dcb_ieee_setapp(%struct.net_device*, %struct.dcb_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
