; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_setup_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_setup_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.pvr2_hdw = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@PVR2_TRACE_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Supported video standard(s) reported available in hardware: %.*s\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Expanding supported video standards to include: %.*s\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Initial video standard forced to %.*s\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Initial video standard (determined by device type): %.*s\00", align 1
@std_eeprom_maps = common dso_local global %struct.TYPE_11__* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Initial video standard guessed as %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_hdw*)* @pvr2_hdw_setup_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_hdw_setup_std(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca [40 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %9 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %10 = call i32 @get_default_standard(%struct.pvr2_hdw* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %16 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %15, i32 0, i32 5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %14 ]
  store i32 %21, i32* %7, align 4
  %22 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %24 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pvr2_std_id_to_str(i8* %22, i32 40, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @PVR2_TRACE_STD, align 4
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %30 = call i32 @pvr2_trace(i32 %27, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %29)
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %32 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %35 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %40 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %20
  %47 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pvr2_std_id_to_str(i8* %47, i32 40, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @PVR2_TRACE_STD, align 4
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %53 = call i32 @pvr2_trace(i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %51, i8* %52)
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %46, %20
  %60 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %61 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %64 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %59
  %71 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @pvr2_std_id_to_str(i8* %71, i32 40, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @PVR2_TRACE_STD, align 4
  %75 = load i32, i32* %4, align 4
  %76 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %77 = call i32 @pvr2_trace(i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %75, i8* %76)
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %80 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %82 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %81, i32 0, i32 3
  store i32 1, i32* %82, align 4
  br label %170

83:                                               ; preds = %59
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @pvr2_std_id_to_str(i8* %87, i32 40, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @PVR2_TRACE_STD, align 4
  %91 = load i32, i32* %4, align 4
  %92 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %93 = call i32 @pvr2_trace(i32 %90, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %91, i8* %92)
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %96 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %98 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %97, i32 0, i32 3
  store i32 1, i32* %98, align 4
  br label %170

99:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %167, %99
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** @std_eeprom_maps, align 8
  %103 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %102)
  %104 = icmp ult i32 %101, %103
  br i1 %104, label %105, label %170

105:                                              ; preds = %100
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** @std_eeprom_maps, align 8
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %105
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** @std_eeprom_maps, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %121 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = xor i32 %119, %122
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** @std_eeprom_maps, align 8
  %125 = load i32, i32* %8, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %123, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %143, label %144

132:                                              ; preds = %105
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** @std_eeprom_maps, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %140 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %132, %113
  br label %167

144:                                              ; preds = %132, %113
  %145 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** @std_eeprom_maps, align 8
  %147 = load i32, i32* %8, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @pvr2_std_id_to_str(i8* %145, i32 40, i32 %151)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* @PVR2_TRACE_STD, align 4
  %154 = load i32, i32* %4, align 4
  %155 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %156 = call i32 @pvr2_trace(i32 %153, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %154, i8* %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** @std_eeprom_maps, align 8
  %158 = load i32, i32* %8, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %164 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %166 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %165, i32 0, i32 3
  store i32 1, i32* %166, align 4
  br label %170

167:                                              ; preds = %143
  %168 = load i32, i32* %8, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %100

170:                                              ; preds = %70, %86, %144, %100
  ret void
}

declare dso_local i32 @get_default_standard(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_std_id_to_str(i8*, i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
