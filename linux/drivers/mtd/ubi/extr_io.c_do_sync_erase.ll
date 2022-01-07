; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_do_sync_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_do_sync_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i64 }
%struct.erase_info = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"erase PEB %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"read-only mode\00", align 1
@EROFS = common dso_local global i32 0, align 4
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"error %d while erasing PEB %d, retry\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot erase PEB %d, error %d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"cannot erase PEB %d (emulated)\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @do_sync_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sync_erase(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.erase_info, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @dbg_io(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ubi_assert(i32 %21)
  %23 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %29 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EROFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %91

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %56, %32
  %34 = call i32 @memset(%struct.erase_info* %8, i32 0, i32 8)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %37 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %42 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %46 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mtd_erase(i32 %47, %struct.erase_info* %8)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %33
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @UBI_IO_RETRIES, align 4
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ubi_warn(%struct.ubi_device* %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  %61 = call i32 (...) @yield()
  br label %33

62:                                               ; preds = %51
  %63 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65)
  %67 = call i32 (...) @dump_stack()
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %91

69:                                               ; preds = %33
  %70 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %73 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ubi_self_check_all_ff(%struct.ubi_device* %70, i32 %71, i32 0, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %91

80:                                               ; preds = %69
  %81 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %82 = call i64 @ubi_dbg_is_erase_failure(%struct.ubi_device* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %84, %78, %62, %27
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @dbg_io(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @memset(%struct.erase_info*, i32, i32) #1

declare dso_local i32 @mtd_erase(i32, %struct.erase_info*) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32, i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @ubi_self_check_all_ff(%struct.ubi_device*, i32, i32, i32) #1

declare dso_local i64 @ubi_dbg_is_erase_failure(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
