; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_ubi.h_ubi_alloc_vid_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_ubi.h_ubi_alloc_vid_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_vid_io_buf* (%struct.ubi_device*, i32)* @ubi_alloc_vid_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_vid_io_buf*, align 8
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_vid_io_buf*, align 8
  %7 = alloca i8*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.ubi_vid_io_buf* @kzalloc(i32 4, i32 %8)
  store %struct.ubi_vid_io_buf* %9, %struct.ubi_vid_io_buf** %6, align 8
  %10 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %6, align 8
  %11 = icmp ne %struct.ubi_vid_io_buf* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.ubi_vid_io_buf* null, %struct.ubi_vid_io_buf** %3, align 8
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @kmalloc(i32 %16, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %6, align 8
  %23 = call i32 @kfree(%struct.ubi_vid_io_buf* %22)
  store %struct.ubi_vid_io_buf* null, %struct.ubi_vid_io_buf** %3, align 8
  br label %30

24:                                               ; preds = %13
  %25 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %26 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @ubi_init_vid_buf(%struct.ubi_device* %25, %struct.ubi_vid_io_buf* %26, i8* %27)
  %29 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %6, align 8
  store %struct.ubi_vid_io_buf* %29, %struct.ubi_vid_io_buf** %3, align 8
  br label %30

30:                                               ; preds = %24, %21, %12
  %31 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %3, align 8
  ret %struct.ubi_vid_io_buf* %31
}

declare dso_local %struct.ubi_vid_io_buf* @kzalloc(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_init_vid_buf(%struct.ubi_device*, %struct.ubi_vid_io_buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
