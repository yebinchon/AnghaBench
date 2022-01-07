; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pch_gbe_adapter = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@PCH_GBE_FRAME_SIZE_2048 = common dso_local global i32 0, align 4
@PCH_GBE_FRAME_SIZE_4096 = common dso_local global i32 0, align 4
@PCH_GBE_FRAME_SIZE_8192 = common dso_local global i32 0, align 4
@PCH_GBE_MAX_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"max_frame : %d  rx_buffer_len : %d  mtu : %d  max_frame_size : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @pch_gbe_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pch_gbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.pch_gbe_adapter* %11, %struct.pch_gbe_adapter** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ETH_HLEN, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @ETH_FCS_LEN, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PCH_GBE_FRAME_SIZE_2048, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @PCH_GBE_FRAME_SIZE_2048, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %53

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PCH_GBE_FRAME_SIZE_4096, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @PCH_GBE_FRAME_SIZE_4096, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %52

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PCH_GBE_FRAME_SIZE_8192, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @PCH_GBE_FRAME_SIZE_8192, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %51

46:                                               ; preds = %37
  %47 = load i32, i32* @PCH_GBE_MAX_RX_BUFFER_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52, %23
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i64 @netif_running(%struct.net_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %59 = call i32 @pch_gbe_down(%struct.pch_gbe_adapter* %58)
  %60 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %61 = call i32 @pch_gbe_up(%struct.pch_gbe_adapter* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %67 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %69 = call i32 @pch_gbe_up(%struct.pch_gbe_adapter* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %108

71:                                               ; preds = %57
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %77 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  br label %80

80:                                               ; preds = %71
  br label %92

81:                                               ; preds = %53
  %82 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %83 = call i32 @pch_gbe_reset(%struct.pch_gbe_adapter* %82)
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  br label %92

92:                                               ; preds = %81, %80
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %96 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %103 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @netdev_dbg(%struct.net_device* %93, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %98, i32 %101, i32 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %92, %64
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_down(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_up(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_reset(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
