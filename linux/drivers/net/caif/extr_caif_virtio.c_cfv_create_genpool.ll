; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_create_genpool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_create_genpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfv_info = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Not enough device memory\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Allocated %zd bytes from dma-memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfv_info*)* @cfv_create_genpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfv_create_genpool(%struct.cfv_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfv_info*, align 8
  %4 = alloca i32, align 4
  store %struct.cfv_info* %0, %struct.cfv_info** %3, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %8 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @virtqueue_get_vring_size(i32 %9)
  %11 = load i32, i32* @ETH_DATA_LEN, align 4
  %12 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %13 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %17 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = mul nsw i32 %10, %19
  %21 = mul nsw i32 %20, 11
  %22 = sdiv i32 %21, 10
  %23 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %24 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %26 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (...) @num_possible_cpus()
  %29 = add nsw i32 %28, 1
  %30 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %31 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %30, i32 0, i32 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %29, %34
  %36 = icmp sle i32 %27, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %163

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %83, %40
  %42 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %43 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (...) @num_possible_cpus()
  %46 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %47 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %46, i32 0, i32 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %45, %50
  %52 = icmp sle i32 %44, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %55 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %54, i32 0, i32 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i32 @netdev_info(%struct.TYPE_9__* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %163

60:                                               ; preds = %41
  %61 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %62 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %61, i32 0, i32 11
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %70 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %73 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %72, i32 0, i32 10
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call i64 @dma_alloc_coherent(i32 %68, i32 %71, i32* %73, i32 %74)
  %76 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %77 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %76, i32 0, i32 9
  store i64 %75, i64* %77, align 8
  %78 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %79 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %78, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %60
  br label %91

83:                                               ; preds = %60
  %84 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %85 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %86, 3
  %88 = ashr i32 %87, 2
  %89 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %90 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %41

91:                                               ; preds = %82
  %92 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %93 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %92, i32 0, i32 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %96 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @netdev_dbg(%struct.TYPE_9__* %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = call i32 @gen_pool_create(i32 7, i32 -1)
  %100 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %101 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 4
  %102 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %103 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %91
  br label %159

107:                                              ; preds = %91
  %108 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %109 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %112 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %111, i32 0, i32 9
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %115 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %114, i32 0, i32 9
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @virt_to_phys(i64 %116)
  %118 = trunc i64 %117 to i32
  %119 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %120 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @gen_pool_add_virt(i32 %110, i64 %113, i32 %118, i32 %121, i32 -1)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %107
  br label %159

126:                                              ; preds = %107
  %127 = call i32 (...) @num_possible_cpus()
  %128 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %129 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %128, i32 0, i32 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %127, %132
  %134 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %135 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %137 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %140 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @gen_pool_alloc(i32 %138, i32 %141)
  %143 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %144 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  %145 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %146 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %126
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  br label %159

152:                                              ; preds = %126
  %153 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %154 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @virtqueue_get_vring_size(i32 %155)
  %157 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %158 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  store i32 0, i32* %2, align 4
  br label %163

159:                                              ; preds = %149, %125, %106
  %160 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %161 = call i32 @cfv_destroy_genpool(%struct.cfv_info* %160)
  %162 = load i32, i32* %4, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %152, %53, %37
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @virtqueue_get_vring_size(i32) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i32 @netdev_info(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @gen_pool_add_virt(i32, i64, i32, i32, i32) #1

declare dso_local i64 @virt_to_phys(i64) #1

declare dso_local i32 @gen_pool_alloc(i32, i32) #1

declare dso_local i32 @cfv_destroy_genpool(%struct.cfv_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
