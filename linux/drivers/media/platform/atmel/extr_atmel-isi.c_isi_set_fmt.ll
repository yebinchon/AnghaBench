; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_isi = type { %struct.isi_format*, %struct.v4l2_format, %struct.TYPE_3__ }
%struct.isi_format = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_isi*, %struct.v4l2_format*)* @isi_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isi_set_fmt(%struct.atmel_isi* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_isi*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = alloca %struct.isi_format*, align 8
  %8 = alloca i32, align 4
  store %struct.atmel_isi* %0, %struct.atmel_isi** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 1
  %11 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %14 = call i32 @isi_try_fmt(%struct.atmel_isi* %12, %struct.v4l2_format* %13, %struct.isi_format** %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.isi_format*, %struct.isi_format** %7, align 8
  %25 = getelementptr inbounds %struct.isi_format, %struct.isi_format* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @v4l2_fill_mbus_format(i32* %20, i32* %23, i32 %26)
  %28 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %29 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @pad, align 4
  %33 = load i32, i32* @set_fmt, align 4
  %34 = call i32 @v4l2_subdev_call(i32 %31, i32 %32, i32 %33, i32* null, %struct.v4l2_subdev_format* %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %19
  %40 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %41 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %40, i32 0, i32 1
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %43 = bitcast %struct.v4l2_format* %41 to i8*
  %44 = bitcast %struct.v4l2_format* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load %struct.isi_format*, %struct.isi_format** %7, align 8
  %46 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %47 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %46, i32 0, i32 0
  store %struct.isi_format* %45, %struct.isi_format** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %39, %37, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @isi_try_fmt(%struct.atmel_isi*, %struct.v4l2_format*, %struct.isi_format**) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, i32*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
