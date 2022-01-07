; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_leb_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_leb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i64, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i64, i32, i64, %struct.ubi_device* }
%struct.ubi_device = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"write %d bytes to LEB %d:%d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_READONLY = common dso_local global i64 0, align 8
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_leb_write(%struct.ubi_volume_desc* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_volume_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubi_volume*, align 8
  %13 = alloca %struct.ubi_device*, align 8
  %14 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %7, align 8
  %16 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %15, i32 0, i32 1
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %16, align 8
  store %struct.ubi_volume* %17, %struct.ubi_volume** %12, align 8
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 4
  %20 = load %struct.ubi_device*, %struct.ubi_device** %19, align 8
  store %struct.ubi_device* %20, %struct.ubi_device** %13, align 8
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dbg_gen(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %5
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %113

40:                                               ; preds = %31
  %41 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %7, align 8
  %42 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @UBI_READONLY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %48 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @EROFS, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %113

55:                                               ; preds = %46
  %56 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ubi_leb_valid(%struct.ubi_volume* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %90, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %67, %68
  %70 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %71 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %90, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %77 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %75, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %85 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %83, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82, %74, %66, %63, %60, %55
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %113

93:                                               ; preds = %82
  %94 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %95 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @EBADF, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %113

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %113

105:                                              ; preds = %101
  %106 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %107 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @ubi_eba_write_leb(%struct.ubi_device* %106, %struct.ubi_volume* %107, i32 %108, i8* %109, i32 %110, i32 %111)
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %105, %104, %98, %90, %52, %37
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_leb_valid(%struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_eba_write_leb(%struct.ubi_device*, %struct.ubi_volume*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
