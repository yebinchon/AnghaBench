; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_enum_fmt_cap_ovr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_enum_fmt_cap_ovr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }

@FORMATS = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_fmtdesc*)* @bttv_enum_fmt_cap_ovr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_enum_fmt_cap_ovr(%struct.v4l2_fmtdesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_fmtdesc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v4l2_fmtdesc* %0, %struct.v4l2_fmtdesc** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @FORMATS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @formats, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %10
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %3, align 8
  %24 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %32

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %6

32:                                               ; preds = %27, %6
  %33 = load i32, i32* @FORMATS, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %32
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @formats, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %3, align 8
  %47 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %39, %36
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
