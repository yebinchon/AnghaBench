; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_ubi.h_ubi_init_vid_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_ubi.h_ubi_init_vid_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }
%struct.ubi_vid_io_buf = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_device*, %struct.ubi_vid_io_buf*, i8*)* @ubi_init_vid_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubi_init_vid_buf(%struct.ubi_device* %0, %struct.ubi_vid_io_buf* %1, i8* %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_vid_io_buf*, align 8
  %6 = alloca i8*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_vid_io_buf* %1, %struct.ubi_vid_io_buf** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %12 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memset(i8* %10, i32 0, i32 %13)
  br label %15

15:                                               ; preds = %9, %3
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %5, align 8
  %18 = getelementptr inbounds %struct.ubi_vid_io_buf, %struct.ubi_vid_io_buf* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %19, i64 %23
  %25 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %5, align 8
  %26 = getelementptr inbounds %struct.ubi_vid_io_buf, %struct.ubi_vid_io_buf* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
