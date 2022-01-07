; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_setup_netfront.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_setup_netfront.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.netfront_queue = type { i8*, i8*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.xen_netif_tx_sring = type { i32 }
%struct.xen_netif_rx_sring = type opaque

@GRANT_INVALID_REF = common dso_local global i8* null, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"allocating tx ring page\00", align 1
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"allocating rx ring page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.netfront_queue*, i32)* @setup_netfront to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_netfront(%struct.xenbus_device* %0, %struct.netfront_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenbus_device*, align 8
  %6 = alloca %struct.netfront_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_netif_tx_sring*, align 8
  %9 = alloca %struct.xen_netif_rx_sring*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %5, align 8
  store %struct.netfront_queue* %1, %struct.netfront_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** @GRANT_INVALID_REF, align 8
  %13 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %14 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @GRANT_INVALID_REF, align 8
  %16 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %17 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %19 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %22 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* @GFP_NOIO, align 4
  %25 = load i32, i32* @__GFP_HIGH, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @get_zeroed_page(i32 %26)
  %28 = inttoptr i64 %27 to %struct.xen_netif_tx_sring*
  store %struct.xen_netif_tx_sring* %28, %struct.xen_netif_tx_sring** %8, align 8
  %29 = load %struct.xen_netif_tx_sring*, %struct.xen_netif_tx_sring** %8, align 8
  %30 = icmp ne %struct.xen_netif_tx_sring* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %34, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %129

37:                                               ; preds = %3
  %38 = load %struct.xen_netif_tx_sring*, %struct.xen_netif_tx_sring** %8, align 8
  %39 = call i32 @SHARED_RING_INIT(%struct.xen_netif_tx_sring* %38)
  %40 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %41 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %40, i32 0, i32 3
  %42 = load %struct.xen_netif_tx_sring*, %struct.xen_netif_tx_sring** %8, align 8
  %43 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %44 = call i32 @FRONT_RING_INIT(%struct.TYPE_2__* %41, %struct.xen_netif_tx_sring* %42, i32 %43)
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %46 = load %struct.xen_netif_tx_sring*, %struct.xen_netif_tx_sring** %8, align 8
  %47 = call i32 @xenbus_grant_ring(%struct.xenbus_device* %45, %struct.xen_netif_tx_sring* %46, i32 1, i8** %10)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %125

51:                                               ; preds = %37
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %54 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @GFP_NOIO, align 4
  %56 = load i32, i32* @__GFP_HIGH, align 4
  %57 = or i32 %55, %56
  %58 = call i64 @get_zeroed_page(i32 %57)
  %59 = inttoptr i64 %58 to %struct.xen_netif_rx_sring*
  store %struct.xen_netif_rx_sring* %59, %struct.xen_netif_rx_sring** %9, align 8
  %60 = load %struct.xen_netif_rx_sring*, %struct.xen_netif_rx_sring** %9, align 8
  %61 = icmp ne %struct.xen_netif_rx_sring* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  %65 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %65, i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %120

68:                                               ; preds = %51
  %69 = load %struct.xen_netif_rx_sring*, %struct.xen_netif_rx_sring** %9, align 8
  %70 = bitcast %struct.xen_netif_rx_sring* %69 to %struct.xen_netif_tx_sring*
  %71 = call i32 @SHARED_RING_INIT(%struct.xen_netif_tx_sring* %70)
  %72 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %73 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %72, i32 0, i32 2
  %74 = load %struct.xen_netif_rx_sring*, %struct.xen_netif_rx_sring** %9, align 8
  %75 = bitcast %struct.xen_netif_rx_sring* %74 to %struct.xen_netif_tx_sring*
  %76 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %77 = call i32 @FRONT_RING_INIT(%struct.TYPE_2__* %73, %struct.xen_netif_tx_sring* %75, i32 %76)
  %78 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %79 = load %struct.xen_netif_rx_sring*, %struct.xen_netif_rx_sring** %9, align 8
  %80 = bitcast %struct.xen_netif_rx_sring* %79 to %struct.xen_netif_tx_sring*
  %81 = call i32 @xenbus_grant_ring(%struct.xenbus_device* %78, %struct.xen_netif_tx_sring* %80, i32 1, i8** %10)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %116

85:                                               ; preds = %68
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %88 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %93 = call i32 @setup_netfront_split(%struct.netfront_queue* %92)
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %91, %85
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %94
  %104 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %105 = call i32 @setup_netfront_single(%struct.netfront_queue* %104)
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %100, %97
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %111

110:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %131

111:                                              ; preds = %109
  %112 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %113 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @gnttab_end_foreign_access_ref(i8* %114, i32 0)
  br label %116

116:                                              ; preds = %111, %84
  %117 = load %struct.xen_netif_rx_sring*, %struct.xen_netif_rx_sring** %9, align 8
  %118 = ptrtoint %struct.xen_netif_rx_sring* %117 to i64
  %119 = call i32 @free_page(i64 %118)
  br label %120

120:                                              ; preds = %116, %62
  %121 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  %122 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @gnttab_end_foreign_access_ref(i8* %123, i32 0)
  br label %125

125:                                              ; preds = %120, %50
  %126 = load %struct.xen_netif_tx_sring*, %struct.xen_netif_tx_sring** %8, align 8
  %127 = ptrtoint %struct.xen_netif_tx_sring* %126 to i64
  %128 = call i32 @free_page(i64 %127)
  br label %129

129:                                              ; preds = %125, %31
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %110
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @SHARED_RING_INIT(%struct.xen_netif_tx_sring*) #1

declare dso_local i32 @FRONT_RING_INIT(%struct.TYPE_2__*, %struct.xen_netif_tx_sring*, i32) #1

declare dso_local i32 @xenbus_grant_ring(%struct.xenbus_device*, %struct.xen_netif_tx_sring*, i32, i8**) #1

declare dso_local i32 @setup_netfront_split(%struct.netfront_queue*) #1

declare dso_local i32 @setup_netfront_single(%struct.netfront_queue*) #1

declare dso_local i32 @gnttab_end_foreign_access_ref(i8*, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
