; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-osd.c_vivid_clear_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-osd.c_vivid_clear_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32, i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@rgb555 = common dso_local global i32* null, align 8
@rgb565 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_clear_fb(%struct.vivid_dev* %0) #0 {
  %2 = alloca %struct.vivid_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %2, align 8
  %8 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %3, align 8
  %11 = load i32*, i32** @rgb555, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %13 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32*, i32** @rgb565, align 8
  store i32* %19, i32** %4, align 8
  br label %20

20:                                               ; preds = %18, %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %61, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %24 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %51, %27
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = udiv i32 %38, 16
  %40 = load i32, i32* %5, align 4
  %41 = udiv i32 %40, 16
  %42 = add i32 %39, %41
  %43 = urem i32 %42, 16
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %37, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %56 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr i8, i8* %58, i64 %59
  store i8* %60, i8** %3, align 8
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %21

64:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
