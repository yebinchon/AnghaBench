; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_v4l2_ch_ext_4up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_v4l2_ch_ext_4up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*, i32, i32)* @solo_v4l2_ch_ext_4up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_v4l2_ch_ext_4up(%struct.solo_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.solo_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = mul nsw i32 %10, 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %14 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %102

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %44, %23
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %34 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %37 = call i32 @solo_vlines(%struct.solo_dev* %36)
  %38 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %39 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %42 = call i32 @solo_vlines(%struct.solo_dev* %41)
  %43 = call i32 @solo_win_setup(%struct.solo_dev* %31, i32 %32, i32 %35, i32 %37, i32 %40, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %25

47:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %102

48:                                               ; preds = %20
  %49 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %52 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 2
  %55 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %56 = call i32 @solo_vlines(%struct.solo_dev* %55)
  %57 = sdiv i32 %56, 2
  %58 = call i32 @solo_win_setup(%struct.solo_dev* %49, i32 %50, i32 0, i32 0, i32 %54, i32 %57, i32 3)
  %59 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  %62 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %63 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 2
  %66 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %67 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %70 = call i32 @solo_vlines(%struct.solo_dev* %69)
  %71 = sdiv i32 %70, 2
  %72 = call i32 @solo_win_setup(%struct.solo_dev* %59, i32 %61, i32 %65, i32 0, i32 %68, i32 %71, i32 3)
  %73 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 2
  %76 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %77 = call i32 @solo_vlines(%struct.solo_dev* %76)
  %78 = sdiv i32 %77, 2
  %79 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %80 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 2
  %83 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %84 = call i32 @solo_vlines(%struct.solo_dev* %83)
  %85 = call i32 @solo_win_setup(%struct.solo_dev* %73, i32 %75, i32 0, i32 %78, i32 %82, i32 %84, i32 3)
  %86 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 3
  %89 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %90 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 2
  %93 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %94 = call i32 @solo_vlines(%struct.solo_dev* %93)
  %95 = sdiv i32 %94, 2
  %96 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %97 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %100 = call i32 @solo_vlines(%struct.solo_dev* %99)
  %101 = call i32 @solo_win_setup(%struct.solo_dev* %86, i32 %88, i32 %92, i32 %95, i32 %98, i32 %100, i32 3)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %48, %47, %17
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @solo_win_setup(%struct.solo_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @solo_vlines(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
