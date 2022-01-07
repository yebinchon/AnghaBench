; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }

@fdp1_formats = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_fmtdesc*, i32)* @fdp1_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp1_enum_fmt(%struct.v4l2_fmtdesc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fmtdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_fmtdesc* %0, %struct.v4l2_fmtdesc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fdp1_formats, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fdp1_formats, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %37

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %8

37:                                               ; preds = %29, %8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fdp1_formats, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %39)
  %41 = icmp uge i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %37
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fdp1_formats, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %4, align 8
  %53 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %42
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
