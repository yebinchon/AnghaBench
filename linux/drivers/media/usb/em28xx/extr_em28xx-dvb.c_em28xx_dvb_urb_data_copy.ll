; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_dvb_urb_data_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_dvb_urb_data_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i64, i32, %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i64 }

@EPROTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, %struct.urb*)* @em28xx_dvb_urb_data_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_dvb_urb_data_copy(%struct.em28xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %10 = icmp ne %struct.em28xx* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %164

12:                                               ; preds = %2
  %13 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %164

18:                                               ; preds = %12
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @print_err_status(%struct.em28xx* %24, i32 -1, i64 %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_pipebulk(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %36
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %160, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %163

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %46
  %50 = load %struct.urb*, %struct.urb** %5, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.urb*, %struct.urb** %5, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @print_err_status(%struct.em28xx* %55, i32 %56, i64 %59)
  %61 = load %struct.urb*, %struct.urb** %5, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @EPROTO, align 8
  %65 = sub nsw i64 0, %64
  %66 = icmp ne i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %160

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %49
  %70 = load %struct.urb*, %struct.urb** %5, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %160

75:                                               ; preds = %69
  %76 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %77 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.urb*, %struct.urb** %5, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.urb*, %struct.urb** %5, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dvb_dmx_swfilter(i32* %79, i64 %82, i32 %85)
  br label %159

87:                                               ; preds = %46
  %88 = load %struct.urb*, %struct.urb** %5, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %87
  %98 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.urb*, %struct.urb** %5, align 8
  %101 = getelementptr inbounds %struct.urb, %struct.urb* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @print_err_status(%struct.em28xx* %98, i32 %99, i64 %107)
  %109 = load %struct.urb*, %struct.urb** %5, align 8
  %110 = getelementptr inbounds %struct.urb, %struct.urb* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @EPROTO, align 8
  %118 = sub nsw i64 0, %117
  %119 = icmp ne i64 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %97
  br label %160

121:                                              ; preds = %97
  br label %122

122:                                              ; preds = %121, %87
  %123 = load %struct.urb*, %struct.urb** %5, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  br label %160

133:                                              ; preds = %122
  %134 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %135 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load %struct.urb*, %struct.urb** %5, align 8
  %139 = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.urb*, %struct.urb** %5, align 8
  %142 = getelementptr inbounds %struct.urb, %struct.urb* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %140, %148
  %150 = load %struct.urb*, %struct.urb** %5, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 2
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dvb_dmx_swfilter(i32* %137, i64 %149, i32 %157)
  br label %159

159:                                              ; preds = %133, %75
  br label %160

160:                                              ; preds = %159, %132, %120, %74, %67
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %42

163:                                              ; preds = %42
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %17, %11
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @print_err_status(%struct.em28xx*, i32, i64) #1

declare dso_local i32 @usb_pipebulk(i32) #1

declare dso_local i32 @dvb_dmx_swfilter(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
