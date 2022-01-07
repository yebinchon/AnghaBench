; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_leb_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_leb_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i64, %struct.ubi_volume* }
%struct.ubi_volume = type { i64, i32, i64, %struct.ubi_device* }
%struct.ubi_device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"erase LEB %d:%d\00", align 1
@UBI_READONLY = common dso_local global i64 0, align 8
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_leb_erase(%struct.ubi_volume_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_volume_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_volume*, align 8
  %7 = alloca %struct.ubi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  %10 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %9, i32 0, i32 1
  %11 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  store %struct.ubi_volume* %11, %struct.ubi_volume** %6, align 8
  %12 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %13 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %12, i32 0, i32 3
  %14 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  store %struct.ubi_device* %14, %struct.ubi_device** %7, align 8
  %15 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %16 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dbg_gen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  %21 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UBI_READONLY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %27 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %2
  %32 = load i32, i32* @EROFS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %66

34:                                               ; preds = %25
  %35 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ubi_leb_valid(%struct.ubi_volume* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %34
  %43 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %44 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EBADF, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %66

50:                                               ; preds = %42
  %51 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %52 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ubi_eba_unmap_leb(%struct.ubi_device* %51, %struct.ubi_volume* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %66

59:                                               ; preds = %50
  %60 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %61 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %62 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @ubi_wl_flush(%struct.ubi_device* %60, i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %57, %47, %39, %31
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @dbg_gen(i8*, i32, i32) #1

declare dso_local i32 @ubi_leb_valid(%struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_wl_flush(%struct.ubi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
