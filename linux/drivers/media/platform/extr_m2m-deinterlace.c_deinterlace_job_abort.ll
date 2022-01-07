; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_deinterlace_job_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_deinterlace_job_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deinterlace_ctx = type { i32, %struct.TYPE_2__, %struct.deinterlace_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.deinterlace_dev = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Aborting task\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @deinterlace_job_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deinterlace_job_abort(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.deinterlace_ctx*, align 8
  %4 = alloca %struct.deinterlace_dev*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.deinterlace_ctx*
  store %struct.deinterlace_ctx* %6, %struct.deinterlace_ctx** %3, align 8
  %7 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %7, i32 0, i32 2
  %9 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %8, align 8
  store %struct.deinterlace_dev* %9, %struct.deinterlace_dev** %4, align 8
  %10 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %4, align 8
  %13 = call i32 @dprintk(%struct.deinterlace_dev* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %4, align 8
  %15 = getelementptr inbounds %struct.deinterlace_dev, %struct.deinterlace_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @v4l2_m2m_job_finish(i32 %16, i32 %20)
  ret void
}

declare dso_local i32 @dprintk(%struct.deinterlace_dev*, i8*) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
