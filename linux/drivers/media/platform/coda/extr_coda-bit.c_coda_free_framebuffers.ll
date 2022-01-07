; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_free_framebuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_free_framebuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CODA_MAX_FRAMEBUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @coda_free_framebuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_free_framebuffers(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @CODA_MAX_FRAMEBUFFERS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @coda_free_aux_buf(i32 %11, i32* %18)
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  ret void
}

declare dso_local i32 @coda_free_aux_buf(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
