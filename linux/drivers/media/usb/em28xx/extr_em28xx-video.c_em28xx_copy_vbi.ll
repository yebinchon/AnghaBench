; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_copy_vbi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_copy_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.em28xx_buffer = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, %struct.em28xx_buffer*, i8*, i64)* @em28xx_copy_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_copy_vbi(%struct.em28xx* %0, %struct.em28xx_buffer* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.em28xx*, align 8
  %6 = alloca %struct.em28xx_buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %5, align 8
  store %struct.em28xx_buffer* %1, %struct.em28xx_buffer** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %11 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = add i64 %12, %13
  %15 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %19, %4
  %28 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %27
  %37 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul i32 %41, %46
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %36, %27
  %51 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @memcpy(i64 %56, i8* %57, i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
