; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_upd.c_clear_update_marker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_upd.c_clear_update_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, %struct.ubi_vtbl_record* }
%struct.ubi_vtbl_record = type { i64 }
%struct.ubi_volume = type { i64, i64, i64, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"clear update marker for volume %d\00", align 1
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_volume*, i64)* @clear_update_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_update_marker(%struct.ubi_device* %0, %struct.ubi_volume* %1, i64 %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_volume*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_vtbl_record, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @dbg_gen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 1
  %15 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %14, align 8
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %17 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %15, i64 %18
  %20 = bitcast %struct.ubi_vtbl_record* %8 to i8*
  %21 = bitcast %struct.ubi_vtbl_record* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %23 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %3
  %31 = phi i1 [ false, %3 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @ubi_assert(i32 %32)
  %34 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %8, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %36 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %30
  %41 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %42 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %45 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %48 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %51 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %50, i32 0, i32 6
  %52 = call i32 @div_u64_rem(i64 %46, i64 %49, i64* %51)
  %53 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %54 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %56 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %40
  %60 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %61 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %70

64:                                               ; preds = %40
  %65 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %66 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %69 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %68, i32 0, i32 6
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %59
  br label %71

71:                                               ; preds = %70, %30
  %72 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %73 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %76 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %77 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @ubi_change_vtbl_record(%struct.ubi_device* %75, i64 %78, %struct.ubi_vtbl_record* %8)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %81 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %83 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @dbg_gen(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @div_u64_rem(i64, i64, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_change_vtbl_record(%struct.ubi_device*, i64, %struct.ubi_vtbl_record*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
