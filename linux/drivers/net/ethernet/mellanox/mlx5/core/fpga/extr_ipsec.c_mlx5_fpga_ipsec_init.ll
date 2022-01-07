; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.mlx5_fpga_conn*, i32, i32, i32, %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_conn = type { i32 }
%struct.mlx5_fpga_conn_attr = type { %struct.mlx5_fpga_device*, i32, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to retrieve IPSec extended capabilities: %d\0A\00", align 1
@SBU_QP_QUEUE_SIZE = common dso_local global i8* null, align 8
@mlx5_fpga_ipsec_recv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Error creating IPSec command connection %d\0A\00", align 1
@rhash_sa = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Failed to enable IPSec extended capabilities: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_ipsec_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fpga_conn_attr, align 8
  %5 = alloca %struct.mlx5_fpga_device*, align 8
  %6 = alloca %struct.mlx5_fpga_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %8 = bitcast %struct.mlx5_fpga_conn_attr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 40, i1 false)
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %10, align 8
  store %struct.mlx5_fpga_device* %11, %struct.mlx5_fpga_device** %5, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %13 = call i32 @mlx5_fpga_is_ipsec_device(%struct.mlx5_core_dev* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %133

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.TYPE_3__* @kzalloc(i32 48, i32 %17)
  %19 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %19, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %133

28:                                               ; preds = %16
  %29 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %30 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 8
  store %struct.mlx5_fpga_device* %29, %struct.mlx5_fpga_device** %33, align 8
  %34 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %35 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mlx5_fpga_get_sbu_caps(%struct.mlx5_fpga_device* %34, i32 4, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %125

47:                                               ; preds = %28
  %48 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load i8*, i8** @SBU_QP_QUEUE_SIZE, align 8
  %59 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %4, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** @SBU_QP_QUEUE_SIZE, align 8
  %61 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %4, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @mlx5_fpga_ipsec_recv, align 4
  %63 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %4, i32 0, i32 1
  store i32 %62, i32* %63, align 8
  %64 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %4, i32 0, i32 0
  store %struct.mlx5_fpga_device* %64, %struct.mlx5_fpga_device** %65, align 8
  %66 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %67 = call %struct.mlx5_fpga_conn* @mlx5_fpga_sbu_conn_create(%struct.mlx5_fpga_device* %66, %struct.mlx5_fpga_conn_attr* %4)
  store %struct.mlx5_fpga_conn* %67, %struct.mlx5_fpga_conn** %6, align 8
  %68 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %6, align 8
  %69 = call i64 @IS_ERR(%struct.mlx5_fpga_conn* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %47
  %72 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %6, align 8
  %73 = call i32 @PTR_ERR(%struct.mlx5_fpga_conn* %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %125

77:                                               ; preds = %47
  %78 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %6, align 8
  %79 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  store %struct.mlx5_fpga_conn* %78, %struct.mlx5_fpga_conn** %82, align 8
  %83 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %84 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @rhashtable_init(i32* %86, i32* @rhash_sa)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %122

91:                                               ; preds = %77
  %92 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %93 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = call i32 @mutex_init(i32* %95)
  %97 = load i32, i32* @RB_ROOT, align 4
  %98 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %99 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i32 %97, i32* %101, align 8
  %102 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %103 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = call i32 @mutex_init(i32* %105)
  %107 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %108 = call i32 @mlx5_fpga_ipsec_enable_supported_caps(%struct.mlx5_core_dev* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %91
  %112 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %112, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %116

115:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %133

116:                                              ; preds = %111
  %117 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %118 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = call i32 @rhashtable_destroy(i32* %120)
  br label %122

122:                                              ; preds = %116, %90
  %123 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %6, align 8
  %124 = call i32 @mlx5_fpga_sbu_conn_destroy(%struct.mlx5_fpga_conn* %123)
  br label %125

125:                                              ; preds = %122, %71, %43
  %126 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %127 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = call i32 @kfree(%struct.TYPE_3__* %128)
  %130 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %131 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %130, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %131, align 8
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %125, %115, %25, %15
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_fpga_is_ipsec_device(%struct.mlx5_core_dev*) #2

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #2

declare dso_local i32 @mlx5_fpga_get_sbu_caps(%struct.mlx5_fpga_device*, i32, i32) #2

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local %struct.mlx5_fpga_conn* @mlx5_fpga_sbu_conn_create(%struct.mlx5_fpga_device*, %struct.mlx5_fpga_conn_attr*) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_fpga_conn*) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_fpga_conn*) #2

declare dso_local i32 @rhashtable_init(i32*, i32*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @mlx5_fpga_ipsec_enable_supported_caps(%struct.mlx5_core_dev*) #2

declare dso_local i32 @rhashtable_destroy(i32*) #2

declare dso_local i32 @mlx5_fpga_sbu_conn_destroy(%struct.mlx5_fpga_conn*) #2

declare dso_local i32 @kfree(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
