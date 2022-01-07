; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_upd.c_ubi_start_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_upd.c_ubi_start_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_volume = type { i32, i32, i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"start update of volume %d, %llu bytes\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@UBI_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_start_update(%struct.ubi_device* %0, %struct.ubi_volume* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_volume*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %11 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @dbg_gen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %13)
  %15 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %16 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %21 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ false, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @ubi_assert(i32 %27)
  %29 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %30 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %32 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vmalloc(i32 %33)
  %35 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %36 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %38 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %117

44:                                               ; preds = %25
  %45 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %46 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %47 = call i32 @set_update_marker(%struct.ubi_device* %45, %struct.ubi_volume* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %117

52:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %56 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %61 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @ubi_eba_unmap_leb(%struct.ubi_device* %60, %struct.ubi_volume* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %117

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %74 = load i32, i32* @UBI_ALL, align 4
  %75 = load i32, i32* @UBI_ALL, align 4
  %76 = call i32 @ubi_wl_flush(%struct.ubi_device* %73, i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %117

81:                                               ; preds = %72
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %86 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %87 = call i32 @clear_update_marker(%struct.ubi_device* %85, %struct.ubi_volume* %86, i32 0)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %117

92:                                               ; preds = %84
  %93 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %94 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @vfree(i32 %95)
  %97 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %98 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  store i32 0, i32* %4, align 4
  br label %117

99:                                               ; preds = %81
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %102 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = sub nsw i64 %104, 1
  %106 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %107 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @div_u64(i64 %105, i64 %108)
  %110 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %111 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %114 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  %115 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %116 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %99, %92, %90, %79, %66, %50, %41
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @dbg_gen(i8*, i32, i64) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @set_update_marker(%struct.ubi_device*, %struct.ubi_volume*) #1

declare dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_wl_flush(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @clear_update_marker(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @div_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
