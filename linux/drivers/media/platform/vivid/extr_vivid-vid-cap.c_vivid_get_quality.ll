; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_get_quality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_get_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32 }

@TPG_QUAL_COLOR = common dso_local global i64 0, align 8
@TPG_QUAL_NOISE = common dso_local global i64 0, align 8
@TPG_QUAL_GRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vivid_dev*, i32*)* @vivid_get_quality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_get_quality(%struct.vivid_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vivid_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %13 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %12, i32 0, i32 1
  %14 = call i32 @tpg_g_quality(i32* %13)
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @TPG_QUAL_COLOR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %20 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %19, i32 0, i32 1
  %21 = call i32 @tpg_g_quality(i32* %20)
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @TPG_QUAL_NOISE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18, %11
  %26 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %26, i32 0, i32 1
  %28 = call i32 @tpg_g_quality(i32* %27)
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %18
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 676
  %34 = srem i32 %33, 96
  store i32 %34, i32* %6, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %38, 16
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* @TPG_QUAL_GRAY, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %25
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @tpg_g_quality(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
