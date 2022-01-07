; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_read_words.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_read_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32* }

@FX2CMD_MEM_READ_DWORD = common dso_local global i32 0, align 4
@FX2CMD_MEM_READ_64BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32, i32*, i32)* @pvr2_encoder_read_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_encoder_read_words(%struct.pvr2_hdw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvr2_hdw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %13

13:                                               ; preds = %110, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %121

16:                                               ; preds = %13
  store i32 16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %12, align 4
  %24 = icmp ult i32 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @FX2CMD_MEM_READ_DWORD, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @FX2CMD_MEM_READ_64BYTES, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %36 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %40 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %44 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 0, i32* %46, align 4
  %47 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %48 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 0, i32* %50, align 4
  %51 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %52 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %59 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = lshr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %66 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 255
  %71 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %72 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  store i32 %70, i32* %74, align 4
  %75 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %76 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %77 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %80 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 1
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 4, i32 64
  %86 = call i32 @pvr2_send_request(%struct.pvr2_hdw* %75, i32* %78, i32 8, i32* %81, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %33
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %5, align 4
  br label %122

91:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %107, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %98 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = mul i32 %100, 4
  %102 = call i32 @PVR2_COMPOSE_LE(i32* %99, i32 %101)
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %92

110:                                              ; preds = %92
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %8, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sub i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %7, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %13

121:                                              ; preds = %13
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %89
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @pvr2_send_request(%struct.pvr2_hdw*, i32*, i32, i32*, i32) #1

declare dso_local i32 @PVR2_COMPOSE_LE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
