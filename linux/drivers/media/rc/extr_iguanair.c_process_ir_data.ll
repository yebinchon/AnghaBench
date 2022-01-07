; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_process_ir_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_process_ir_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iguanair = type { i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"receive overflow\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"control code %02x received\0A\00", align 1
@RX_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iguanair*, i32)* @process_ir_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ir_data(%struct.iguanair* %0, i32 %1) #0 {
  %3 = alloca %struct.iguanair*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iguanair* %0, %struct.iguanair** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp uge i32 %8, 4
  br i1 %9, label %10, label %109

10:                                               ; preds = %2
  %11 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %12 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %109

17:                                               ; preds = %10
  %18 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %19 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %109

24:                                               ; preds = %17
  %25 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %26 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %98 [
    i32 133, label %30
    i32 135, label %52
    i32 134, label %67
    i32 128, label %82
    i32 132, label %85
    i32 131, label %85
    i32 129, label %85
    i32 130, label %89
  ]

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %35 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %41 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %39, %44
  %46 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %47 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %49 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %48, i32 0, i32 7
  %50 = call i32 @complete(i32* %49)
  br label %51

51:                                               ; preds = %33, %30
  br label %108

52:                                               ; preds = %24
  %53 = load i32, i32* %4, align 4
  %54 = icmp uge i32 %53, 5
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %57 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %62 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %64 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %63, i32 0, i32 7
  %65 = call i32 @complete(i32* %64)
  br label %66

66:                                               ; preds = %55, %52
  br label %108

67:                                               ; preds = %24
  %68 = load i32, i32* %4, align 4
  %69 = icmp ugt i32 %68, 5
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %72 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %77 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %79 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %78, i32 0, i32 7
  %80 = call i32 @complete(i32* %79)
  br label %81

81:                                               ; preds = %70, %67
  br label %108

82:                                               ; preds = %24
  %83 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %84 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %83, i32 0, i32 4
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %24, %24, %24, %82
  %86 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %87 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %86, i32 0, i32 7
  %88 = call i32 @complete(i32* %87)
  br label %108

89:                                               ; preds = %24
  %90 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %91 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @dev_warn(i32 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %95 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ir_raw_event_reset(i32 %96)
  br label %108

98:                                               ; preds = %24
  %99 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %100 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %103 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @dev_warn(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %98, %89, %85, %81, %66, %51
  br label %175

109:                                              ; preds = %17, %10, %2
  %110 = load i32, i32* %4, align 4
  %111 = icmp uge i32 %110, 7
  br i1 %111, label %112, label %174

112:                                              ; preds = %109
  %113 = bitcast %struct.ir_raw_event* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %113, i8 0, i64 8, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %162, %112
  %115 = load i32, i32* %6, align 4
  %116 = icmp ult i32 %115, 7
  br i1 %116, label %117, label %165

117:                                              ; preds = %114
  %118 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %119 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 0, i32* %127, align 4
  %128 = call i32 @US_TO_NS(i32 21845)
  %129 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  br label %154

130:                                              ; preds = %117
  %131 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %132 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 128
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %140, i32* %141, align 4
  %142 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %143 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 127
  %150 = add nsw i32 %149, 1
  %151 = load i32, i32* @RX_RESOLUTION, align 4
  %152 = mul nsw i32 %150, %151
  %153 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %130, %126
  %155 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %156 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @ir_raw_event_store_with_filter(i32 %157, %struct.ir_raw_event* %5)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 1, i32* %7, align 4
  br label %161

161:                                              ; preds = %160, %154
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %114

165:                                              ; preds = %114
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %170 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ir_raw_event_handle(i32 %171)
  br label %173

173:                                              ; preds = %168, %165
  br label %174

174:                                              ; preds = %173, %109
  br label %175

175:                                              ; preds = %174, %108
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @ir_raw_event_reset(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i64 @ir_raw_event_store_with_filter(i32, %struct.ir_raw_event*) #1

declare dso_local i32 @ir_raw_event_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
