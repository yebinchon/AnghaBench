; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i8*, i8*, i32*, i32*, i32)* @usbvision_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_decompress(%struct.usb_usbvision* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.usb_usbvision*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i8 0, i8* %24, align 1
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i32 0, i32* %19, align 4
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %183, %6
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %186

35:                                               ; preds = %31
  %36 = load i32, i32* %17, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %114

38:                                               ; preds = %35
  %39 = load i32, i32* %19, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %18, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %23, align 1
  %47 = load i32, i32* %18, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %18, align 4
  store i32 4, i32* %19, align 4
  br label %49

49:                                               ; preds = %41, %38
  %50 = load i8, i8* %23, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 192
  %53 = ashr i32 %52, 6
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %22, align 1
  %55 = load %struct.usb_usbvision*, %struct.usb_usbvision** %7, align 8
  %56 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i8, i8* %22, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %15, align 4
  %64 = load i8, i8* %22, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %49
  %68 = load i32, i32* %13, align 4
  %69 = icmp sge i32 %68, 24
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 23
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %73, 24
  store i32 %74, i32* %13, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %24, align 1
  br label %85

80:                                               ; preds = %67
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %80, %70
  br label %107

86:                                               ; preds = %49
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %21, align 1
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp sge i32 %94, 24
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 24, i32* %17, align 4
  br label %99

97:                                               ; preds = %86
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %97, %96
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %17, align 4
  %105 = sdiv i32 %104, 4
  %106 = add nsw i32 %103, %105
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %99, %85
  %108 = load i8, i8* %23, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 2
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %23, align 1
  %112 = load i32, i32* %19, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %107, %35
  %115 = load i32, i32* %17, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %182

117:                                              ; preds = %114
  %118 = load i32, i32* %17, align 4
  %119 = srem i32 %118, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  store i8 %126, i8* %20, align 1
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %121, %117
  %130 = load i8, i8* %22, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  store i8 %138, i8* %24, align 1
  br label %139

139:                                              ; preds = %133, %129
  %140 = load i8, i8* %20, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %141, 192
  switch i32 %142, label %170 [
    i32 192, label %143
    i32 128, label %156
    i32 0, label %163
  ]

143:                                              ; preds = %139
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8, i8* %24, align 1
  %151 = zext i8 %150 to i32
  %152 = add nsw i32 %151, %149
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %24, align 1
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %16, align 4
  br label %170

156:                                              ; preds = %139
  %157 = load i8, i8* %21, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8, i8* %24, align 1
  %160 = zext i8 %159 to i32
  %161 = add nsw i32 %160, %158
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %24, align 1
  br label %170

163:                                              ; preds = %139
  %164 = load i8, i8* %21, align 1
  %165 = zext i8 %164 to i32
  %166 = load i8, i8* %24, align 1
  %167 = zext i8 %166 to i32
  %168 = sub nsw i32 %167, %165
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %24, align 1
  br label %170

170:                                              ; preds = %139, %163, %156, %143
  %171 = load i8, i8* %24, align 1
  %172 = load i8*, i8** %9, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8 %171, i8* %175, align 1
  %176 = load i8, i8* %20, align 1
  %177 = zext i8 %176 to i32
  %178 = shl i32 %177, 2
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %20, align 1
  %180 = load i32, i32* %17, align 4
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %17, align 4
  br label %182

182:                                              ; preds = %170, %114
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %31

186:                                              ; preds = %31
  %187 = load i32, i32* %16, align 4
  %188 = load i32*, i32** %10, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* %18, align 4
  %190 = load i32*, i32** %11, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* %14, align 4
  ret i32 %191
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
