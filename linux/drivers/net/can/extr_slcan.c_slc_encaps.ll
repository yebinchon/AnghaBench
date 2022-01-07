; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slc_encaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slc_encaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slcan = type { i8*, i32, i8*, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i8*, i32)* }
%struct.can_frame = type { i32, i32, i32* }

@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@SLC_EFF_ID_LEN = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@SLC_SFF_ID_LEN = common dso_local global i32 0, align 4
@hex_asc_upper = common dso_local global i32* null, align 8
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slcan*, %struct.can_frame*)* @slc_encaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slc_encaps(%struct.slcan* %0, %struct.can_frame* %1) #0 {
  %3 = alloca %struct.slcan*, align 8
  %4 = alloca %struct.can_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.slcan* %0, %struct.slcan** %3, align 8
  store %struct.can_frame* %1, %struct.can_frame** %4, align 8
  %10 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %11 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.slcan*, %struct.slcan** %3, align 8
  %14 = getelementptr inbounds %struct.slcan, %struct.slcan* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %17 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CAN_RTR_FLAG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i8*, i8** %7, align 8
  store i8 82, i8* %23, align 1
  br label %26

24:                                               ; preds = %2
  %25 = load i8*, i8** %7, align 8
  store i8 84, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %28 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CAN_EFF_FLAG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32, i32* @CAN_EFF_MASK, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @SLC_EFF_ID_LEN, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %8, align 8
  br label %54

41:                                               ; preds = %26
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, 32
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = load i32, i32* @CAN_SFF_MASK, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @SLC_SFF_ID_LEN, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %41, %33
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  br label %57

57:                                               ; preds = %61, %54
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp uge i8* %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32*, i32** @hex_asc_upper, align 8
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 15
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %8, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 4
  store i32 %72, i32* %9, align 4
  br label %57

73:                                               ; preds = %57
  %74 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %75 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CAN_EFF_FLAG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @SLC_EFF_ID_LEN, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @SLC_SFF_ID_LEN, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load i8*, i8** %7, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %7, align 8
  %89 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %90 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 48
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %7, align 8
  store i8 %93, i8* %94, align 1
  %96 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %97 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CAN_RTR_FLAG, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %123, label %102

102:                                              ; preds = %84
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %119, %102
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %106 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %103
  %110 = load i8*, i8** %7, align 8
  %111 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %112 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @hex_byte_pack_upper(i8* %110, i32 %117)
  store i8* %118, i8** %7, align 8
  br label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %103

122:                                              ; preds = %103
  br label %123

123:                                              ; preds = %122, %84
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %7, align 8
  store i8 13, i8* %124, align 1
  %126 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %127 = load %struct.slcan*, %struct.slcan** %3, align 8
  %128 = getelementptr inbounds %struct.slcan, %struct.slcan* %127, i32 0, i32 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = call i32 @set_bit(i32 %126, i32* %130)
  %132 = load %struct.slcan*, %struct.slcan** %3, align 8
  %133 = getelementptr inbounds %struct.slcan, %struct.slcan* %132, i32 0, i32 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32 (%struct.TYPE_8__*, i8*, i32)*, i32 (%struct.TYPE_8__*, i8*, i32)** %137, align 8
  %139 = load %struct.slcan*, %struct.slcan** %3, align 8
  %140 = getelementptr inbounds %struct.slcan, %struct.slcan* %139, i32 0, i32 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load %struct.slcan*, %struct.slcan** %3, align 8
  %143 = getelementptr inbounds %struct.slcan, %struct.slcan* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = load %struct.slcan*, %struct.slcan** %3, align 8
  %147 = getelementptr inbounds %struct.slcan, %struct.slcan* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = ptrtoint i8* %145 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = call i32 %138(%struct.TYPE_8__* %141, i8* %144, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = load %struct.slcan*, %struct.slcan** %3, align 8
  %156 = getelementptr inbounds %struct.slcan, %struct.slcan* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = ptrtoint i8* %154 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = sub nsw i64 %160, %162
  %164 = trunc i64 %163 to i32
  %165 = load %struct.slcan*, %struct.slcan** %3, align 8
  %166 = getelementptr inbounds %struct.slcan, %struct.slcan* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load %struct.slcan*, %struct.slcan** %3, align 8
  %168 = getelementptr inbounds %struct.slcan, %struct.slcan* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load %struct.slcan*, %struct.slcan** %3, align 8
  %174 = getelementptr inbounds %struct.slcan, %struct.slcan* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  %175 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %176 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.slcan*, %struct.slcan** %3, align 8
  %179 = getelementptr inbounds %struct.slcan, %struct.slcan* %178, i32 0, i32 3
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %177
  store i32 %184, i32* %182, align 4
  ret void
}

declare dso_local i8* @hex_byte_pack_upper(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
