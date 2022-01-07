; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_rx_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_rx_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { i32, i32, i32, %struct.ibmvnic_rx_pool*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.ibmvnic_rx_pool = type { i32, i32, i32, i32, i32*, i64, i64, i32, i32, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate rx pools\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Initializing rx_pool[%d], %lld buffs, %lld bytes each\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Couldn't alloc rx buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_rx_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rx_pools(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ibmvnic_rx_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ibmvnic_adapter* %12, %struct.ibmvnic_adapter** %4, align 8
  %13 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %13, i32 0, i32 5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32_to_cpu(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = bitcast %struct.TYPE_4__* %25 to i32*
  %27 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %26, i64 %33
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kcalloc(i32 %35, i32 56, i32 %36)
  %38 = bitcast i8* %37 to %struct.ibmvnic_rx_pool*
  %39 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %39, i32 0, i32 3
  store %struct.ibmvnic_rx_pool* %38, %struct.ibmvnic_rx_pool** %40, align 8
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %41, i32 0, i32 3
  %43 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %42, align 8
  %44 = icmp ne %struct.ibmvnic_rx_pool* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %1
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %173

48:                                               ; preds = %1
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %169, %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %172

56:                                               ; preds = %52
  %57 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %57, i32 0, i32 3
  %59 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %59, i64 %61
  store %struct.ibmvnic_rx_pool* %62, %struct.ibmvnic_rx_pool** %6, align 8
  %63 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be64_to_cpu(i32 %74)
  %76 = call i32 @netdev_dbg(i32 %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %75)
  %77 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %81 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %84 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @be64_to_cpu(i32 %89)
  %91 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %92 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %94 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %93, i32 0, i32 3
  store i32 1, i32* %94, align 4
  %95 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %96 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @kcalloc(i32 %97, i32 4, i32 %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %102 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %101, i32 0, i32 4
  store i32* %100, i32** %102, align 8
  %103 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %104 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %56
  %108 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %109 = call i32 @release_rx_pools(%struct.ibmvnic_adapter* %108)
  store i32 -1, i32* %2, align 4
  br label %173

110:                                              ; preds = %56
  %111 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %112 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @kcalloc(i32 %113, i32 4, i32 %114)
  %116 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %117 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %116, i32 0, i32 9
  store i8* %115, i8** %117, align 8
  %118 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %119 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %118, i32 0, i32 9
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %110
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %125 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %126 = call i32 @release_rx_pools(%struct.ibmvnic_adapter* %125)
  store i32 -1, i32* %2, align 4
  br label %173

127:                                              ; preds = %110
  %128 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %129 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %130 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %129, i32 0, i32 8
  %131 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %132 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %135 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %133, %136
  %138 = call i64 @alloc_long_term_buff(%struct.ibmvnic_adapter* %128, i32* %130, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %127
  %141 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %142 = call i32 @release_rx_pools(%struct.ibmvnic_adapter* %141)
  store i32 -1, i32* %2, align 4
  br label %173

143:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %158, %143
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %147 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %144
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %153 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  br label %158

158:                                              ; preds = %150
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %144

161:                                              ; preds = %144
  %162 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %163 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %162, i32 0, i32 7
  %164 = call i32 @atomic_set(i32* %163, i32 0)
  %165 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %166 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %165, i32 0, i32 6
  store i64 0, i64* %166, align 8
  %167 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %6, align 8
  %168 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %167, i32 0, i32 5
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %161
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %52

172:                                              ; preds = %52
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %140, %122, %107, %45
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @release_rx_pools(%struct.ibmvnic_adapter*) #1

declare dso_local i64 @alloc_long_term_buff(%struct.ibmvnic_adapter*, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
