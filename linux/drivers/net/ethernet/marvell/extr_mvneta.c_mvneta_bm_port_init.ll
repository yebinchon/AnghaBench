; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_bm_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_bm_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mvneta_port = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"bm,pool-long\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"missing long pool id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MVNETA_BM_LONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"fail to obtain long pool for port\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"bm,pool-short\00", align 1
@MVNETA_BM_SHORT = common dso_local global i32 0, align 4
@MVNETA_BM_SHORT_PKT_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"fail to obtain short pool for port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.mvneta_port*)* @mvneta_bm_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_bm_port_init(%struct.platform_device* %0, %struct.mvneta_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mvneta_port*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mvneta_port* %1, %struct.mvneta_port** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %15 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %20 = call i32 @mvneta_bm_port_mbus_init(%struct.mvneta_port* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %159

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call i64 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64* %7)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %32 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %31, i32 0, i32 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @netdev_info(%struct.TYPE_7__* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %159

37:                                               ; preds = %26
  %38 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %39 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* @MVNETA_BM_LONG, align 4
  %43 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %44 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %47 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %46, i32 0, i32 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @MVNETA_RX_PKT_SIZE(i32 %50)
  %52 = call i8* @mvneta_bm_pool_use(i32 %40, i64 %41, i32 %42, i32 %45, i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_8__*
  %54 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %55 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %54, i32 0, i32 2
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %57 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %37
  %61 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %62 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %61, i32 0, i32 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = call i32 @netdev_info(%struct.TYPE_7__* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %159

67:                                               ; preds = %37
  %68 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %69 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 1, %70
  %72 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %73 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 4
  %78 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %79 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %80 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %85 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %84, i32 0, i32 2
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mvneta_bm_pool_bufsize_set(%struct.mvneta_port* %78, i32 %83, i32 %88)
  %90 = load %struct.device_node*, %struct.device_node** %6, align 8
  %91 = call i64 @of_property_read_u32(%struct.device_node* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64* %8)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %67
  %94 = load i64, i64* %7, align 8
  store i64 %94, i64* %8, align 8
  br label %95

95:                                               ; preds = %93, %67
  %96 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %97 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* @MVNETA_BM_SHORT, align 4
  %101 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %102 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MVNETA_BM_SHORT_PKT_SIZE, align 4
  %105 = call i8* @mvneta_bm_pool_use(i32 %98, i64 %99, i32 %100, i32 %103, i32 %104)
  %106 = bitcast i8* %105 to %struct.TYPE_6__*
  %107 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %108 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %107, i32 0, i32 1
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %108, align 8
  %109 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %110 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = icmp ne %struct.TYPE_6__* %111, null
  br i1 %112, label %131, label %113

113:                                              ; preds = %95
  %114 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %115 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %114, i32 0, i32 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = call i32 @netdev_info(%struct.TYPE_7__* %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %119 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %122 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %125 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = shl i32 1, %126
  %128 = call i32 @mvneta_bm_pool_destroy(i32 %120, %struct.TYPE_8__* %123, i32 %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %159

131:                                              ; preds = %95
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %7, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %131
  %136 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %137 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = shl i32 1, %138
  %140 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %141 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %139
  store i32 %145, i32* %143, align 4
  %146 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %147 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %148 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %147, i32 0, i32 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %153 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @mvneta_bm_pool_bufsize_set(%struct.mvneta_port* %146, i32 %151, i32 %156)
  br label %158

158:                                              ; preds = %135, %131
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %113, %60, %30, %23
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @mvneta_bm_port_mbus_init(%struct.mvneta_port*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @netdev_info(%struct.TYPE_7__*, i8*) #1

declare dso_local i8* @mvneta_bm_pool_use(i32, i64, i32, i32, i32) #1

declare dso_local i32 @MVNETA_RX_PKT_SIZE(i32) #1

declare dso_local i32 @mvneta_bm_pool_bufsize_set(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @mvneta_bm_pool_destroy(i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
