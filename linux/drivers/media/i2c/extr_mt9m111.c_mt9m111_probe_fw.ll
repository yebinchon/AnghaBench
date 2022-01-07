; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_probe_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_probe_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fwnode_handle = type { i32 }

@V4L2_MBUS_PARALLEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.mt9m111*)* @mt9m111_probe_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_probe_fw(%struct.i2c_client* %0, %struct.mt9m111* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.mt9m111*, align 8
  %6 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.mt9m111* %1, %struct.mt9m111** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %10 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 1
  %12 = load i32, i32* @V4L2_MBUS_PARALLEL, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 @dev_fwnode(i32* %14)
  %16 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(i32 %15, i32* null)
  store %struct.fwnode_handle* %16, %struct.fwnode_handle** %7, align 8
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %18 = icmp ne %struct.fwnode_handle* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %24 = call i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle* %23, %struct.v4l2_fwnode_endpoint* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %41

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %40 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %28, %27
  %42 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %43 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(i32, i32*) #2

declare dso_local i32 @dev_fwnode(i32*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
