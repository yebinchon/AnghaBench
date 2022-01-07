; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_pools_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_pools_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_bm = type { %struct.TYPE_4__*, %struct.mvneta_bm_pool* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mvneta_bm_pool = type { i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@MVNETA_BM_COMMAND_REG = common dso_local global i32 0, align 4
@MVNETA_BM_START_MASK = common dso_local global i64 0, align 8
@MVNETA_BM_POOLS_NUM = common dso_local global i32 0, align 4
@MVNETA_BM_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"pool%d,capacity\00", align 1
@MVNETA_BM_POOL_CAP_DEF = common dso_local global i64 0, align 8
@MVNETA_BM_POOL_CAP_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Illegal pool %d capacity %d, set to %d\0A\00", align 1
@MVNETA_BM_POOL_CAP_MIN = common dso_local global i64 0, align 8
@MVNETA_BM_POOL_CAP_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Illegal pool %d capacity %d, round to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"pool%d,pkt-size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_bm*)* @mvneta_bm_pools_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_bm_pools_init(%struct.mvneta_bm* %0) #0 {
  %2 = alloca %struct.mvneta_bm*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.mvneta_bm_pool*, align 8
  %5 = alloca [15 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mvneta_bm* %0, %struct.mvneta_bm** %2, align 8
  %8 = load %struct.mvneta_bm*, %struct.mvneta_bm** %2, align 8
  %9 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %3, align 8
  %14 = load %struct.mvneta_bm*, %struct.mvneta_bm** %2, align 8
  %15 = load i32, i32* @MVNETA_BM_COMMAND_REG, align 4
  %16 = load i64, i64* @MVNETA_BM_START_MASK, align 8
  %17 = call i32 @mvneta_bm_write(%struct.mvneta_bm* %14, i32 %15, i64 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %128, %1
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MVNETA_BM_POOLS_NUM, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %131

22:                                               ; preds = %18
  %23 = load %struct.mvneta_bm*, %struct.mvneta_bm** %2, align 8
  %24 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %23, i32 0, i32 1
  %25 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %25, i64 %27
  store %struct.mvneta_bm_pool* %28, %struct.mvneta_bm_pool** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %4, align 8
  %31 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @MVNETA_BM_FREE, align 4
  %33 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %4, align 8
  %34 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mvneta_bm*, %struct.mvneta_bm** %2, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @MVNETA_BM_POOL_READ_PTR_REG(i32 %36)
  %38 = call i32 @mvneta_bm_write(%struct.mvneta_bm* %35, i32 %37, i64 0)
  %39 = load %struct.mvneta_bm*, %struct.mvneta_bm** %2, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @MVNETA_BM_POOL_WRITE_PTR_REG(i32 %40)
  %42 = call i32 @mvneta_bm_write(%struct.mvneta_bm* %39, i32 %41, i64 0)
  %43 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.device_node*, %struct.device_node** %3, align 8
  %47 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %48 = call i64 @of_property_read_u32(%struct.device_node* %46, i8* %47, i64* %6)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %22
  %51 = load i64, i64* @MVNETA_BM_POOL_CAP_DEF, align 8
  store i64 %51, i64* %6, align 8
  br label %102

52:                                               ; preds = %22
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @MVNETA_BM_POOL_CAP_MAX, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.mvneta_bm*, %struct.mvneta_bm** %2, align 8
  %58 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @MVNETA_BM_POOL_CAP_MAX, align 8
  %64 = call i32 @dev_warn(%struct.TYPE_6__* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %62, i64 %63)
  %65 = load i64, i64* @MVNETA_BM_POOL_CAP_MAX, align 8
  store i64 %65, i64* %6, align 8
  br label %101

66:                                               ; preds = %52
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @MVNETA_BM_POOL_CAP_MIN, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load %struct.mvneta_bm*, %struct.mvneta_bm** %2, align 8
  %72 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %7, align 4
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @MVNETA_BM_POOL_CAP_MIN, align 8
  %78 = call i32 @dev_warn(%struct.TYPE_6__* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %75, i64 %76, i64 %77)
  %79 = load i64, i64* @MVNETA_BM_POOL_CAP_MIN, align 8
  store i64 %79, i64* %6, align 8
  br label %100

80:                                               ; preds = %66
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @MVNETA_BM_POOL_CAP_ALIGN, align 4
  %83 = call i32 @IS_ALIGNED(i64 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %80
  %86 = load %struct.mvneta_bm*, %struct.mvneta_bm** %2, align 8
  %87 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %7, align 4
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* @MVNETA_BM_POOL_CAP_ALIGN, align 4
  %94 = call i64 @ALIGN(i64 %92, i32 %93)
  %95 = call i32 @dev_warn(%struct.TYPE_6__* %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %90, i64 %91, i64 %94)
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* @MVNETA_BM_POOL_CAP_ALIGN, align 4
  %98 = call i64 @ALIGN(i64 %96, i32 %97)
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %85, %80
  br label %100

100:                                              ; preds = %99, %70
  br label %101

101:                                              ; preds = %100, %56
  br label %102

102:                                              ; preds = %101, %50
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %4, align 8
  %105 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load %struct.mvneta_bm*, %struct.mvneta_bm** %2, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @MVNETA_BM_POOL_SIZE_REG(i32 %108)
  %110 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %4, align 8
  %111 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @mvneta_bm_write(%struct.mvneta_bm* %107, i32 %109, i64 %113)
  %115 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @sprintf(i8* %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load %struct.device_node*, %struct.device_node** %3, align 8
  %119 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %120 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %4, align 8
  %121 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %120, i32 0, i32 1
  %122 = call i64 @of_property_read_u32(%struct.device_node* %118, i8* %119, i64* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %102
  %125 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %4, align 8
  %126 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %102
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %18

131:                                              ; preds = %18
  ret void
}

declare dso_local i32 @mvneta_bm_write(%struct.mvneta_bm*, i32, i64) #1

declare dso_local i32 @MVNETA_BM_POOL_READ_PTR_REG(i32) #1

declare dso_local i32 @MVNETA_BM_POOL_WRITE_PTR_REG(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*, i32, i64, i64) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @MVNETA_BM_POOL_SIZE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
