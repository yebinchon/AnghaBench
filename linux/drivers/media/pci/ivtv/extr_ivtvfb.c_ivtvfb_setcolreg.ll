; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_8__, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ivtv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @ivtvfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ivtv*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ivtv*
  store %struct.ivtv* %20, %struct.ivtv** %16, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp uge i32 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %127

30:                                               ; preds = %6
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 65280
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 65280
  %36 = shl i32 %35, 8
  %37 = or i32 %33, %36
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 65280
  %40 = or i32 %37, %39
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 65280
  %43 = lshr i32 %42, 8
  %44 = or i32 %40, %43
  store i32 %44, i32* %14, align 4
  %45 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %48, 8
  br i1 %49, label %50, label %64

50:                                               ; preds = %30
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @write_reg(i32 %51, i32 10800)
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @write_reg(i32 %53, i32 10804)
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.ivtv*, %struct.ivtv** %16, align 8
  %57 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %55, i32* %63, align 4
  store i32 0, i32* %7, align 4
  br label %127

64:                                               ; preds = %30
  %65 = load i32, i32* %8, align 4
  %66 = icmp uge i32 %65, 16
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %127

70:                                               ; preds = %64
  %71 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %15, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 16
  br i1 %78, label %79, label %121

79:                                               ; preds = %70
  %80 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %120 [
    i32 4, label %85
    i32 5, label %97
    i32 6, label %109
  ]

85:                                               ; preds = %79
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 61440
  %88 = lshr i32 %87, 4
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, 61440
  %91 = lshr i32 %90, 8
  %92 = or i32 %88, %91
  %93 = load i32, i32* %11, align 4
  %94 = and i32 %93, 61440
  %95 = lshr i32 %94, 12
  %96 = or i32 %92, %95
  store i32 %96, i32* %14, align 4
  br label %120

97:                                               ; preds = %79
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 63488
  %100 = lshr i32 %99, 1
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, 63488
  %103 = lshr i32 %102, 6
  %104 = or i32 %100, %103
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 63488
  %107 = lshr i32 %106, 11
  %108 = or i32 %104, %107
  store i32 %108, i32* %14, align 4
  br label %120

109:                                              ; preds = %79
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, 63488
  %112 = load i32, i32* %10, align 4
  %113 = and i32 %112, 64512
  %114 = lshr i32 %113, 5
  %115 = or i32 %111, %114
  %116 = load i32, i32* %11, align 4
  %117 = and i32 %116, 63488
  %118 = lshr i32 %117, 11
  %119 = or i32 %115, %118
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %79, %109, %97, %85
  br label %121

121:                                              ; preds = %120, %70
  %122 = load i32, i32* %14, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %8, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %121, %67, %50, %27
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
