; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_to_can_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_to_can_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i32 }
%struct.ican3_fast_desc = type { i32, i32* }
%struct.can_frame = type { i32, i8*, i32 }

@ICAN3_CAN_TYPE_MASK = common dso_local global i32 0, align 4
@ICAN3_CAN_TYPE_SFF = common dso_local global i32 0, align 4
@ICAN3_SFF_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@ICAN3_CAN_DLC_MASK = common dso_local global i32 0, align 4
@ICAN3_EFF_RTR = common dso_local global i32 0, align 4
@ICAN3_EFF = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ican3_dev*, %struct.ican3_fast_desc*, %struct.can_frame*)* @ican3_to_can_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ican3_to_can_frame(%struct.ican3_dev* %0, %struct.ican3_fast_desc* %1, %struct.can_frame* %2) #0 {
  %4 = alloca %struct.ican3_dev*, align 8
  %5 = alloca %struct.ican3_fast_desc*, align 8
  %6 = alloca %struct.can_frame*, align 8
  store %struct.ican3_dev* %0, %struct.ican3_dev** %4, align 8
  store %struct.ican3_fast_desc* %1, %struct.ican3_fast_desc** %5, align 8
  store %struct.can_frame* %2, %struct.can_frame** %6, align 8
  %7 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %8 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ICAN3_CAN_TYPE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @ICAN3_CAN_TYPE_SFF, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %72

14:                                               ; preds = %3
  %15 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %16 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ICAN3_SFF_RTR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i32, i32* @CAN_RTR_FLAG, align 4
  %25 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %26 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %23, %14
  %30 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %31 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 3
  %36 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %37 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %41 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 224
  %46 = ashr i32 %45, 5
  %47 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %48 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %52 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ICAN3_CAN_DLC_MASK, align 4
  %57 = and i32 %55, %56
  %58 = call i8* @get_can_dlc(i32 %57)
  %59 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %60 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %62 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %65 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %69 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @memcpy(i32 %63, i32* %67, i8* %70)
  br label %186

72:                                               ; preds = %3
  %73 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %74 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ICAN3_CAN_DLC_MASK, align 4
  %79 = and i32 %77, %78
  %80 = call i8* @get_can_dlc(i32 %79)
  %81 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %82 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %84 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ICAN3_EFF_RTR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %72
  %92 = load i32, i32* @CAN_RTR_FLAG, align 4
  %93 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %94 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %72
  %98 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %99 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ICAN3_EFF, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %153

106:                                              ; preds = %97
  %107 = load i32, i32* @CAN_EFF_FLAG, align 4
  %108 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %109 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %113 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 21
  %118 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %119 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %123 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 13
  %128 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %129 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %133 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 5
  %138 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %139 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %143 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 5
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 248
  %148 = ashr i32 %147, 3
  %149 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %150 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %174

153:                                              ; preds = %97
  %154 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %155 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 3
  %160 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %161 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %165 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, 5
  %170 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %171 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %153, %106
  %175 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %176 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %5, align 8
  %179 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 6
  %182 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %183 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @memcpy(i32 %177, i32* %181, i8* %184)
  br label %186

186:                                              ; preds = %174, %29
  ret void
}

declare dso_local i8* @get_can_dlc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
