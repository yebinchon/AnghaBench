; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_init_all_fb_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_init_all_fb_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_vp9_inst*)* @init_all_fb_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_all_fb_lists(%struct.vdec_vp9_inst* %0) #0 {
  %2 = alloca %struct.vdec_vp9_inst*, align 8
  %3 = alloca i32, align 4
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %2, align 8
  %4 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %5 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %4, i32 0, i32 0
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %8 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %7, i32 0, i32 4
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %11 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %10, i32 0, i32 3
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %14 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %49, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %19 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %16
  %24 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %25 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %33 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %40 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %47 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  br label %49

49:                                               ; preds = %23
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %16

52:                                               ; preds = %16
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
