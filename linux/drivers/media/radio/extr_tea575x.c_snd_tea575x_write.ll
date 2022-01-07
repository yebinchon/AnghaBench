; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)* }

@TEA575X_DATA = common dso_local global i32 0, align 4
@TEA575X_WREN = common dso_local global i32 0, align 4
@TEA575X_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_tea575x*, i32)* @snd_tea575x_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_tea575x_write(%struct.snd_tea575x* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_tea575x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %8 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to void (%struct.snd_tea575x*, i32)**
  %12 = load void (%struct.snd_tea575x*, i32)*, void (%struct.snd_tea575x*, i32)** %11, align 8
  %13 = icmp ne void (%struct.snd_tea575x*, i32)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %16 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to void (%struct.snd_tea575x*, i32)**
  %20 = load void (%struct.snd_tea575x*, i32)*, void (%struct.snd_tea575x*, i32)** %19, align 8
  %21 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %22 = load i32, i32* %4, align 4
  call void %20(%struct.snd_tea575x* %21, i32 %22)
  br label %93

23:                                               ; preds = %2
  %24 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %25 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %27, align 8
  %29 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %30 = call i32 %28(%struct.snd_tea575x* %29, i32 1)
  %31 = call i32 @udelay(i32 16)
  store i32 25, i32* %5, align 4
  br label %32

32:                                               ; preds = %77, %23
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %80

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = lshr i32 %36, 24
  %38 = load i32, i32* @TEA575X_DATA, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %43 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %45, align 8
  %47 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @TEA575X_WREN, align 4
  %50 = or i32 %48, %49
  %51 = call i32 %46(%struct.snd_tea575x* %47, i32 %50)
  %52 = call i32 @udelay(i32 2)
  %53 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %54 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %56, align 8
  %58 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @TEA575X_WREN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @TEA575X_CLK, align 4
  %63 = or i32 %61, %62
  %64 = call i32 %57(%struct.snd_tea575x* %58, i32 %63)
  %65 = call i32 @udelay(i32 2)
  %66 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %67 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %69, align 8
  %71 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @TEA575X_WREN, align 4
  %74 = or i32 %72, %73
  %75 = call i32 %70(%struct.snd_tea575x* %71, i32 %74)
  %76 = call i32 @udelay(i32 2)
  br label %77

77:                                               ; preds = %35
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %5, align 4
  br label %32

80:                                               ; preds = %32
  %81 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %82 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %87 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %89, align 8
  %91 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %92 = call i32 %90(%struct.snd_tea575x* %91, i32 0)
  br label %93

93:                                               ; preds = %14, %85, %80
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
