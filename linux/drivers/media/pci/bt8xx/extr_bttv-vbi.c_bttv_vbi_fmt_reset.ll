; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-vbi.c_bttv_vbi_fmt_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-vbi.c_bttv_vbi_fmt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_tvnorm = type { i32*, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bttv_vbi_fmt = type { i32, %struct.bttv_tvnorm*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32*, i64*, i64, i32, i32, i32 }

@bttv_tvnorms = common dso_local global %struct.bttv_tvnorm* null, align 8
@VBI_BPL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@VBI_OFFSET = common dso_local global i32 0, align 4
@VBI_DEFLINES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bttv_vbi_fmt_reset(%struct.bttv_vbi_fmt* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv_vbi_fmt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bttv_tvnorm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bttv_vbi_fmt* %0, %struct.bttv_vbi_fmt** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** @bttv_tvnorms, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %8, i64 %10
  store %struct.bttv_tvnorm* %11, %struct.bttv_tvnorm** %5, align 8
  %12 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %13 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %16 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 7
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @VBI_BPL, align 4
  %19 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %20 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %23 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %24 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @VBI_OFFSET, align 4
  %27 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %28 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 8
  %30 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %31 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %36 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %34, i32* %39, align 4
  %40 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %41 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %46 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* @VBI_DEFLINES, align 4
  %51 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %52 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* @VBI_DEFLINES, align 4
  %57 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %58 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %56, i32* %61, align 4
  %62 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %63 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %66 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %71 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %76 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 4
  %79 = add nsw i32 1024, %78
  store i32 %79, i32* %6, align 4
  %80 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %81 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 1
  %86 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %87 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %85, %90
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @VBI_BPL, align 4
  %94 = icmp ugt i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUG_ON(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @VBI_DEFLINES, align 4
  %99 = icmp ugt i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @BUG_ON(i32 %100)
  %102 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %103 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %104 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %103, i32 0, i32 1
  store %struct.bttv_tvnorm* %102, %struct.bttv_tvnorm** %104, align 8
  %105 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %106 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 2
  %111 = add nsw i32 %110, 2
  %112 = load %struct.bttv_vbi_fmt*, %struct.bttv_vbi_fmt** %3, align 8
  %113 = getelementptr inbounds %struct.bttv_vbi_fmt, %struct.bttv_vbi_fmt* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
