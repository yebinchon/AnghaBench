; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_leb_read_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_leb_read_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i64, i32, %struct.ubi_device* }
%struct.ubi_device = type { i32 }
%struct.ubi_sgl = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"read %d bytes from LEB %d:%d:%d\00", align 1
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"mark volume %d as corrupted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_leb_read_sg(%struct.ubi_volume_desc* %0, i32 %1, %struct.ubi_sgl* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_volume_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubi_sgl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubi_volume*, align 8
  %15 = alloca %struct.ubi_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ubi_sgl* %2, %struct.ubi_sgl** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %8, align 8
  %19 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %18, i32 0, i32 0
  %20 = load %struct.ubi_volume*, %struct.ubi_volume** %19, align 8
  store %struct.ubi_volume* %20, %struct.ubi_volume** %14, align 8
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 3
  %23 = load %struct.ubi_device*, %struct.ubi_device** %22, align 8
  store %struct.ubi_device* %23, %struct.ubi_device** %15, align 8
  %24 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %25 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @dbg_gen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @leb_read_sanity_check(%struct.ubi_volume_desc* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %6
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %7, align 4
  br label %74

41:                                               ; preds = %6
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %74

45:                                               ; preds = %41
  %46 = load %struct.ubi_device*, %struct.ubi_device** %15, align 8
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %48 = load %struct.ubi_sgl*, %struct.ubi_sgl** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @ubi_eba_read_leb_sg(%struct.ubi_device* %46, %struct.ubi_volume* %47, %struct.ubi_sgl* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %45
  %57 = load i32, i32* %16, align 4
  %58 = call i64 @mtd_is_eccerr(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %62 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.ubi_device*, %struct.ubi_device** %15, align 8
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @ubi_warn(%struct.ubi_device* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %71 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %66, %60, %56, %45
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %44, %39
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @leb_read_sanity_check(%struct.ubi_volume_desc*, i32, i32, i32) #1

declare dso_local i32 @ubi_eba_read_leb_sg(%struct.ubi_device*, %struct.ubi_volume*, %struct.ubi_sgl*, i32, i32, i32, i32) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
