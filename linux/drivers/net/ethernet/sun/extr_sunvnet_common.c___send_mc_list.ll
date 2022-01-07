; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c___send_mc_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c___send_mc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet = type { %struct.vnet_mcast_entry* }
%struct.vnet_mcast_entry = type { i32, %struct.vnet_mcast_entry*, i32, i64 }
%struct.vnet_port = type { i32 }
%struct.vio_net_mcast_info = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@VIO_TYPE_CTRL = common dso_local global i32 0, align 4
@VIO_SUBTYPE_INFO = common dso_local global i32 0, align 4
@VNET_MCAST_INFO = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@VNET_NUM_MCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnet*, %struct.vnet_port*)* @__send_mc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__send_mc_list(%struct.vnet* %0, %struct.vnet_port* %1) #0 {
  %3 = alloca %struct.vnet*, align 8
  %4 = alloca %struct.vnet_port*, align 8
  %5 = alloca %struct.vio_net_mcast_info, align 8
  %6 = alloca %struct.vnet_mcast_entry*, align 8
  %7 = alloca %struct.vnet_mcast_entry**, align 8
  %8 = alloca i32, align 4
  store %struct.vnet* %0, %struct.vnet** %3, align 8
  store %struct.vnet_port* %1, %struct.vnet_port** %4, align 8
  %9 = call i32 @memset(%struct.vio_net_mcast_info* %5, i32 0, i32 32)
  %10 = load i32, i32* @VIO_TYPE_CTRL, align 4
  %11 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @VIO_SUBTYPE_INFO, align 4
  %14 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @VNET_MCAST_INFO, align 4
  %17 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %20 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %19, i32 0, i32 0
  %21 = call i32 @vio_send_sid(i32* %20)
  %22 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 0
  store i32 1, i32* %24, align 8
  store i32 0, i32* %8, align 4
  %25 = load %struct.vnet*, %struct.vnet** %3, align 8
  %26 = getelementptr inbounds %struct.vnet, %struct.vnet* %25, i32 0, i32 0
  %27 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %26, align 8
  store %struct.vnet_mcast_entry* %27, %struct.vnet_mcast_entry** %6, align 8
  br label %28

28:                                               ; preds = %63, %2
  %29 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %30 = icmp ne %struct.vnet_mcast_entry* %29, null
  br i1 %30, label %31, label %67

31:                                               ; preds = %28
  %32 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %33 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %63

37:                                               ; preds = %31
  %38 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %39 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %48 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32* %46, i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @VNET_NUM_MCAST, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %37
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %60 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %59, i32 0, i32 0
  %61 = call i32 @vio_ldc_send(i32* %60, %struct.vio_net_mcast_info* %5, i32 32)
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %56, %37
  br label %63

63:                                               ; preds = %62, %36
  %64 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %65 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %64, i32 0, i32 1
  %66 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %65, align 8
  store %struct.vnet_mcast_entry* %66, %struct.vnet_mcast_entry** %6, align 8
  br label %28

67:                                               ; preds = %28
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %74 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %73, i32 0, i32 0
  %75 = call i32 @vio_ldc_send(i32* %74, %struct.vio_net_mcast_info* %5, i32 32)
  br label %76

76:                                               ; preds = %70, %67
  %77 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 0
  store i32 0, i32* %77, align 8
  store i32 0, i32* %8, align 4
  %78 = load %struct.vnet*, %struct.vnet** %3, align 8
  %79 = getelementptr inbounds %struct.vnet, %struct.vnet* %78, i32 0, i32 0
  store %struct.vnet_mcast_entry** %79, %struct.vnet_mcast_entry*** %7, align 8
  br label %80

80:                                               ; preds = %117, %89, %76
  %81 = load %struct.vnet_mcast_entry**, %struct.vnet_mcast_entry*** %7, align 8
  %82 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %81, align 8
  store %struct.vnet_mcast_entry* %82, %struct.vnet_mcast_entry** %6, align 8
  %83 = icmp ne %struct.vnet_mcast_entry* %82, null
  br i1 %83, label %84, label %124

84:                                               ; preds = %80
  %85 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %86 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %91 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %93 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %92, i32 0, i32 1
  store %struct.vnet_mcast_entry** %93, %struct.vnet_mcast_entry*** %7, align 8
  br label %80

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %103 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ETH_ALEN, align 4
  %106 = call i32 @memcpy(i32* %101, i32 %104, i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @VNET_NUM_MCAST, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %94
  %112 = load i32, i32* %8, align 4
  %113 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  %114 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %115 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %114, i32 0, i32 0
  %116 = call i32 @vio_ldc_send(i32* %115, %struct.vio_net_mcast_info* %5, i32 32)
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %111, %94
  %118 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %119 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %118, i32 0, i32 1
  %120 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %119, align 8
  %121 = load %struct.vnet_mcast_entry**, %struct.vnet_mcast_entry*** %7, align 8
  store %struct.vnet_mcast_entry* %120, %struct.vnet_mcast_entry** %121, align 8
  %122 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %123 = call i32 @kfree(%struct.vnet_mcast_entry* %122)
  br label %80

124:                                              ; preds = %80
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %5, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %131 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %130, i32 0, i32 0
  %132 = call i32 @vio_ldc_send(i32* %131, %struct.vio_net_mcast_info* %5, i32 32)
  br label %133

133:                                              ; preds = %127, %124
  ret void
}

declare dso_local i32 @memset(%struct.vio_net_mcast_info*, i32, i32) #1

declare dso_local i32 @vio_send_sid(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @vio_ldc_send(i32*, %struct.vio_net_mcast_info*, i32) #1

declare dso_local i32 @kfree(%struct.vnet_mcast_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
