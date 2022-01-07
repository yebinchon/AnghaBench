; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { {}*, {}*, i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)* }

@TEA575X_CLK = common dso_local global i32 0, align 4
@TEA575X_MOST = common dso_local global i32 0, align 4
@TEA575X_DATA = common dso_local global i32 0, align 4
@TEA575X_WREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tea575x*)* @snd_tea575x_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_tea575x_read(%struct.snd_tea575x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_tea575x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %8 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.snd_tea575x*)**
  %12 = load i32 (%struct.snd_tea575x*)*, i32 (%struct.snd_tea575x*)** %11, align 8
  %13 = icmp ne i32 (%struct.snd_tea575x*)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %16 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.snd_tea575x*)**
  %20 = load i32 (%struct.snd_tea575x*)*, i32 (%struct.snd_tea575x*)** %19, align 8
  %21 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %22 = call i32 %20(%struct.snd_tea575x* %21)
  store i32 %22, i32* %2, align 4
  br label %127

23:                                               ; preds = %1
  %24 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %25 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %27, align 8
  %29 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %30 = call i32 %28(%struct.snd_tea575x* %29, i32 0)
  %31 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %32 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %34, align 8
  %36 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %37 = call i32 %35(%struct.snd_tea575x* %36, i32 0)
  %38 = call i32 @udelay(i32 16)
  store i32 24, i32* %4, align 4
  br label %39

39:                                               ; preds = %109, %23
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %111

43:                                               ; preds = %39
  %44 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %45 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %47, align 8
  %49 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %50 = load i32, i32* @TEA575X_CLK, align 4
  %51 = call i32 %48(%struct.snd_tea575x* %49, i32 %50)
  %52 = call i32 @udelay(i32 2)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %43
  %56 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %57 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = bitcast {}** %59 to i32 (%struct.snd_tea575x*)**
  %61 = load i32 (%struct.snd_tea575x*)*, i32 (%struct.snd_tea575x*)** %60, align 8
  %62 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %63 = call i32 %61(%struct.snd_tea575x* %62)
  %64 = load i32, i32* @TEA575X_MOST, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 0, i32 1
  %69 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %70 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %55, %43
  %72 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %73 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %75, align 8
  %77 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %78 = call i32 %76(%struct.snd_tea575x* %77, i32 0)
  %79 = call i32 @udelay(i32 2)
  %80 = load i32, i32* %6, align 4
  %81 = shl i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %83 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = bitcast {}** %85 to i32 (%struct.snd_tea575x*)**
  %87 = load i32 (%struct.snd_tea575x*)*, i32 (%struct.snd_tea575x*)** %86, align 8
  %88 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %89 = call i32 %87(%struct.snd_tea575x* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %71
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @TEA575X_MOST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 0, i32 1
  %99 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %100 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %92, %71
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @TEA575X_DATA, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %106, %101
  %110 = call i32 @udelay(i32 2)
  br label %39

111:                                              ; preds = %39
  %112 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %113 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %118 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %120, align 8
  %122 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %123 = load i32, i32* @TEA575X_WREN, align 4
  %124 = call i32 %121(%struct.snd_tea575x* %122, i32 %123)
  br label %125

125:                                              ; preds = %116, %111
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %14
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
