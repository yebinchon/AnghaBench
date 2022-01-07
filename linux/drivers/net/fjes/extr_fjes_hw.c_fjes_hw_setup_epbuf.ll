; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_setup_epbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_setup_epbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epbuf_handler = type { i64, %union.ep_buffer_info* }
%union.ep_buffer_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32, i64, i32, i64, i32*, i64 }

@EP_BUFFER_SUPPORT_VLAN_MAX = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@FJES_RX_MTU_CHANGING_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fjes_hw_setup_epbuf(%struct.epbuf_handler* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.epbuf_handler*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ep_buffer_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.epbuf_handler* %0, %struct.epbuf_handler** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.epbuf_handler*, %struct.epbuf_handler** %4, align 8
  %12 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %11, i32 0, i32 1
  %13 = load %union.ep_buffer_info*, %union.ep_buffer_info** %12, align 8
  store %union.ep_buffer_info* %13, %union.ep_buffer_info** %7, align 8
  %14 = load i32, i32* @EP_BUFFER_SUPPORT_VLAN_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %34, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @EP_BUFFER_SUPPORT_VLAN_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %24 = bitcast %union.ep_buffer_info* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %17, i64 %32
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %39 = call i32 @memset(%union.ep_buffer_info* %38, i32 0, i32 72)
  %40 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %41 = bitcast %union.ep_buffer_info* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %60, %37
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %54 = bitcast %union.ep_buffer_info* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %65 = bitcast %union.ep_buffer_info* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 7
  store i64 0, i64* %66, align 8
  %67 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %68 = bitcast %union.ep_buffer_info* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %71 = bitcast %union.ep_buffer_info* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 72, i32* %72, align 4
  %73 = load %struct.epbuf_handler*, %struct.epbuf_handler** %4, align 8
  %74 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %77 = bitcast %union.ep_buffer_info* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %75, %80
  %82 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %83 = bitcast %union.ep_buffer_info* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 5
  store i64 %81, i64* %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @FJES_MTU_TO_FRAME_SIZE(i32 %85)
  %87 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %88 = bitcast %union.ep_buffer_info* %87 to %struct.TYPE_2__*
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  %90 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %91 = bitcast %union.ep_buffer_info* %90 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %95 = bitcast %union.ep_buffer_info* %94 to %struct.TYPE_2__*
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @EP_RING_NUM(i64 %93, i32 %97)
  %99 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %100 = bitcast %union.ep_buffer_info* %99 to %struct.TYPE_2__*
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 6
  store i32 %98, i32* %101, align 8
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %118, %63
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @EP_BUFFER_SUPPORT_VLAN_MAX, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %17, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %112 = bitcast %union.ep_buffer_info* %111 to %struct.TYPE_2__*
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %110, i32* %117, align 4
  br label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %102

121:                                              ; preds = %102
  %122 = load i32, i32* @FJES_RX_MTU_CHANGING_DONE, align 4
  %123 = load %union.ep_buffer_info*, %union.ep_buffer_info** %7, align 8
  %124 = bitcast %union.ep_buffer_info* %123 to %struct.TYPE_2__*
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %122
  store i32 %127, i32* %125, align 8
  %128 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %128)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%union.ep_buffer_info*, i32, i32) #2

declare dso_local i32 @FJES_MTU_TO_FRAME_SIZE(i32) #2

declare dso_local i32 @EP_RING_NUM(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
