; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_input_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_input_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i64, i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_set_input_allowed(%struct.pvr2_hdw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @LOCK_TAKE(i32 %13)
  br label %15

15:                                               ; preds = %3
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %28 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %15
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %83

37:                                               ; preds = %15
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %40 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %42 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = shl i64 1, %43
  %45 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %46 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = zext i32 %47 to i64
  %49 = and i64 %44, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %83

52:                                               ; preds = %37
  %53 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %54 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %83

58:                                               ; preds = %52
  %59 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %60 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %79, %58
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = icmp ult i64 %64, 32
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = and i64 %69, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @pvr2_hdw_set_input(%struct.pvr2_hdw* %76, i32 %77)
  br label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %62

82:                                               ; preds = %75, %62
  br label %83

83:                                               ; preds = %82, %57, %51, %34
  %84 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %85 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @LOCK_GIVE(i32 %86)
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_hdw_set_input(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
