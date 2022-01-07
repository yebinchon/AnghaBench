; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_set_vbi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_set_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i64 }

@TM6010 = common dso_local global i64 0, align 8
@TM6010_REQ07_R3F_RESET = common dso_local global i32 0, align 4
@TM6010_REQ07_R41_TELETEXT_VBI_CODE1 = common dso_local global i32 0, align 4
@TM6010_REQ07_R42_VBI_DATA_HIGH_LEVEL = common dso_local global i32 0, align 4
@TM6010_REQ07_R43_VBI_DATA_TYPE_LINE7 = common dso_local global i32 0, align 4
@TM6010_REQ07_R44_VBI_DATA_TYPE_LINE8 = common dso_local global i32 0, align 4
@TM6010_REQ07_R45_VBI_DATA_TYPE_LINE9 = common dso_local global i32 0, align 4
@TM6010_REQ07_R46_VBI_DATA_TYPE_LINE10 = common dso_local global i32 0, align 4
@TM6010_REQ07_R47_VBI_DATA_TYPE_LINE11 = common dso_local global i32 0, align 4
@TM6010_REQ07_R48_VBI_DATA_TYPE_LINE12 = common dso_local global i32 0, align 4
@TM6010_REQ07_R49_VBI_DATA_TYPE_LINE13 = common dso_local global i32 0, align 4
@TM6010_REQ07_R4A_VBI_DATA_TYPE_LINE14 = common dso_local global i32 0, align 4
@TM6010_REQ07_R4B_VBI_DATA_TYPE_LINE15 = common dso_local global i32 0, align 4
@TM6010_REQ07_R4C_VBI_DATA_TYPE_LINE16 = common dso_local global i32 0, align 4
@TM6010_REQ07_R4D_VBI_DATA_TYPE_LINE17 = common dso_local global i32 0, align 4
@TM6010_REQ07_R4E_VBI_DATA_TYPE_LINE18 = common dso_local global i32 0, align 4
@TM6010_REQ07_R4F_VBI_DATA_TYPE_LINE19 = common dso_local global i32 0, align 4
@TM6010_REQ07_R50_VBI_DATA_TYPE_LINE20 = common dso_local global i32 0, align 4
@TM6010_REQ07_R51_VBI_DATA_TYPE_LINE21 = common dso_local global i32 0, align 4
@TM6010_REQ07_R52_VBI_DATA_TYPE_LINE22 = common dso_local global i32 0, align 4
@TM6010_REQ07_R53_VBI_DATA_TYPE_LINE23 = common dso_local global i32 0, align 4
@TM6010_REQ07_R54_VBI_DATA_TYPE_RLINES = common dso_local global i32 0, align 4
@TM6010_REQ07_R55_VBI_LOOP_FILTER_GAIN = common dso_local global i32 0, align 4
@TM6010_REQ07_R56_VBI_LOOP_FILTER_I_GAIN = common dso_local global i32 0, align 4
@TM6010_REQ07_R57_VBI_LOOP_FILTER_P_GAIN = common dso_local global i32 0, align 4
@TM6010_REQ07_R58_VBI_CAPTION_DTO1 = common dso_local global i32 0, align 4
@TM6010_REQ07_R59_VBI_CAPTION_DTO0 = common dso_local global i32 0, align 4
@TM6010_REQ07_R5A_VBI_TELETEXT_DTO1 = common dso_local global i32 0, align 4
@TM6010_REQ07_R5B_VBI_TELETEXT_DTO0 = common dso_local global i32 0, align 4
@TM6010_REQ07_R40_TELETEXT_VBI_CODE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm6000_core*)* @tm6000_set_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm6000_set_vbi(%struct.tm6000_core* %0) #0 {
  %2 = alloca %struct.tm6000_core*, align 8
  store %struct.tm6000_core* %0, %struct.tm6000_core** %2, align 8
  %3 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %4 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TM6010, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %99

8:                                                ; preds = %1
  %9 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %10 = load i32, i32* @TM6010_REQ07_R3F_RESET, align 4
  %11 = call i32 @tm6000_set_reg(%struct.tm6000_core* %9, i32 %10, i32 1)
  %12 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %13 = load i32, i32* @TM6010_REQ07_R41_TELETEXT_VBI_CODE1, align 4
  %14 = call i32 @tm6000_set_reg(%struct.tm6000_core* %12, i32 %13, i32 39)
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %16 = load i32, i32* @TM6010_REQ07_R42_VBI_DATA_HIGH_LEVEL, align 4
  %17 = call i32 @tm6000_set_reg(%struct.tm6000_core* %15, i32 %16, i32 85)
  %18 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %19 = load i32, i32* @TM6010_REQ07_R43_VBI_DATA_TYPE_LINE7, align 4
  %20 = call i32 @tm6000_set_reg(%struct.tm6000_core* %18, i32 %19, i32 102)
  %21 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %22 = load i32, i32* @TM6010_REQ07_R44_VBI_DATA_TYPE_LINE8, align 4
  %23 = call i32 @tm6000_set_reg(%struct.tm6000_core* %21, i32 %22, i32 102)
  %24 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %25 = load i32, i32* @TM6010_REQ07_R45_VBI_DATA_TYPE_LINE9, align 4
  %26 = call i32 @tm6000_set_reg(%struct.tm6000_core* %24, i32 %25, i32 102)
  %27 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %28 = load i32, i32* @TM6010_REQ07_R46_VBI_DATA_TYPE_LINE10, align 4
  %29 = call i32 @tm6000_set_reg(%struct.tm6000_core* %27, i32 %28, i32 102)
  %30 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %31 = load i32, i32* @TM6010_REQ07_R47_VBI_DATA_TYPE_LINE11, align 4
  %32 = call i32 @tm6000_set_reg(%struct.tm6000_core* %30, i32 %31, i32 102)
  %33 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %34 = load i32, i32* @TM6010_REQ07_R48_VBI_DATA_TYPE_LINE12, align 4
  %35 = call i32 @tm6000_set_reg(%struct.tm6000_core* %33, i32 %34, i32 102)
  %36 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %37 = load i32, i32* @TM6010_REQ07_R49_VBI_DATA_TYPE_LINE13, align 4
  %38 = call i32 @tm6000_set_reg(%struct.tm6000_core* %36, i32 %37, i32 102)
  %39 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %40 = load i32, i32* @TM6010_REQ07_R4A_VBI_DATA_TYPE_LINE14, align 4
  %41 = call i32 @tm6000_set_reg(%struct.tm6000_core* %39, i32 %40, i32 102)
  %42 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %43 = load i32, i32* @TM6010_REQ07_R4B_VBI_DATA_TYPE_LINE15, align 4
  %44 = call i32 @tm6000_set_reg(%struct.tm6000_core* %42, i32 %43, i32 102)
  %45 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %46 = load i32, i32* @TM6010_REQ07_R4C_VBI_DATA_TYPE_LINE16, align 4
  %47 = call i32 @tm6000_set_reg(%struct.tm6000_core* %45, i32 %46, i32 102)
  %48 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %49 = load i32, i32* @TM6010_REQ07_R4D_VBI_DATA_TYPE_LINE17, align 4
  %50 = call i32 @tm6000_set_reg(%struct.tm6000_core* %48, i32 %49, i32 102)
  %51 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %52 = load i32, i32* @TM6010_REQ07_R4E_VBI_DATA_TYPE_LINE18, align 4
  %53 = call i32 @tm6000_set_reg(%struct.tm6000_core* %51, i32 %52, i32 102)
  %54 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %55 = load i32, i32* @TM6010_REQ07_R4F_VBI_DATA_TYPE_LINE19, align 4
  %56 = call i32 @tm6000_set_reg(%struct.tm6000_core* %54, i32 %55, i32 102)
  %57 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %58 = load i32, i32* @TM6010_REQ07_R50_VBI_DATA_TYPE_LINE20, align 4
  %59 = call i32 @tm6000_set_reg(%struct.tm6000_core* %57, i32 %58, i32 102)
  %60 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %61 = load i32, i32* @TM6010_REQ07_R51_VBI_DATA_TYPE_LINE21, align 4
  %62 = call i32 @tm6000_set_reg(%struct.tm6000_core* %60, i32 %61, i32 102)
  %63 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %64 = load i32, i32* @TM6010_REQ07_R52_VBI_DATA_TYPE_LINE22, align 4
  %65 = call i32 @tm6000_set_reg(%struct.tm6000_core* %63, i32 %64, i32 102)
  %66 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %67 = load i32, i32* @TM6010_REQ07_R53_VBI_DATA_TYPE_LINE23, align 4
  %68 = call i32 @tm6000_set_reg(%struct.tm6000_core* %66, i32 %67, i32 0)
  %69 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %70 = load i32, i32* @TM6010_REQ07_R54_VBI_DATA_TYPE_RLINES, align 4
  %71 = call i32 @tm6000_set_reg(%struct.tm6000_core* %69, i32 %70, i32 0)
  %72 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %73 = load i32, i32* @TM6010_REQ07_R55_VBI_LOOP_FILTER_GAIN, align 4
  %74 = call i32 @tm6000_set_reg(%struct.tm6000_core* %72, i32 %73, i32 1)
  %75 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %76 = load i32, i32* @TM6010_REQ07_R56_VBI_LOOP_FILTER_I_GAIN, align 4
  %77 = call i32 @tm6000_set_reg(%struct.tm6000_core* %75, i32 %76, i32 0)
  %78 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %79 = load i32, i32* @TM6010_REQ07_R57_VBI_LOOP_FILTER_P_GAIN, align 4
  %80 = call i32 @tm6000_set_reg(%struct.tm6000_core* %78, i32 %79, i32 2)
  %81 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %82 = load i32, i32* @TM6010_REQ07_R58_VBI_CAPTION_DTO1, align 4
  %83 = call i32 @tm6000_set_reg(%struct.tm6000_core* %81, i32 %82, i32 53)
  %84 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %85 = load i32, i32* @TM6010_REQ07_R59_VBI_CAPTION_DTO0, align 4
  %86 = call i32 @tm6000_set_reg(%struct.tm6000_core* %84, i32 %85, i32 160)
  %87 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %88 = load i32, i32* @TM6010_REQ07_R5A_VBI_TELETEXT_DTO1, align 4
  %89 = call i32 @tm6000_set_reg(%struct.tm6000_core* %87, i32 %88, i32 17)
  %90 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %91 = load i32, i32* @TM6010_REQ07_R5B_VBI_TELETEXT_DTO0, align 4
  %92 = call i32 @tm6000_set_reg(%struct.tm6000_core* %90, i32 %91, i32 76)
  %93 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %94 = load i32, i32* @TM6010_REQ07_R40_TELETEXT_VBI_CODE0, align 4
  %95 = call i32 @tm6000_set_reg(%struct.tm6000_core* %93, i32 %94, i32 1)
  %96 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %97 = load i32, i32* @TM6010_REQ07_R3F_RESET, align 4
  %98 = call i32 @tm6000_set_reg(%struct.tm6000_core* %96, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
