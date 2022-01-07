; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_leb_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_leb_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i64, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i64, i32, i64, %struct.ubi_device* }
%struct.ubi_device = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"atomically write %d bytes to LEB %d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_READONLY = common dso_local global i64 0, align 8
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_leb_change(%struct.ubi_volume_desc* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_volume_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubi_volume*, align 8
  %11 = alloca %struct.ubi_device*, align 8
  %12 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %6, align 8
  %14 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %13, i32 0, i32 1
  %15 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  store %struct.ubi_volume* %15, %struct.ubi_volume** %10, align 8
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %17 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %16, i32 0, i32 4
  %18 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  store %struct.ubi_device* %18, %struct.ubi_device** %11, align 8
  %19 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %20 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dbg_gen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %96

37:                                               ; preds = %28
  %38 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %6, align 8
  %39 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @UBI_READONLY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %45 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @EROFS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %96

52:                                               ; preds = %43
  %53 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ubi_leb_valid(%struct.ubi_volume* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %63 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %69 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %67, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66, %60, %57, %52
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %96

77:                                               ; preds = %66
  %78 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %79 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EBADF, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %96

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %96

89:                                               ; preds = %85
  %90 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %91 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @ubi_eba_atomic_leb_change(%struct.ubi_device* %90, %struct.ubi_volume* %91, i32 %92, i8* %93, i32 %94)
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %89, %88, %82, %74, %49, %34
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_leb_valid(%struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_eba_atomic_leb_change(%struct.ubi_device*, %struct.ubi_volume*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
