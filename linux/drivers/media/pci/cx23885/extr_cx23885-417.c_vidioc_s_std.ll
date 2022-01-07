; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.cx23885_dev = type { %struct.TYPE_3__ }

@cx23885_tvnorms = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx23885_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.cx23885_dev* @video_drvdata(%struct.file* %11)
  store %struct.cx23885_dev* %12, %struct.cx23885_dev** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %30, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx23885_tvnorms, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx23885_tvnorms, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %19, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %33

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %13

33:                                               ; preds = %28, %13
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx23885_tvnorms, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %35)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %33
  %42 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @cx23885_set_tvnorm(%struct.cx23885_dev* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %49 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx23885_tvnorms, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = bitcast %struct.TYPE_3__* %49 to i8*
  %55 = bitcast %struct.TYPE_3__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  br label %56

56:                                               ; preds = %47, %41
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %38
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.cx23885_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @cx23885_set_tvnorm(%struct.cx23885_dev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
