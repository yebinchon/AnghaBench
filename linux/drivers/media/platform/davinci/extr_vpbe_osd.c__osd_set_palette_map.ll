; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_palette_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_palette_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }

@_osd_set_palette_map.map_2bpp = internal constant [4 x i32] [i32 0, i32 5, i32 10, i32 15], align 16
@_osd_set_palette_map.map_1bpp = internal constant [2 x i32] [i32 0, i32 15], align 4
@OSD_W0BMP01 = common dso_local global i32 0, align 4
@OSD_W1BMP01 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32, i8, i8, i32)* @_osd_set_palette_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_set_palette_map(%struct.osd_state* %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.osd_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %34 [
    i32 130, label %16
    i32 129, label %23
    i32 128, label %30
  ]

16:                                               ; preds = %5
  %17 = load i8, i8* %8, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* @_osd_set_palette_map.map_1bpp, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  br label %35

23:                                               ; preds = %5
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* @_osd_set_palette_map.map_2bpp, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  br label %35

30:                                               ; preds = %5
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 15
  store i32 %33, i32* %14, align 4
  br label %35

34:                                               ; preds = %5
  br label %72

35:                                               ; preds = %30, %23, %16
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %55 [
    i32 132, label %37
    i32 131, label %46
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @OSD_W0BMP01, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %14, align 4
  %41 = ashr i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = add i64 %39, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  br label %56

46:                                               ; preds = %35
  %47 = load i32, i32* @OSD_W1BMP01, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %14, align 4
  %50 = ashr i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = add i64 %48, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  br label %56

55:                                               ; preds = %35
  br label %72

56:                                               ; preds = %46, %37
  %57 = load i32, i32* %14, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 8, i32* %12, align 4
  store i32 65280, i32* %13, align 4
  br label %62

61:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  store i32 255, i32* %13, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i8, i8* %9, align 1
  %66 = zext i8 %65 to i32
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 %66, %67
  %69 = trunc i32 %68 to i8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @osd_modify(%struct.osd_state* %63, i32 %64, i8 zeroext %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %55, %34
  ret void
}

declare dso_local i32 @osd_modify(%struct.osd_state*, i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
