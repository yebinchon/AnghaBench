; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-common.c_vimc_pads_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-common.c_vimc_pads_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_pad = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.media_pad* @vimc_pads_init(i32 %0, i64* %1) #0 {
  %3 = alloca %struct.media_pad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.media_pad*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.media_pad* @kcalloc(i32 %8, i32 16, i32 %9)
  store %struct.media_pad* %10, %struct.media_pad** %6, align 8
  %11 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %12 = icmp ne %struct.media_pad* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.media_pad* @ERR_PTR(i32 %15)
  store %struct.media_pad* %16, %struct.media_pad** %3, align 8
  br label %44

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %24, i64 %26
  %28 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %34, i64 %36
  %38 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %37, i32 0, i32 1
  store i64 %33, i64* %38, align 8
  br label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  store %struct.media_pad* %43, %struct.media_pad** %3, align 8
  br label %44

44:                                               ; preds = %42, %13
  %45 = load %struct.media_pad*, %struct.media_pad** %3, align 8
  ret %struct.media_pad* %45
}

declare dso_local %struct.media_pad* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.media_pad* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
