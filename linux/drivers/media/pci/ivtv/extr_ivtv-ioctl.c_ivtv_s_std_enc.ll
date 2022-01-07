; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_std_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_std_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@IVTV_HW_CX25840 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_s_std_enc(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @V4L2_STD_525_60, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  %14 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %15 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %25 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %24, i32 0, i32 5
  %26 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %27 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cx2341x_handler_set_50hz(%struct.TYPE_4__* %25, i32 %28)
  %30 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %31 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 720, i32* %32, align 8
  %33 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %34 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 576, i32 480
  %39 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %40 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %43 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 18, i32 12
  %48 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %49 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %52 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 6, i32 10
  %57 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %58 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %56, i32* %61, align 4
  %62 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %63 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 318, i32 273
  %68 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %69 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %67, i32* %72, align 4
  %73 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %74 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IVTV_HW_CX25840, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %2
  %80 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %81 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 272, i32 284
  %86 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %87 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %79, %2
  %90 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %91 = load i32, i32* @video, align 4
  %92 = load i32, i32* @s_std, align 4
  %93 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %94 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ivtv_call_all(%struct.ivtv* %90, i32 %91, i32 %92, i32 %95)
  ret void
}

declare dso_local i32 @cx2341x_handler_set_50hz(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ivtv_call_all(%struct.ivtv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
