; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_autoresize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_autoresize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, %struct.ubi_vtbl_record*, i64, %struct.ubi_volume** }
%struct.ubi_vtbl_record = type { i32 }
%struct.ubi_volume = type { i32, i32 }
%struct.ubi_volume_desc = type { %struct.ubi_volume* }

@.str = private unnamed_addr constant [37 x i8] c"skip auto-resize because of R/O mode\00", align 1
@UBI_VTBL_AUTORESIZE_FLG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"cannot clean auto-resize flag for volume %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot auto-resize volume %d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"volume %d (\22%s\22) re-sized from %d to %d LEBs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @autoresize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autoresize(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_volume_desc, align 8
  %7 = alloca %struct.ubi_volume*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubi_vtbl_record, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %12 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %11, i32 0, i32 3
  %13 = load %struct.ubi_volume**, %struct.ubi_volume*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %13, i64 %15
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %16, align 8
  store %struct.ubi_volume* %17, %struct.ubi_volume** %7, align 8
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %27 = call i32 @ubi_warn(%struct.ubi_device* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

28:                                               ; preds = %2
  %29 = load i32, i32* @UBI_VTBL_AUTORESIZE_FLG, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %32 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %31, i32 0, i32 1
  %33 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %33, i64 %35
  %37 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %30
  store i32 %39, i32* %37, align 4
  %40 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %41 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %28
  %45 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %46 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %45, i32 0, i32 1
  %47 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %47, i64 %49
  %51 = bitcast %struct.ubi_vtbl_record* %10 to i8*
  %52 = bitcast %struct.ubi_vtbl_record* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ubi_change_vtbl_record(%struct.ubi_device* %53, i32 %54, %struct.ubi_vtbl_record* %10)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ubi_err(%struct.ubi_device* %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %44
  br label %80

63:                                               ; preds = %28
  %64 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %65 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %6, i32 0, i32 0
  store %struct.ubi_volume* %64, %struct.ubi_volume** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %69 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i32 @ubi_resize_volume(%struct.ubi_volume_desc* %6, i64 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ubi_err(%struct.ubi_device* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %63
  br label %80

80:                                               ; preds = %79, %62
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %96

85:                                               ; preds = %80
  %86 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %89 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %93 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ubi_msg(%struct.ubi_device* %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %90, i32 %91, i32 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %85, %83, %25
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ubi_change_vtbl_record(%struct.ubi_device*, i32, %struct.ubi_vtbl_record*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @ubi_resize_volume(%struct.ubi_volume_desc*, i64) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
