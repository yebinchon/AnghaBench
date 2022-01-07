; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_handle_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mceusb_dev = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ir_raw_event = type { i32, i32 }

@MCE_TIME_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"RX carrier frequency %u Hz (pulse count = %u, cycles = %u, duration = %u, rx2 = %u)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s-range (0x%x) receiver active\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mceusb_dev*, i32)* @mceusb_handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mceusb_handle_command(%struct.mceusb_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mceusb_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mceusb_dev* %0, %struct.mceusb_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = bitcast %struct.ir_raw_event* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %6, align 4
  %20 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 255
  store i32 %28, i32* %7, align 4
  %29 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %179 [
    i32 129, label %36
    i32 131, label %55
    i32 134, label %67
    i32 133, label %74
    i32 135, label %140
    i32 130, label %144
    i32 132, label %148
    i32 136, label %176
    i32 128, label %176
  ]

36:                                               ; preds = %2
  %37 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %47, %36
  br label %180

55:                                               ; preds = %2
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MCE_TIME_UNIT, align 4
  %61 = mul nsw i32 %59, %60
  %62 = call i32 @US_TO_NS(i32 %61)
  %63 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %64 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %63, i32 0, i32 12
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  br label %180

67:                                               ; preds = %2
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %73 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  br label %180

74:                                               ; preds = %2
  %75 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %76 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %75, i32 0, i32 14
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %139

79:                                               ; preds = %74
  %80 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %81 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %139

84:                                               ; preds = %79
  %85 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %86 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = icmp ugt i32 %87, 0
  br i1 %88, label %89, label %139

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %8, align 4
  %94 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %95 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %94, i32 0, i32 13
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %101 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  br label %104

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i32 [ %102, %99 ], [ 0, %103 ]
  store i32 %105, i32* %9, align 4
  %106 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 1, i32* %106, align 4
  %107 = load i32, i32* @MCE_TIME_UNIT, align 4
  %108 = udiv i32 1000000, %107
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add i32 %109, %110
  %112 = mul i32 %108, %111
  %113 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %114 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = udiv i32 %112, %115
  %117 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %119 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %124 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %128 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %131 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %130, i32 0, i32 13
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_dbg(i32 %120, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %125, i32 %126, i32 %129, i32 %133)
  %135 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %136 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %135, i32 0, i32 12
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = call i32 @ir_raw_event_store(%struct.TYPE_4__* %137, %struct.ir_raw_event* %5)
  br label %139

139:                                              ; preds = %104, %84, %79, %74
  br label %180

140:                                              ; preds = %2
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %143 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 8
  br label %180

144:                                              ; preds = %2
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %147 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 4
  br label %180

148:                                              ; preds = %2
  %149 = load i32, i32* %6, align 4
  %150 = and i32 %149, 2
  %151 = icmp eq i32 %150, 2
  %152 = zext i1 %151 to i32
  %153 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %154 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 4
  %155 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %156 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %148
  %161 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %165 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @dev_info(i32 %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %169, i32 %170)
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %174 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %160, %148
  br label %180

176:                                              ; preds = %2, %2
  %177 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %178 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %177, i32 0, i32 10
  store i32 1, i32* %178, align 4
  br label %180

179:                                              ; preds = %2
  br label %180

180:                                              ; preds = %179, %176, %175, %144, %140, %139, %67, %55, %54
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @US_TO_NS(i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ir_raw_event_store(%struct.TYPE_4__*, %struct.ir_raw_event*) #2

declare dso_local i32 @dev_info(i32, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
