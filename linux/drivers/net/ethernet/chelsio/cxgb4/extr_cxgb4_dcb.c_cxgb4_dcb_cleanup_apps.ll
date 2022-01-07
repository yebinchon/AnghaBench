; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_dcb_cleanup_apps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_dcb_cleanup_apps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { %struct.port_dcb_info, %struct.adapter* }
%struct.port_dcb_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.adapter = type { i32 }
%struct.dcb_app = type { i32, i64, i64 }

@CXGB4_MAX_DCBX_APP_SUPPORTED = common dso_local global i32 0, align 4
@FW_PORT_DCB_VER_IEEE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Failed DCB Clear %s Application Priority: sel=%d, prot=%d, , err=%d\0A\00", align 1
@dcb_ver_array = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cxgb4_dcb_cleanup_apps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_dcb_cleanup_apps(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.port_dcb_info*, align 8
  %6 = alloca %struct.dcb_app, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %9)
  store %struct.port_info* %10, %struct.port_info** %3, align 8
  %11 = load %struct.port_info*, %struct.port_info** %3, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 1
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %4, align 8
  %14 = load %struct.port_info*, %struct.port_info** %3, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 0
  store %struct.port_dcb_info* %15, %struct.port_dcb_info** %5, align 8
  %16 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %6, i32 0, i32 2
  store i64 0, i64* %16, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %106, %1
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CXGB4_MAX_DCBX_APP_SUPPORTED, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %109

21:                                               ; preds = %17
  %22 = load %struct.port_dcb_info*, %struct.port_dcb_info** %5, align 8
  %23 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %109

32:                                               ; preds = %21
  %33 = load %struct.port_dcb_info*, %struct.port_dcb_info** %5, align 8
  %34 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %6, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = load %struct.port_dcb_info*, %struct.port_dcb_info** %5, align 8
  %43 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FW_PORT_DCB_VER_IEEE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %32
  %48 = load %struct.port_dcb_info*, %struct.port_dcb_info** %5, align 8
  %49 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %6, i32 0, i32 2
  store i64 %55, i64* %56, align 8
  %57 = load %struct.port_dcb_info*, %struct.port_dcb_info** %5, align 8
  %58 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %6, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = call i32 @dcb_ieee_delapp(%struct.net_device* %67, %struct.dcb_app* %6)
  store i32 %68, i32* %8, align 4
  br label %85

69:                                               ; preds = %32
  %70 = load %struct.port_dcb_info*, %struct.port_dcb_info** %5, align 8
  %71 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %6, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = call i32 @dcb_setapp(%struct.net_device* %83, %struct.dcb_app* %6)
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %69, %47
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load %struct.adapter*, %struct.adapter** %4, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** @dcb_ver_array, align 8
  %93 = load %struct.port_dcb_info*, %struct.port_dcb_info** %5, align 8
  %94 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %6, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 0, %102
  %104 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %99, i64 %101, i32 %103)
  br label %109

105:                                              ; preds = %85
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %17

109:                                              ; preds = %88, %31, %17
  ret void
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @dcb_ieee_delapp(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @dcb_setapp(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
