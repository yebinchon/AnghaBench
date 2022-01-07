; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-osd.c_vivid_fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-osd.c_vivid_fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @vivid_fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %16, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %95

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = and i32 %26, 65280
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 65280
  %31 = shl i32 %30, 8
  %32 = or i32 %28, %31
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 65280
  %35 = or i32 %32, %34
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 65280
  %38 = lshr i32 %37, 8
  %39 = or i32 %35, %38
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp uge i32 %40, 16
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %95

45:                                               ; preds = %25
  %46 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %15, align 8
  %49 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 16
  br i1 %53, label %54, label %89

54:                                               ; preds = %45
  %55 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %88 [
    i32 6, label %60
    i32 5, label %71
  ]

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 63488
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 64512
  %65 = lshr i32 %64, 5
  %66 = or i32 %62, %65
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 63488
  %69 = lshr i32 %68, 11
  %70 = or i32 %66, %69
  store i32 %70, i32* %14, align 4
  br label %88

71:                                               ; preds = %54
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 63488
  %74 = lshr i32 %73, 1
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 63488
  %77 = lshr i32 %76, 6
  %78 = or i32 %74, %77
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 63488
  %81 = lshr i32 %80, 11
  %82 = or i32 %78, %81
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 32768, i32 0
  %87 = or i32 %82, %86
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %54, %71, %60
  br label %89

89:                                               ; preds = %88, %45
  %90 = load i32, i32* %14, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %89, %42, %22
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
