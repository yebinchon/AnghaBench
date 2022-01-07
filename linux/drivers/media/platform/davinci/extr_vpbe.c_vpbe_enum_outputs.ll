; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_enum_outputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_enum_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_device = type { %struct.vpbe_config* }
%struct.vpbe_config = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v4l2_output }
%struct.v4l2_output = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_device*, %struct.v4l2_output*)* @vpbe_enum_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_enum_outputs(%struct.vpbe_device* %0, %struct.v4l2_output* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca %struct.v4l2_output*, align 8
  %6 = alloca %struct.vpbe_config*, align 8
  %7 = alloca i32, align 4
  store %struct.vpbe_device* %0, %struct.vpbe_device** %4, align 8
  store %struct.v4l2_output* %1, %struct.v4l2_output** %5, align 8
  %8 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %9 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %8, i32 0, i32 0
  %10 = load %struct.vpbe_config*, %struct.vpbe_config** %9, align 8
  store %struct.vpbe_config* %10, %struct.vpbe_config** %6, align 8
  %11 = load %struct.v4l2_output*, %struct.v4l2_output** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.vpbe_config*, %struct.vpbe_config** %6, align 8
  %16 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp uge i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.v4l2_output*, %struct.v4l2_output** %5, align 8
  %24 = load %struct.vpbe_config*, %struct.vpbe_config** %6, align 8
  %25 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast %struct.v4l2_output* %23 to i8*
  %32 = bitcast %struct.v4l2_output* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.v4l2_output*, %struct.v4l2_output** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %22, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
