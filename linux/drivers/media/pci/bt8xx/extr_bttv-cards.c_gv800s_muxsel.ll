; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_gv800s_muxsel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_gv800s_muxsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@gv800s_muxsel.map = internal global [4 x [4 x i32]] [[4 x i32] [i32 0, i32 4, i32 10, i32 6], [4 x i32] [i32 1, i32 5, i32 11, i32 7], [4 x i32] [i32 2, i32 8, i32 12, i32 14], [4 x i32] [i32 3, i32 9, i32 13, i32 15]], align 16
@master = common dso_local global %struct.bttv** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, i32)* @gv800s_muxsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv800s_muxsel(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = urem i32 %8, 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bttv**, %struct.bttv*** @master, align 8
  %11 = load %struct.bttv*, %struct.bttv** %3, align 8
  %12 = getelementptr inbounds %struct.bttv, %struct.bttv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.bttv*, %struct.bttv** %10, i64 %14
  %16 = load %struct.bttv*, %struct.bttv** %15, align 8
  store %struct.bttv* %16, %struct.bttv** %5, align 8
  %17 = load %struct.bttv*, %struct.bttv** %5, align 8
  %18 = icmp eq %struct.bttv* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.bttv*, %struct.bttv** %3, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bttv*, %struct.bttv** %5, align 8
  %26 = getelementptr inbounds %struct.bttv, %struct.bttv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %24, %28
  %30 = and i64 %29, 3
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @gv800s_muxsel.map, i64 0, i64 %33
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 15
  store i32 %39, i32* %6, align 4
  %40 = load %struct.bttv*, %struct.bttv** %5, align 8
  %41 = getelementptr inbounds %struct.bttv, %struct.bttv* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %20
  %50 = load %struct.bttv*, %struct.bttv** %5, align 8
  %51 = load %struct.bttv*, %struct.bttv** %5, align 8
  %52 = getelementptr inbounds %struct.bttv, %struct.bttv* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @gv800s_write(%struct.bttv* %50, i32 %57, i32 %58, i32 0)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.bttv*, %struct.bttv** %5, align 8
  %62 = getelementptr inbounds %struct.bttv, %struct.bttv* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load %struct.bttv*, %struct.bttv** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @gv800s_write(%struct.bttv* %67, i32 %68, i32 %69, i32 1)
  br label %71

71:                                               ; preds = %19, %49, %20
  ret void
}

declare dso_local i32 @gv800s_write(%struct.bttv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
