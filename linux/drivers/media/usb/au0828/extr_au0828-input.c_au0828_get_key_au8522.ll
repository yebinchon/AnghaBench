; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au0828_get_key_au8522.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au0828_get_key_au8522.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_rc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ir_raw_event = type { i32, i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RC data received: %*ph\0A\00", align 1
@NEC_START_SPACE = common dso_local global i32 0, align 4
@NEC_START_PULSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Storing NEC start %s with duration %d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@RC5_START_PULSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Storing RC5 start %s with duration %d\00", align 1
@AU8522_UNIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Storing %s with duration %d\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Storing end %s with duration %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_rc*)* @au0828_get_key_au8522 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_get_key_au8522(%struct.au0828_rc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au0828_rc*, align 8
  %4 = alloca [40 x i8], align 16
  %5 = alloca %struct.ir_raw_event, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.au0828_rc* %0, %struct.au0828_rc** %3, align 8
  %13 = bitcast %struct.ir_raw_event* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  store i32 1, i32* %12, align 4
  %14 = load i32, i32* @DEV_DISCONNECTED, align 4
  %15 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %16 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %14, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %177

22:                                               ; preds = %1
  %23 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %24 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %25 = call i32 @au8522_rc_read(%struct.au0828_rc* %23, i32 225, i32 -1, i8* %24, i32 1)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %30 = load i8, i8* %29, align 16
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 16
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %36 = call i32 @au8522_rc_set(%struct.au0828_rc* %35, i32 224, i32 16)
  store i32 0, i32* %2, align 4
  br label %177

37:                                               ; preds = %28
  %38 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %39 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %40 = call i32 @au8522_rc_read(%struct.au0828_rc* %38, i32 227, i32 17, i8* %39, i32 40)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %177

45:                                               ; preds = %37
  %46 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %47 = call i32 @au8522_rc_clear(%struct.au0828_rc* %46, i32 224, i32 16)
  %48 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %49 = call i32 @au8522_rc_set(%struct.au0828_rc* %48, i32 224, i32 16)
  %50 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %51 = call i32 (i32, i8*, ...) @dprintk(i32 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 40, i8* %50)
  %52 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %53 = load i8, i8* %52, align 16
  %54 = zext i8 %53 to i32
  %55 = ashr i32 %54, 7
  %56 = and i32 %55, 1
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %148, %45
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 40
  br i1 %60, label %61, label %151

61:                                               ; preds = %57
  store i32 7, i32* %7, align 4
  br label %62

62:                                               ; preds = %144, %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %147

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %70, %71
  %73 = and i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %144

80:                                               ; preds = %65
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %121

83:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  %84 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @NEC_START_SPACE, align 4
  %87 = sub nsw i32 %86, 2
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @NEC_START_SPACE, align 4
  %92 = add nsw i32 %91, 2
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load i32, i32* @NEC_START_PULSE, align 4
  %96 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %102 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @dprintk(i32 16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %101, i32 %103)
  br label %116

105:                                              ; preds = %89, %83
  %106 = load i32, i32* @RC5_START_PULSE, align 4
  %107 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %113 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @dprintk(i32 16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %112, i32 %114)
  br label %116

116:                                              ; preds = %105, %94
  %117 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %118 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ir_raw_event_store(i32 %119, %struct.ir_raw_event* %5)
  br label %121

121:                                              ; preds = %116, %80
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 0, i32 1
  %126 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @AU8522_UNIT, align 4
  %128 = load i32, i32* %11, align 4
  %129 = mul nsw i32 %127, %128
  %130 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %136 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, ...) @dprintk(i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %135, i32 %137)
  %139 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %140 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ir_raw_event_store(i32 %141, %struct.ir_raw_event* %5)
  store i32 1, i32* %11, align 4
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %121, %77
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %7, align 4
  br label %62

147:                                              ; preds = %62
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %57

151:                                              ; preds = %57
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 0, i32 1
  %156 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* @AU8522_UNIT, align 4
  %158 = load i32, i32* %11, align 4
  %159 = mul nsw i32 %157, %158
  %160 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %159, i32* %160, align 4
  %161 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %166 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, ...) @dprintk(i32 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %165, i32 %167)
  %169 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %170 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ir_raw_event_store(i32 %171, %struct.ir_raw_event* %5)
  %173 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %174 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @ir_raw_event_handle(i32 %175)
  store i32 1, i32* %2, align 4
  br label %177

177:                                              ; preds = %151, %43, %34, %21
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @au8522_rc_read(%struct.au0828_rc*, i32, i32, i8*, i32) #2

declare dso_local i32 @au8522_rc_set(%struct.au0828_rc*, i32, i32) #2

declare dso_local i32 @au8522_rc_clear(%struct.au0828_rc*, i32, i32) #2

declare dso_local i32 @dprintk(i32, i8*, ...) #2

declare dso_local i32 @ir_raw_event_store(i32, %struct.ir_raw_event*) #2

declare dso_local i32 @ir_raw_event_handle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
