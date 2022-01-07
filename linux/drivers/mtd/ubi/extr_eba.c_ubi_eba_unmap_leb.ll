; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_unmap_leb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_unmap_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i64 }
%struct.ubi_volume = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"erase LEB %d:%d, PEB %d\00", align 1
@UBI_LEB_UNMAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device* %0, %struct.ubi_volume* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_volume*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %12 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EROFS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %76

21:                                               ; preds = %3
  %22 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @leb_write_lock(%struct.ubi_device* %22, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %76

30:                                               ; preds = %21
  %31 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %32 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %70

44:                                               ; preds = %30
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dbg_eba(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 0
  %51 = call i32 @down_read(i32* %50)
  %52 = load i32, i32* @UBI_LEB_UNMAPPED, align 4
  %53 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %54 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %52, i32* %61, align 4
  %62 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %63 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %62, i32 0, i32 0
  %64 = call i32 @up_read(i32* %63)
  %65 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %65, i32 %66, i32 %67, i32 %68, i32 0)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %44, %43
  %71 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @leb_write_unlock(%struct.ubi_device* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %28, %18
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @leb_write_lock(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @dbg_eba(i8*, i32, i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ubi_wl_put_peb(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @leb_write_unlock(%struct.ubi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
