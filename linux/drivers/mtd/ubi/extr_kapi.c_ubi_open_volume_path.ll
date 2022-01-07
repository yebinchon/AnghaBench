; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_open_volume_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_open_volume_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32 }
%struct.path = type { i32 }
%struct.kstat = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"open volume %s, mode %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@STATX_TYPE = common dso_local global i32 0, align 4
@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubi_volume_desc* @ubi_open_volume_path(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_volume_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.path, align 4
  %10 = alloca %struct.kstat, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @dbg_gen(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %22)
  store %struct.ubi_volume_desc* %23, %struct.ubi_volume_desc** %3, align 8
  br label %75

24:                                               ; preds = %16
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %27 = call i32 @kern_path(i8* %25, i32 %26, %struct.path* %9)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %31)
  store %struct.ubi_volume_desc* %32, %struct.ubi_volume_desc** %3, align 8
  br label %75

33:                                               ; preds = %24
  %34 = load i32, i32* @STATX_TYPE, align 4
  %35 = load i32, i32* @AT_STATX_SYNC_AS_STAT, align 4
  %36 = call i32 @vfs_getattr(%struct.path* %9, %struct.kstat* %10, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = call i32 @path_put(%struct.path* %9)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %41)
  store %struct.ubi_volume_desc* %42, %struct.ubi_volume_desc** %3, align 8
  br label %75

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.kstat, %struct.kstat* %10, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @S_ISCHR(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %50)
  store %struct.ubi_volume_desc* %51, %struct.ubi_volume_desc** %3, align 8
  br label %75

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.kstat, %struct.kstat* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @MAJOR(i32 %54)
  %56 = call i32 @ubi_major2num(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = getelementptr inbounds %struct.kstat, %struct.kstat* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @MINOR(i32 %58)
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %52
  %64 = load i32, i32* %7, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call %struct.ubi_volume_desc* @ubi_open_volume(i32 %67, i32 %68, i32 %69)
  store %struct.ubi_volume_desc* %70, %struct.ubi_volume_desc** %3, align 8
  br label %75

71:                                               ; preds = %63, %52
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %73)
  store %struct.ubi_volume_desc* %74, %struct.ubi_volume_desc** %3, align 8
  br label %75

75:                                               ; preds = %71, %66, %48, %40, %30, %20
  %76 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  ret %struct.ubi_volume_desc* %76
}

declare dso_local i32 @dbg_gen(i8*, i8*, i32) #1

declare dso_local %struct.ubi_volume_desc* @ERR_PTR(i32) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @vfs_getattr(%struct.path*, %struct.kstat*, i32, i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @ubi_major2num(i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local %struct.ubi_volume_desc* @ubi_open_volume(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
