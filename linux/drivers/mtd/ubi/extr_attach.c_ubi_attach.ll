; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_ubi_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_ubi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i64, i32, i32, i32, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ubi_attach_info = type { i32, i32, i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"max. sequence number:       %llu\00", align 1
@UBI_FM_MAX_START = common dso_local global i32 0, align 4
@UBI_NO_FASTMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_attach(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_attach_info*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.ubi_attach_info* (...) @alloc_ai()
  store %struct.ubi_attach_info* %8, %struct.ubi_attach_info** %7, align 8
  %9 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %10 = icmp ne %struct.ubi_attach_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %92

14:                                               ; preds = %2
  %15 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %16 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %17 = call i32 @scan_all(%struct.ubi_device* %15, %struct.ubi_attach_info* %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %88

21:                                               ; preds = %14
  %22 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %23 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 6
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %35 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %34, i32 0, i32 8
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %37 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %40 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %42 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %45 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %47 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %52 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dbg_gen(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %56 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %57 = call i32 @ubi_read_volume_table(%struct.ubi_device* %55, %struct.ubi_attach_info* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %21
  br label %88

61:                                               ; preds = %21
  %62 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %63 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %64 = call i32 @ubi_wl_init(%struct.ubi_device* %62, %struct.ubi_attach_info* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %81

68:                                               ; preds = %61
  %69 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %70 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %71 = call i32 @ubi_eba_init(%struct.ubi_device* %69, %struct.ubi_attach_info* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %78

75:                                               ; preds = %68
  %76 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %77 = call i32 @destroy_ai(%struct.ubi_attach_info* %76)
  store i32 0, i32* %3, align 4
  br label %92

78:                                               ; preds = %74
  %79 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %80 = call i32 @ubi_wl_close(%struct.ubi_device* %79)
  br label %81

81:                                               ; preds = %78, %67
  %82 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %83 = call i32 @ubi_free_internal_volumes(%struct.ubi_device* %82)
  %84 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %85 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @vfree(i32 %86)
  br label %88

88:                                               ; preds = %81, %60, %20
  %89 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %90 = call i32 @destroy_ai(%struct.ubi_attach_info* %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %75, %11
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.ubi_attach_info* @alloc_ai(...) #1

declare dso_local i32 @scan_all(%struct.ubi_device*, %struct.ubi_attach_info*, i32) #1

declare dso_local i32 @dbg_gen(i8*, i32) #1

declare dso_local i32 @ubi_read_volume_table(%struct.ubi_device*, %struct.ubi_attach_info*) #1

declare dso_local i32 @ubi_wl_init(%struct.ubi_device*, %struct.ubi_attach_info*) #1

declare dso_local i32 @ubi_eba_init(%struct.ubi_device*, %struct.ubi_attach_info*) #1

declare dso_local i32 @destroy_ai(%struct.ubi_attach_info*) #1

declare dso_local i32 @ubi_wl_close(%struct.ubi_device*) #1

declare dso_local i32 @ubi_free_internal_volumes(%struct.ubi_device*) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
