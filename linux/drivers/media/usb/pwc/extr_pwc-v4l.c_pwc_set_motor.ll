; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_set_motor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_set_motor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@SET_MPT_CTL = common dso_local global i32 0, align 4
@PT_RESET_CONTROL_FORMATTER = common dso_local global i32 0, align 4
@PT_RELATIVE_CONTROL_FORMATTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*)* @pwc_set_motor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_set_motor(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  %5 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %6 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %10 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %9, i32 0, i32 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %17 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %24 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %31 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %22
  %37 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %38 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %37, i32 0, i32 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %45 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43, %36
  %51 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %52 = load i32, i32* @SET_MPT_CTL, align 4
  %53 = load i32, i32* @PT_RESET_CONTROL_FORMATTER, align 4
  %54 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %55 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @send_control_msg(%struct.pwc_device* %51, i32 %52, i32 %53, i32* %56, i32 1)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %151

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %43
  %64 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %65 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @memset(i32* %66, i32 0, i32 4)
  %68 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %69 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %63
  %75 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %76 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 255
  %81 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %82 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %80, i32* %84, align 4
  %85 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %86 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 8
  %91 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %92 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %74, %63
  %96 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %97 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %95
  %103 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %104 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, 255
  %109 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %110 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  store i32 %108, i32* %112, align 4
  %113 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %114 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = ashr i32 %117, 8
  %119 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %120 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %102, %95
  %124 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %125 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %124, i32 0, i32 2
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %132 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %130, %123
  %138 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %139 = load i32, i32* @SET_MPT_CTL, align 4
  %140 = load i32, i32* @PT_RELATIVE_CONTROL_FORMATTER, align 4
  %141 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %142 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @send_control_msg(%struct.pwc_device* %138, i32 %139, i32 %140, i32* %143, i32 4)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = load i32, i32* %4, align 4
  store i32 %148, i32* %2, align 4
  br label %151

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149, %130
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %147, %60
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @send_control_msg(%struct.pwc_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
