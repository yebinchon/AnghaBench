; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i32 }
%struct.sh_veu_file = type { %struct.sh_veu_dev* }
%struct.sh_veu_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @sh_veu_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_veu_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.sh_veu_file*, align 8
  %9 = alloca %struct.sh_veu_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sh_veu_file*
  store %struct.sh_veu_file* %12, %struct.sh_veu_file** %8, align 8
  %13 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %14 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %13, i32 0, i32 0
  %15 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %14, align 8
  store %struct.sh_veu_dev* %15, %struct.sh_veu_dev** %9, align 8
  %16 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %9, align 8
  %17 = call i32 @sh_veu_context_init(%struct.sh_veu_dev* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %40

22:                                               ; preds = %3
  %23 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %9, align 8
  %24 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %25 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sh_veu_stream_init(%struct.sh_veu_dev* %23, %struct.sh_veu_file* %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %22
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %9, align 8
  %36 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %39 = call i32 @v4l2_m2m_reqbufs(%struct.file* %34, i32 %37, %struct.v4l2_requestbuffers* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %31, %20
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @sh_veu_context_init(%struct.sh_veu_dev*) #1

declare dso_local i32 @sh_veu_stream_init(%struct.sh_veu_dev*, %struct.sh_veu_file*, i32) #1

declare dso_local i32 @v4l2_m2m_reqbufs(%struct.file*, i32, %struct.v4l2_requestbuffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
