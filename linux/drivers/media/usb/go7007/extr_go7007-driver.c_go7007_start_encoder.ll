; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_start_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_start_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i64*, i32, i32, i32, i64, i64, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"error transferring firmware\0A\00", align 1
@STATE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error starting stream transfer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @go7007_start_encoder(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.go7007*, %struct.go7007** %3, align 8
  %14 = getelementptr inbounds %struct.go7007, %struct.go7007* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %26, %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.go7007*, %struct.go7007** %3, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 9
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %15

29:                                               ; preds = %15
  %30 = load %struct.go7007*, %struct.go7007** %3, align 8
  %31 = getelementptr inbounds %struct.go7007, %struct.go7007* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @v4l2_ctrl_g_ctrl(i32 %32)
  switch i32 %33, label %93 [
    i32 129, label %34
    i32 128, label %46
  ]

34:                                               ; preds = %29
  %35 = load %struct.go7007*, %struct.go7007** %3, align 8
  %36 = getelementptr inbounds %struct.go7007, %struct.go7007* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @memset(i64* %37, i32 0, i32 8)
  %39 = load %struct.go7007*, %struct.go7007** %3, align 8
  %40 = getelementptr inbounds %struct.go7007, %struct.go7007* %39, i32 0, i32 9
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.go7007*, %struct.go7007** %3, align 8
  %45 = getelementptr inbounds %struct.go7007, %struct.go7007* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %93

46:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %87, %46
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.go7007*, %struct.go7007** %3, align 8
  %50 = getelementptr inbounds %struct.go7007, %struct.go7007* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 16
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %83, %54
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.go7007*, %struct.go7007** %3, align 8
  %58 = getelementptr inbounds %struct.go7007, %struct.go7007* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, 16
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.go7007*, %struct.go7007** %3, align 8
  %65 = getelementptr inbounds %struct.go7007, %struct.go7007* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = sdiv i32 %67, 16
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %12, align 4
  %71 = load %struct.go7007*, %struct.go7007** %3, align 8
  %72 = getelementptr inbounds %struct.go7007, %struct.go7007* %71, i32 0, i32 9
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.go7007*, %struct.go7007** %3, align 8
  %75 = getelementptr inbounds %struct.go7007, %struct.go7007* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %62
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %55

86:                                               ; preds = %55
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %47

90:                                               ; preds = %47
  %91 = load %struct.go7007*, %struct.go7007** %3, align 8
  %92 = getelementptr inbounds %struct.go7007, %struct.go7007* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %29, %90, %34
  %94 = load %struct.go7007*, %struct.go7007** %3, align 8
  %95 = getelementptr inbounds %struct.go7007, %struct.go7007* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.go7007*, %struct.go7007** %3, align 8
  %100 = getelementptr inbounds %struct.go7007, %struct.go7007* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.go7007*, %struct.go7007** %3, align 8
  %103 = call i64 @go7007_construct_fw_image(%struct.go7007* %102, i32** %4, i32* %5)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 -1, i32* %2, align 4
  br label %140

106:                                              ; preds = %101
  %107 = load %struct.go7007*, %struct.go7007** %3, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i64 @go7007_send_firmware(%struct.go7007* %107, i32* %108, i32 %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = load %struct.go7007*, %struct.go7007** %3, align 8
  %114 = call i64 @go7007_read_interrupt(%struct.go7007* %113, i32* %10, i32* %11)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112, %106
  %117 = load %struct.go7007*, %struct.go7007** %3, align 8
  %118 = getelementptr inbounds %struct.go7007, %struct.go7007* %117, i32 0, i32 4
  %119 = call i32 @v4l2_err(i32* %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %136

120:                                              ; preds = %112
  %121 = load i32, i32* @STATE_DATA, align 4
  %122 = load %struct.go7007*, %struct.go7007** %3, align 8
  %123 = getelementptr inbounds %struct.go7007, %struct.go7007* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 8
  %124 = load %struct.go7007*, %struct.go7007** %3, align 8
  %125 = getelementptr inbounds %struct.go7007, %struct.go7007* %124, i32 0, i32 6
  store i64 0, i64* %125, align 8
  %126 = load %struct.go7007*, %struct.go7007** %3, align 8
  %127 = getelementptr inbounds %struct.go7007, %struct.go7007* %126, i32 0, i32 5
  store i64 0, i64* %127, align 8
  %128 = load %struct.go7007*, %struct.go7007** %3, align 8
  %129 = call i64 @go7007_stream_start(%struct.go7007* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %120
  %132 = load %struct.go7007*, %struct.go7007** %3, align 8
  %133 = getelementptr inbounds %struct.go7007, %struct.go7007* %132, i32 0, i32 4
  %134 = call i32 @v4l2_err(i32* %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %136

135:                                              ; preds = %120
  br label %136

136:                                              ; preds = %135, %131, %116
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @kfree(i32* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %105
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @go7007_construct_fw_image(%struct.go7007*, i32**, i32*) #1

declare dso_local i64 @go7007_send_firmware(%struct.go7007*, i32*, i32) #1

declare dso_local i64 @go7007_read_interrupt(%struct.go7007*, i32*, i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i64 @go7007_stream_start(%struct.go7007*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
