; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_wait_epstop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_wait_epstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %union.ep_buffer_info* }
%union.ep_buffer_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FJES_COMMAND_EPSTOP_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@FJES_RX_STOP_REQ_DONE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fjes_hw_wait_epstop(%struct.fjes_hw* %0) #0 {
  %2 = alloca %struct.fjes_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.ep_buffer_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %77, %1
  %8 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %9 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FJES_COMMAND_EPSTOP_WAIT_TIMEOUT, align 4
  %16 = mul nsw i32 %15, 1000
  %17 = icmp slt i32 %14, %16
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi i1 [ false, %7 ], [ %17, %13 ]
  br i1 %19, label %20, label %81

20:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %74, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %24 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %30 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %74

34:                                               ; preds = %27
  %35 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %36 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @fjes_hw_epid_is_shared(i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %42 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %41, i32 0, i32 3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %union.ep_buffer_info*, %union.ep_buffer_info** %48, align 8
  store %union.ep_buffer_info* %49, %union.ep_buffer_info** %4, align 8
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %34
  %53 = load %union.ep_buffer_info*, %union.ep_buffer_info** %4, align 8
  %54 = bitcast %union.ep_buffer_info* %53 to %struct.TYPE_7__*
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FJES_RX_STOP_REQ_DONE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %52, %34
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %63 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = call i64 @test_bit(i32 %61, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %70 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = call i32 @clear_bit(i32 %68, i32* %71)
  br label %73

73:                                               ; preds = %67, %60, %52
  br label %74

74:                                               ; preds = %73, %33
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %21

77:                                               ; preds = %21
  %78 = call i32 @msleep(i32 100)
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 100
  store i32 %80, i32* %5, align 4
  br label %7

81:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %109, %81
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %85 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %91 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %109

95:                                               ; preds = %88
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %98 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = call i64 @test_bit(i32 %96, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %105 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = call i32 @clear_bit(i32 %103, i32* %106)
  br label %108

108:                                              ; preds = %102, %95
  br label %109

109:                                              ; preds = %108, %94
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %82

112:                                              ; preds = %82
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @FJES_COMMAND_EPSTOP_WAIT_TIMEOUT, align 4
  %115 = mul nsw i32 %114, 1000
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  br label %121

121:                                              ; preds = %118, %117
  %122 = phi i32 [ 0, %117 ], [ %120, %118 ]
  ret i32 %122
}

declare dso_local i32 @fjes_hw_epid_is_shared(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
