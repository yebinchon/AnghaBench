; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_gen_mjpeghdr_to_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_gen_mjpeghdr_to_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i64*, i32)* @gen_mjpeghdr_to_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_mjpeghdr_to_package(%struct.go7007* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 15872, i32* %9, align 4
  store i32 25, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kzalloc(i32 4096, i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %157

22:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 32
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.go7007*, %struct.go7007** %5, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @mjpeg_frame_header(%struct.go7007* %27, i32* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 80
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load %struct.go7007*, %struct.go7007** %5, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @mjpeg_frame_header(%struct.go7007* %40, i32* %44, i32 1)
  store i32 %45, i32* %14, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = getelementptr inbounds i32, i32* %53, i64 80
  %55 = load i32, i32* %14, align 4
  %56 = sub nsw i32 %55, 80
  %57 = call i32 @memmove(i32* %49, i32* %54, i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = sub nsw i32 %58, 80
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %147, %39
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %152

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp slt i32 %69, 32
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 -1, i32* %13, align 4
  br label %153

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = or i32 32768, %73
  %75 = call i64 @__cpu_to_le16(i32 %74)
  %76 = load i64*, i64** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  store i64 %75, i64* %80, align 8
  store i32 28, i32* %14, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %81, %82
  %84 = icmp sgt i32 %83, 16384
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 16384, %86
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %85, %72
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %14, align 4
  %91 = mul nsw i32 2, %90
  %92 = add nsw i32 %89, %91
  %93 = load i32, i32* %11, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sdiv i32 %98, 2
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %95, %88
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 28
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = or i32 16384, %104
  %106 = call i64 @__cpu_to_le16(i32 %105)
  %107 = load i64*, i64** %6, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  store i64 %106, i64* %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %10, align 4
  %113 = call i64 @__cpu_to_le16(i32 %111)
  %114 = load i64*, i64** %6, align 8
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 31
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  store i64 %113, i64* %118, align 8
  store i32 15872, i32* %9, align 4
  br label %132

119:                                              ; preds = %100
  %120 = call i64 @__cpu_to_le16(i32 4124)
  %121 = load i64*, i64** %6, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 %120, i64* %124, align 8
  %125 = load i64*, i64** %6, align 8
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 31
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 28
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %119, %103
  %133 = load i64*, i64** %6, align 8
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 %142, 2
  %144 = call i32 @memcpy(i64* %137, i32* %141, i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 32
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %132
  %148 = load i32, i32* %14, align 4
  %149 = mul nsw i32 %148, 2
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %12, align 4
  br label %62

152:                                              ; preds = %62
  br label %153

153:                                              ; preds = %152, %71
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @kfree(i32* %154)
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %153, %19
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mjpeg_frame_header(%struct.go7007*, i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i64 @__cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
