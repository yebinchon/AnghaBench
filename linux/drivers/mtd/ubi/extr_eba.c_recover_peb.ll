; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_recover_peb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_recover_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { %struct.ubi_volume** }
%struct.ubi_volume = type { i32 }
%struct.ubi_vid_io_buf = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"try again\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32, i32, i32, i8*, i32, i32)* @recover_peb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_peb(%struct.ubi_device* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ubi_volume*, align 8
  %20 = alloca %struct.ubi_vid_io_buf*, align 8
  %21 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @vol_id2idx(%struct.ubi_device* %22, i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 0
  %27 = load %struct.ubi_volume**, %struct.ubi_volume*** %26, align 8
  %28 = load i32, i32* %17, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %27, i64 %29
  %31 = load %struct.ubi_volume*, %struct.ubi_volume** %30, align 8
  store %struct.ubi_volume* %31, %struct.ubi_volume** %19, align 8
  %32 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device* %32, i32 %33)
  store %struct.ubi_vid_io_buf* %34, %struct.ubi_vid_io_buf** %20, align 8
  %35 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %20, align 8
  %36 = icmp ne %struct.ubi_vid_io_buf* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %7
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %70

40:                                               ; preds = %7
  store i32 0, i32* %18, align 4
  br label %41

41:                                               ; preds = %63, %40
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @UBI_IO_RETRIES, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load %struct.ubi_volume*, %struct.ubi_volume** %19, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %20, align 8
  %53 = call i32 @try_recover_peb(%struct.ubi_volume* %46, i32 %47, i32 %48, i8* %49, i32 %50, i32 %51, %struct.ubi_vid_io_buf* %52, i32* %21)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* %21, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56, %45
  br label %66

60:                                               ; preds = %56
  %61 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %62 = call i32 @ubi_msg(%struct.ubi_device* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %18, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %18, align 4
  br label %41

66:                                               ; preds = %59, %41
  %67 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %20, align 8
  %68 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %67)
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %37
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @vol_id2idx(%struct.ubi_device*, i32) #1

declare dso_local %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device*, i32) #1

declare dso_local i32 @try_recover_peb(%struct.ubi_volume*, i32, i32, i8*, i32, i32, %struct.ubi_vid_io_buf*, i32*) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*) #1

declare dso_local i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
