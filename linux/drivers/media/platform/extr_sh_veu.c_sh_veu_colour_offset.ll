; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_colour_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_colour_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_veu_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sh_veu_vfmt = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_veu_dev*, %struct.sh_veu_vfmt*)* @sh_veu_colour_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_veu_colour_offset(%struct.sh_veu_dev* %0, %struct.sh_veu_vfmt* %1) #0 {
  %3 = alloca %struct.sh_veu_dev*, align 8
  %4 = alloca %struct.sh_veu_vfmt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sh_veu_dev* %0, %struct.sh_veu_dev** %3, align 8
  store %struct.sh_veu_vfmt* %1, %struct.sh_veu_vfmt** %4, align 8
  %9 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %4, align 8
  %10 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, -4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %4, align 8
  %15 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %20 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %18, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %26 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %24, %30
  %32 = ashr i32 %31, 3
  %33 = add nsw i32 %23, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %4, align 8
  %36 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %4, align 8
  %38 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %61 [
    i32 134, label %42
    i32 133, label %42
    i32 132, label %42
    i32 130, label %58
    i32 129, label %58
    i32 128, label %58
    i32 135, label %58
    i32 131, label %58
  ]

42:                                               ; preds = %2, %2, %2
  %43 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %4, align 8
  %44 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ALIGN(i32 %46, i32 16)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %4, align 8
  %51 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = mul i32 %49, %53
  %55 = add i32 %48, %54
  %56 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %4, align 8
  %57 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %63

58:                                               ; preds = %2, %2, %2, %2, %2
  %59 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %4, align 8
  %60 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  br label %63

61:                                               ; preds = %2
  %62 = call i32 (...) @BUG()
  br label %63

63:                                               ; preds = %61, %58, %42
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
