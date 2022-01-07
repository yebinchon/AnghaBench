; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.sh_veu_file = type { i32, %struct.sh_veu_dev* }
%struct.sh_veu_dev = type { i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @sh_veu_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_veu_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sh_veu_file*, align 8
  %9 = alloca %struct.sh_veu_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.sh_veu_file*
  store %struct.sh_veu_file* %11, %struct.sh_veu_file** %8, align 8
  %12 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %13 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %12, i32 0, i32 1
  %14 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %13, align 8
  %15 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @sh_veu_is_streamer(%struct.sh_veu_dev* %14, %struct.sh_veu_file* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %3
  %23 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %24 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %29 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %28, i32 0, i32 1
  %30 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %29, align 8
  store %struct.sh_veu_dev* %30, %struct.sh_veu_dev** %9, align 8
  %31 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %32 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %34 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %33, i32 0, i32 1
  %35 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %34, align 8
  %36 = call i32 @sh_veu_configure(%struct.sh_veu_dev* %35)
  %37 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %9, align 8
  %38 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %9, align 8
  %40 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %27, %22
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %44 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %43, i32 0, i32 1
  %45 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %44, align 8
  %46 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @v4l2_m2m_streamon(%struct.file* %42, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %41, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @sh_veu_is_streamer(%struct.sh_veu_dev*, %struct.sh_veu_file*, i32) #1

declare dso_local i32 @sh_veu_configure(%struct.sh_veu_dev*) #1

declare dso_local i32 @v4l2_m2m_streamon(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
