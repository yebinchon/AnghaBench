; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_write_words.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_write_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32* }

@FX2CMD_MEM_WRITE_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32, i32*, i32)* @pvr2_encoder_write_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_encoder_write_words(%struct.pvr2_hdw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvr2_hdw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %15

15:                                               ; preds = %102, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %113

18:                                               ; preds = %15
  store i32 8, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %14, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %26 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @memset(i32* %27, i32 0, i32 8)
  store i32 0, i32* %12, align 4
  %29 = load i32, i32* @FX2CMD_MEM_WRITE_DWORD, align 4
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %31 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %12, align 4
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %29, i32* %36, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %86, %24
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 255
  %47 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %48 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %50, 6
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %46, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = lshr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %58 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = add i32 %60, 5
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %56, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %68 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %70, 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %66, i32* %73, align 4
  %74 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %75 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PVR2_DECOMPOSE_LE(i32* %76, i32 %77, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, 7
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %41
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %37

89:                                               ; preds = %37
  %90 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %91 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %92 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = mul i32 %94, 7
  %96 = add i32 1, %95
  %97 = call i32 @pvr2_send_request(%struct.pvr2_hdw* %90, i32* %93, i32 %96, i32* null, i32 0)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %5, align 4
  br label %114

102:                                              ; preds = %89
  %103 = load i32, i32* %14, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %8, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %9, align 4
  %109 = sub i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %15

113:                                              ; preds = %15
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %100
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @PVR2_DECOMPOSE_LE(i32*, i32, i32) #1

declare dso_local i32 @pvr2_send_request(%struct.pvr2_hdw*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
