; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_can_frame_to_ican3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_can_frame_to_ican3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.can_frame = type { i32, i32, i32 }
%struct.ican3_fast_desc = type { i32*, i32 }

@ICAN3_CAN_TYPE_EFF = common dso_local global i32 0, align 4
@ICAN3_ECHO = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@ICAN3_SNGL = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@ICAN3_EFF_RTR = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@ICAN3_EFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ican3_dev*, %struct.can_frame*, %struct.ican3_fast_desc*)* @can_frame_to_ican3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_frame_to_ican3(%struct.ican3_dev* %0, %struct.can_frame* %1, %struct.ican3_fast_desc* %2) #0 {
  %4 = alloca %struct.ican3_dev*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.ican3_fast_desc*, align 8
  store %struct.ican3_dev* %0, %struct.ican3_dev** %4, align 8
  store %struct.can_frame* %1, %struct.can_frame** %5, align 8
  store %struct.ican3_fast_desc* %2, %struct.ican3_fast_desc** %6, align 8
  %7 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %8 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @memset(i32* %9, i32 0, i32 8)
  %11 = load i32, i32* @ICAN3_CAN_TYPE_EFF, align 4
  %12 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %13 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %15 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %18 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @ICAN3_ECHO, align 4
  %24 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %25 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %23
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %31 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %3
  %38 = load i32, i32* @ICAN3_SNGL, align 4
  %39 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %40 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %37, %3
  %46 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %47 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CAN_RTR_FLAG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* @ICAN3_EFF_RTR, align 4
  %54 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %55 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %52, %45
  %61 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %62 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CAN_EFF_FLAG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %111

67:                                               ; preds = %60
  %68 = load i32, i32* @ICAN3_EFF, align 4
  %69 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %70 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  %75 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %76 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 534773760
  %79 = ashr i32 %78, 21
  %80 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %81 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 %79, i32* %83, align 4
  %84 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %85 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 2088960
  %88 = ashr i32 %87, 13
  %89 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %90 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %88, i32* %92, align 4
  %93 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %94 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 8160
  %97 = ashr i32 %96, 5
  %98 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %99 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32 %97, i32* %101, align 4
  %102 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %103 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 31
  %106 = shl i32 %105, 3
  %107 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %108 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 5
  store i32 %106, i32* %110, align 4
  br label %130

111:                                              ; preds = %60
  %112 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %113 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 2040
  %116 = ashr i32 %115, 3
  %117 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %118 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32 %116, i32* %120, align 4
  %121 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %122 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 7
  %125 = shl i32 %124, 5
  %126 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %127 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  store i32 %125, i32* %129, align 4
  br label %130

130:                                              ; preds = %111, %67
  %131 = load %struct.ican3_fast_desc*, %struct.ican3_fast_desc** %6, align 8
  %132 = getelementptr inbounds %struct.ican3_fast_desc, %struct.ican3_fast_desc* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 6
  %135 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %136 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %139 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @memcpy(i32* %134, i32 %137, i32 %140)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
