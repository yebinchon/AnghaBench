; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }

@meye = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MEYE_MAX_BUFNBRS = common dso_local global i32 0, align 4
@MEYE_BUF_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  %8 = call i32 (...) @mchip_hic_stop()
  %9 = call i32 @kfifo_reset(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3))
  %10 = call i32 @kfifo_reset(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2))
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %22, %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MEYE_MAX_BUFNBRS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* @MEYE_BUF_UNUSED, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 4
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %11

25:                                               ; preds = %11
  %26 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mchip_hic_stop(...) #1

declare dso_local i32 @kfifo_reset(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
