; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_set_frame_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_set_frame_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_frame_desc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.s5c73m3 = type { i32, %struct.v4l2_mbus_frame_desc }

@OIF_SOURCE_PAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SZ_1M = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@S5C73M3_EMBEDDED_DATA_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_frame_desc*)* @s5c73m3_oif_set_frame_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_oif_set_frame_desc(%struct.v4l2_subdev* %0, i32 %1, %struct.v4l2_mbus_frame_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_mbus_frame_desc*, align 8
  %8 = alloca %struct.s5c73m3*, align 8
  %9 = alloca %struct.v4l2_mbus_frame_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_mbus_frame_desc* %2, %struct.v4l2_mbus_frame_desc** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev* %11)
  store %struct.s5c73m3* %12, %struct.s5c73m3** %8, align 8
  %13 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %14 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %13, i32 0, i32 1
  store %struct.v4l2_mbus_frame_desc* %14, %struct.v4l2_mbus_frame_desc** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @OIF_SOURCE_PAD, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %20 = icmp eq %struct.v4l2_mbus_frame_desc* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %79

24:                                               ; preds = %18
  %25 = load i32, i32* @SZ_1M, align 4
  %26 = mul nsw i32 10, %25
  %27 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* @u32, align 4
  %33 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @S5C73M3_EMBEDDED_DATA_MAXLEN, align 4
  %40 = call i32 @max_t(i32 %32, i32 %38, i32 %39)
  %41 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  %46 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %46, i32 0, i32 0
  store i32 2, i32* %47, align 8
  %48 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %49 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %72, %24
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = bitcast %struct.TYPE_2__* %63 to i8*
  %71 = bitcast %struct.TYPE_2__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %77 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %21
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
