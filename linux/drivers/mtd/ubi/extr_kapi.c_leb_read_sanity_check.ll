; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_leb_read_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_leb_read_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i32, i64, i32, i64, %struct.ubi_device* }
%struct.ubi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_volume_desc*, i32, i32, i32)* @leb_read_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leb_read_sanity_check(%struct.ubi_volume_desc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_volume_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubi_volume*, align 8
  %11 = alloca %struct.ubi_device*, align 8
  %12 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %6, align 8
  %14 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %13, i32 0, i32 0
  %15 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  store %struct.ubi_volume* %15, %struct.ubi_volume** %10, align 8
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %17 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %16, i32 0, i32 6
  %18 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  store %struct.ubi_device* %18, %struct.ubi_device** %11, align 8
  %19 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %20 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %53, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %36 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %53, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %50 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45, %42, %39, %33, %30, %24, %4
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %96

56:                                               ; preds = %45
  %57 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %58 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %56
  %63 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %64 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %96

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %71 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp eq i32 %69, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %80 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %96

86:                                               ; preds = %75, %68
  br label %87

87:                                               ; preds = %86, %56
  %88 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %89 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @EBADF, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %96

95:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %92, %83, %67, %53
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
