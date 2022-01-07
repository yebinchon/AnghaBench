; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL_ControlRead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL_ControlRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl5005s_state* }
%struct.mxl5005s_state = type { i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64, i32* }
%struct.TYPE_5__ = type { i64, i64, i32* }
%struct.TYPE_4__ = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dvb_frontend*, i64, i64*)* @MXL_ControlRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MXL_ControlRead(%struct.dvb_frontend* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mxl5005s_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %13, align 8
  store %struct.mxl5005s_state* %14, %struct.mxl5005s_state** %8, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %67, %3
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %8, align 8
  %18 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %8, align 8
  %24 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %22, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %21
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %60, %31
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %8, align 8
  %35 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %34, i32 0, i32 5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %33, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %32
  %43 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %8, align 8
  %44 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %11, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 1, %54
  %56 = mul nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %42
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %32

63:                                               ; preds = %32
  %64 = load i64, i64* %9, align 8
  %65 = load i64*, i64** %7, align 8
  store i64 %64, i64* %65, align 8
  store i64 0, i64* %4, align 8
  br label %127

66:                                               ; preds = %21
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %15

70:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  br label %71

71:                                               ; preds = %123, %70
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %8, align 8
  %74 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %126

77:                                               ; preds = %71
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %8, align 8
  %80 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %79, i32 0, i32 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %78, %85
  br i1 %86, label %87, label %122

87:                                               ; preds = %77
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %88

88:                                               ; preds = %116, %87
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %8, align 8
  %91 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %90, i32 0, i32 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %89, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %88
  %99 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %8, align 8
  %100 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %99, i32 0, i32 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %11, align 8
  %110 = trunc i64 %109 to i32
  %111 = shl i32 1, %110
  %112 = mul nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %9, align 8
  br label %116

116:                                              ; preds = %98
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %11, align 8
  br label %88

119:                                              ; preds = %88
  %120 = load i64, i64* %9, align 8
  %121 = load i64*, i64** %7, align 8
  store i64 %120, i64* %121, align 8
  store i64 0, i64* %4, align 8
  br label %127

122:                                              ; preds = %77
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %10, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %10, align 8
  br label %71

126:                                              ; preds = %71
  store i64 1, i64* %4, align 8
  br label %127

127:                                              ; preds = %126, %119, %63
  %128 = load i64, i64* %4, align 8
  ret i64 %128
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
