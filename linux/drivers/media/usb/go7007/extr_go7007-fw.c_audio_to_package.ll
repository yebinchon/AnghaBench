; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_audio_to_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_audio_to_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GO7007_AUDIO_I2S_MASTER = common dso_local global i32 0, align 4
@GO7007_AUDIO_OKI_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32*, i32)* @audio_to_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_to_package(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i32], align 16
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.go7007*, %struct.go7007** %4, align 8
  %10 = getelementptr inbounds %struct.go7007, %struct.go7007* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GO7007_AUDIO_I2S_MASTER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = shl i32 %18, 11
  %20 = load %struct.go7007*, %struct.go7007** %4, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GO7007_AUDIO_OKI_MODE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = shl i32 %29, 8
  %31 = or i32 %19, %30
  %32 = load %struct.go7007*, %struct.go7007** %4, align 8
  %33 = getelementptr inbounds %struct.go7007, %struct.go7007* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 4
  %38 = sub nsw i32 %37, 1
  %39 = shl i32 %38, 4
  %40 = or i32 %31, %39
  %41 = load %struct.go7007*, %struct.go7007** %4, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = or i32 %40, %46
  store i32 %47, i32* %7, align 4
  %48 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  store i32 8205, i32* %48, align 4
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 36866, i32* %50, align 4
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 36866, i32* %52, align 4
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 36913, i32* %54, align 4
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 36914, i32* %56, align 4
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 36915, i32* %58, align 4
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 36916, i32* %60, align 4
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 36917, i32* %62, align 4
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 36918, i32* %64, align 4
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 36919, i32* %66, align 4
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 36928, i32* %68, align 4
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 36864, i32* %70, align 4
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %71, align 4
  %73 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 36865, i32* %73, align 4
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load %struct.go7007*, %struct.go7007** %4, align 8
  %76 = getelementptr inbounds %struct.go7007, %struct.go7007* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 65535
  %81 = or i32 %80, 512
  store i32 %81, i32* %74, align 4
  %82 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 36864, i32* %82, align 4
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load %struct.go7007*, %struct.go7007** %4, align 8
  %85 = getelementptr inbounds %struct.go7007, %struct.go7007* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @GO7007_AUDIO_I2S_MASTER, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  %94 = shl i32 %93, 10
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %83, align 4
  %97 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 0, i32* %98, align 4
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 0, i32* %100, align 4
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 8197, i32* %101, align 4
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 36929, i32* %103, align 4
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 36930, i32* %105, align 4
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 256, i32* %106, align 4
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 36931, i32* %107, align 4
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 36932, i32* %109, align 4
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 16, i32* %110, align 4
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 36933, i32* %111, align 4
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 16, i32* %112, align 4
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 0, i32* %113, align 4
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 0, i32* %115, align 4
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 0, i32* %117, align 4
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 0, i32* %119, align 4
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 0, i32* %121, align 4
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 0, i32* %122, align 4
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 0, i32* %123, align 4
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 0, i32* %126, align 4
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 0, i32* %128, align 4
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 0, i32* %129, align 4
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 0, i32* %130, align 4
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 0, i32* %132, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @copy_packages(i32* %133, i32* %134, i32 2, i32 %135)
  ret i32 %136
}

declare dso_local i32 @copy_packages(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
