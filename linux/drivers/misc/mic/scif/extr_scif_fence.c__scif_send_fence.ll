; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c__scif_send_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c__scif_send_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scifmsg = type { i32, i32*, i32 }
%struct.scif_fence_info = type { i64, i32, i32 }
%struct.scif_endpt = type { i32, i64, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OP_IN_PROGRESS = common dso_local global i64 0, align 8
@SCIF_WAIT = common dso_local global i32 0, align 4
@SCIFEP_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SCIF_NODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OP_FAILED = common dso_local global i64 0, align 8
@SCIF_MARK = common dso_local global i32 0, align 4
@OP_COMPLETED = common dso_local global i64 0, align 8
@SCIF_REMOTE_FENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32*)* @_scif_send_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scif_send_fence(i64 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scifmsg, align 8
  %11 = alloca %struct.scif_fence_info*, align 8
  %12 = alloca %struct.scif_endpt*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.scif_endpt*
  store %struct.scif_endpt* %14, %struct.scif_endpt** %12, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.scif_fence_info* @kmalloc(i32 16, i32 %15)
  store %struct.scif_fence_info* %16, %struct.scif_fence_info** %11, align 8
  %17 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %18 = icmp ne %struct.scif_fence_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %156

22:                                               ; preds = %4
  %23 = load i64, i64* @OP_IN_PROGRESS, align 8
  %24 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %25 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %27 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %26, i32 0, i32 2
  %28 = call i32 @init_completion(i32* %27)
  %29 = load %struct.scif_endpt*, %struct.scif_endpt** %12, align 8
  %30 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %10, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %10, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.scif_endpt*, %struct.scif_endpt** %12, align 8
  %36 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %10, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %42 = ptrtoint %struct.scif_fence_info* %41 to i32
  %43 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %10, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SCIF_WAIT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %22
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %10, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %22
  %55 = load %struct.scif_endpt*, %struct.scif_endpt** %12, align 8
  %56 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %55, i32 0, i32 3
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.scif_endpt*, %struct.scif_endpt** %12, align 8
  %59 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.scif_endpt*, %struct.scif_endpt** %12, align 8
  %65 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @scif_nodeqp_send(i32 %66, %struct.scifmsg* %10)
  store i32 %67, i32* %9, align 4
  br label %71

68:                                               ; preds = %54
  %69 = load i32, i32* @ENOTCONN, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.scif_endpt*, %struct.scif_endpt** %12, align 8
  %73 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %72, i32 0, i32 3
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %153

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %90, %78
  %80 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %81 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %80, i32 0, i32 2
  %82 = load i32, i32* @SCIF_NODE_ALIVE_TIMEOUT, align 4
  %83 = call i32 @wait_for_completion_timeout(i32* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = load %struct.scif_endpt*, %struct.scif_endpt** %12, align 8
  %88 = call i64 @scifdev_alive(%struct.scif_endpt* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %79

91:                                               ; preds = %86, %79
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %9, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load %struct.scif_endpt*, %struct.scif_endpt** %12, align 8
  %103 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 @mutex_lock(i32* %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %101
  %109 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %110 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @OP_IN_PROGRESS, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i64, i64* @OP_FAILED, align 8
  %116 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %117 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %108
  br label %119

119:                                              ; preds = %118, %101
  %120 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %121 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @OP_FAILED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %125, %119
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @SCIF_MARK, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  %136 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %137 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @OP_COMPLETED, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load i32, i32* @SCIF_REMOTE_FENCE, align 4
  %143 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %144 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %142, %145
  %147 = load i32*, i32** %8, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %135, %131
  %149 = load %struct.scif_endpt*, %struct.scif_endpt** %12, align 8
  %150 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  br label %153

153:                                              ; preds = %148, %77
  %154 = load %struct.scif_fence_info*, %struct.scif_fence_info** %11, align 8
  %155 = call i32 @kfree(%struct.scif_fence_info* %154)
  br label %156

156:                                              ; preds = %153, %19
  %157 = load i32, i32* %9, align 4
  ret i32 %157
}

declare dso_local %struct.scif_fence_info* @kmalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @scif_nodeqp_send(i32, %struct.scifmsg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i64 @scifdev_alive(%struct.scif_endpt*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.scif_fence_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
