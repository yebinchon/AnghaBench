; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c___scif_pollfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c___scif_pollfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32 }
%struct.scif_endpt = type { i64, i64, i32, %struct.TYPE_7__, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@scif_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"SCIFAPI pollfd: ep %p %s\0A\00", align 1
@scif_ep_states = common dso_local global i32* null, align 8
@ASYNC_CONN_INPROGRESS = common dso_local global i64 0, align 8
@SCIFEP_CONNECTED = common dso_local global i64 0, align 8
@SCIFEP_DISCONNECTED = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@SCIFEP_LISTENING = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__scif_pollfd(%struct.file* %0, i32* %1, %struct.scif_endpt* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.scif_endpt*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.scif_endpt* %2, %struct.scif_endpt** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scif_info, i32 0, i32 0, i32 0), align 4
  %9 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %10 = load i32*, i32** @scif_ep_states, align 8
  %11 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %12 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.scif_endpt* %9, i32 %15)
  %17 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %18 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %21 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ASYNC_CONN_INPROGRESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %3
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %28 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %27, i32 0, i32 9
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %31 = call i32 @_scif_poll_wait(%struct.file* %26, i32* %28, i32* %29, %struct.scif_endpt* %30)
  %32 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %33 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ASYNC_CONN_INPROGRESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %25
  %38 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %39 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %45 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SCIFEP_DISCONNECTED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %51 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %43, %37
  %55 = load i32, i32* @EPOLLOUT, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %49
  br label %179

59:                                               ; preds = %25
  br label %60

60:                                               ; preds = %59, %3
  %61 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %62 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SCIFEP_LISTENING, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %60
  %67 = load %struct.file*, %struct.file** %4, align 8
  %68 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %69 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %68, i32 0, i32 7
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %72 = call i32 @_scif_poll_wait(%struct.file* %67, i32* %69, i32* %70, %struct.scif_endpt* %71)
  %73 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %74 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SCIFEP_LISTENING, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %66
  %79 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %80 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @EPOLLIN, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %83, %78
  br label %179

88:                                               ; preds = %66
  br label %89

89:                                               ; preds = %88, %60
  %90 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %91 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %97 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SCIFEP_DISCONNECTED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %175

101:                                              ; preds = %95, %89
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @poll_requested_events(i32* %102)
  %104 = load i32, i32* @EPOLLIN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.file*, %struct.file** %4, align 8
  %109 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %110 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %109, i32 0, i32 5
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %113 = call i32 @_scif_poll_wait(%struct.file* %108, i32* %110, i32* %111, %struct.scif_endpt* %112)
  br label %114

114:                                              ; preds = %107, %101
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @poll_requested_events(i32* %115)
  %117 = load i32, i32* @EPOLLOUT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.file*, %struct.file** %4, align 8
  %122 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %123 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %122, i32 0, i32 4
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %126 = call i32 @_scif_poll_wait(%struct.file* %121, i32* %123, i32* %124, %struct.scif_endpt* %125)
  br label %127

127:                                              ; preds = %120, %114
  %128 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %129 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %135 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @SCIFEP_DISCONNECTED, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %174

139:                                              ; preds = %133, %127
  %140 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %141 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = call i64 @scif_rb_count(i32* %144, i32 1)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load i32, i32* @EPOLLIN, align 4
  %149 = load i32, i32* %7, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %147, %139
  %152 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %153 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = call i64 @scif_rb_space(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load i32, i32* @EPOLLOUT, align 4
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %159, %151
  %164 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %165 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @SCIFEP_DISCONNECTED, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i32, i32* @EPOLLHUP, align 4
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %169, %163
  br label %179

174:                                              ; preds = %133
  br label %175

175:                                              ; preds = %174, %95
  %176 = load i32, i32* @EPOLLERR, align 4
  %177 = load i32, i32* %7, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %175, %173, %87, %58
  %180 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %181 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %180, i32 0, i32 2
  %182 = call i32 @spin_unlock(i32* %181)
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.scif_endpt*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_scif_poll_wait(%struct.file*, i32*, i32*, %struct.scif_endpt*) #1

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local i64 @scif_rb_count(i32*, i32) #1

declare dso_local i64 @scif_rb_space(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
