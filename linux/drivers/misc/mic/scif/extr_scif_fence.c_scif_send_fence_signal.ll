; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c_scif_send_fence_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c_scif_send_fence_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scifmsg = type { i8**, i32, i32 }
%struct.scif_fence_info = type { i8*, i32 }
%struct.scif_endpt = type { i64, i32, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OP_IN_PROGRESS = common dso_local global i8* null, align 8
@SCIF_SIGNAL_LOCAL = common dso_local global i32 0, align 4
@SCIF_SIG_LOCAL = common dso_local global i32 0, align 4
@SCIFEP_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SCIF_SIGNAL_REMOTE = common dso_local global i32 0, align 4
@SCIF_SIG_REMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8*, i8*, i8*, i32)* @scif_send_fence_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_send_fence_signal(i64 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scifmsg, align 8
  %15 = alloca %struct.scif_fence_info*, align 8
  %16 = alloca %struct.scif_endpt*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to %struct.scif_endpt*
  store %struct.scif_endpt* %18, %struct.scif_endpt** %16, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.scif_fence_info* @kmalloc(i32 16, i32 %19)
  store %struct.scif_fence_info* %20, %struct.scif_fence_info** %15, align 8
  %21 = load %struct.scif_fence_info*, %struct.scif_fence_info** %15, align 8
  %22 = icmp ne %struct.scif_fence_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %13, align 4
  br label %155

26:                                               ; preds = %6
  %27 = load i8*, i8** @OP_IN_PROGRESS, align 8
  %28 = load %struct.scif_fence_info*, %struct.scif_fence_info** %15, align 8
  %29 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.scif_fence_info*, %struct.scif_fence_info** %15, align 8
  %31 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %30, i32 0, i32 1
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %34 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @SCIF_SIGNAL_LOCAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %26
  %42 = load i32, i32* @SCIF_SIG_LOCAL, align 4
  %43 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %45 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  store i8* %54, i8** %57, align 8
  %58 = load %struct.scif_fence_info*, %struct.scif_fence_info** %15, align 8
  %59 = bitcast %struct.scif_fence_info* %58 to i8*
  %60 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 3
  store i8* %59, i8** %62, align 8
  %63 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %64 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %63, i32 0, i32 1
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %67 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %41
  %72 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %73 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @scif_nodeqp_send(i32 %74, %struct.scifmsg* %14)
  store i32 %75, i32* %13, align 4
  br label %79

76:                                               ; preds = %41
  %77 = load i32, i32* @ENOTCONN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %81 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %152

86:                                               ; preds = %79
  %87 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %88 = load %struct.scif_fence_info*, %struct.scif_fence_info** %15, align 8
  %89 = call i32 @_scif_send_fence_signal_wait(%struct.scif_endpt* %87, %struct.scif_fence_info* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %152

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %26
  %95 = load i8*, i8** @OP_IN_PROGRESS, align 8
  %96 = load %struct.scif_fence_info*, %struct.scif_fence_info** %15, align 8
  %97 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @SCIF_SIGNAL_REMOTE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %151

102:                                              ; preds = %94
  %103 = load i32, i32* @SCIF_SIG_REMOTE, align 4
  %104 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 1
  store i32 %103, i32* %104, align 8
  %105 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %106 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  store i8* %107, i8** %110, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  store i8* %111, i8** %114, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 2
  store i8* %115, i8** %118, align 8
  %119 = load %struct.scif_fence_info*, %struct.scif_fence_info** %15, align 8
  %120 = bitcast %struct.scif_fence_info* %119 to i8*
  %121 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 0
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 3
  store i8* %120, i8** %123, align 8
  %124 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %125 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %124, i32 0, i32 1
  %126 = call i32 @spin_lock(i32* %125)
  %127 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %128 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %102
  %133 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %134 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @scif_nodeqp_send(i32 %135, %struct.scifmsg* %14)
  store i32 %136, i32* %13, align 4
  br label %140

137:                                              ; preds = %102
  %138 = load i32, i32* @ENOTCONN, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %137, %132
  %141 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %142 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %141, i32 0, i32 1
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %152

147:                                              ; preds = %140
  %148 = load %struct.scif_endpt*, %struct.scif_endpt** %16, align 8
  %149 = load %struct.scif_fence_info*, %struct.scif_fence_info** %15, align 8
  %150 = call i32 @_scif_send_fence_signal_wait(%struct.scif_endpt* %148, %struct.scif_fence_info* %149)
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %147, %94
  br label %152

152:                                              ; preds = %151, %146, %92, %85
  %153 = load %struct.scif_fence_info*, %struct.scif_fence_info** %15, align 8
  %154 = call i32 @kfree(%struct.scif_fence_info* %153)
  br label %155

155:                                              ; preds = %152, %23
  %156 = load i32, i32* %13, align 4
  ret i32 %156
}

declare dso_local %struct.scif_fence_info* @kmalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @scif_nodeqp_send(i32, %struct.scifmsg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @_scif_send_fence_signal_wait(%struct.scif_endpt*, %struct.scif_fence_info*) #1

declare dso_local i32 @kfree(%struct.scif_fence_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
