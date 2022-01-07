; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_update_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_update_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.m920x_state* }
%struct.m920x_state = type { i32*, i32** }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@M9206_MAX_FILTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @m920x_update_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_update_filters(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.m920x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.m920x_state*, %struct.m920x_state** %13, align 8
  store %struct.m920x_state* %14, %struct.m920x_state** %4, align 8
  %15 = load %struct.m920x_state*, %struct.m920x_state** %4, align 8
  %16 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %51, %1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @M9206_MAX_FILTERS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.m920x_state*, %struct.m920x_state** %4, align 8
  %37 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 8192
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @m920x_set_filter(%struct.TYPE_8__* %57, i32 %58, i32 1, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %139

64:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @M9206_MAX_FILTERS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 2
  %76 = call i32 @m920x_set_filter(%struct.TYPE_8__* %72, i32 %73, i32 %75, i32 0)
  store i32 %76, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %139

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %137

87:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %133, %87
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @M9206_MAX_FILTERS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %136

92:                                               ; preds = %88
  %93 = load %struct.m920x_state*, %struct.m920x_state** %4, align 8
  %94 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32*, i32** %95, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %133

107:                                              ; preds = %92
  %108 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 2
  %114 = load %struct.m920x_state*, %struct.m920x_state** %4, align 8
  %115 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %114, i32 0, i32 1
  %116 = load i32**, i32*** %115, align 8
  %117 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32*, i32** %116, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @m920x_set_filter(%struct.TYPE_8__* %110, i32 %111, i32 %113, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %107
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %139

130:                                              ; preds = %107
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %130, %106
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %88

136:                                              ; preds = %88
  br label %137

137:                                              ; preds = %136, %84
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %128, %78, %62
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @m920x_set_filter(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
