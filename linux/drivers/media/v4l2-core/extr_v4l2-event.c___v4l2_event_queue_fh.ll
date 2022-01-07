; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-event.c___v4l2_event_queue_fh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-event.c___v4l2_event_queue_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32, i32, i32, i64 }
%struct.v4l2_event = type { i32, i32, i32 }
%struct.v4l2_subscribed_event = type { i32, i32, i32, %struct.v4l2_kevent*, %struct.TYPE_5__* }
%struct.v4l2_kevent = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*, %struct.v4l2_event*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_fh*, %struct.v4l2_event*, i32)* @__v4l2_event_queue_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__v4l2_event_queue_fh(%struct.v4l2_fh* %0, %struct.v4l2_event* %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.v4l2_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_subscribed_event*, align 8
  %8 = alloca %struct.v4l2_kevent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_kevent*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %4, align 8
  store %struct.v4l2_event* %1, %struct.v4l2_event** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %12 = load %struct.v4l2_event*, %struct.v4l2_event** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_event*, %struct.v4l2_event** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.v4l2_subscribed_event* @v4l2_event_subscribed(%struct.v4l2_fh* %11, i32 %14, i32 %17)
  store %struct.v4l2_subscribed_event* %18, %struct.v4l2_subscribed_event** %7, align 8
  %19 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %20 = icmp eq %struct.v4l2_subscribed_event* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %174

22:                                               ; preds = %3
  %23 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %22
  %35 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %35, i32 0, i32 3
  %37 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %36, align 8
  %38 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %39 = call i32 @sev_pos(%struct.v4l2_subscribed_event* %38, i32 0)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %37, i64 %40
  store %struct.v4l2_kevent* %41, %struct.v4l2_kevent** %8, align 8
  %42 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %8, align 8
  %43 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %42, i32 0, i32 0
  %44 = call i32 @list_del(i32* %43)
  %45 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %50 = call i32 @sev_pos(%struct.v4l2_subscribed_event* %49, i32 1)
  %51 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %54 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %84

61:                                               ; preds = %34
  %62 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %62, i32 0, i32 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = icmp ne %struct.TYPE_5__* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %67, i32 0, i32 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32 (%struct.TYPE_6__*, %struct.v4l2_event*)*, i32 (%struct.TYPE_6__*, %struct.v4l2_event*)** %70, align 8
  %72 = icmp ne i32 (%struct.TYPE_6__*, %struct.v4l2_event*)* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %74, i32 0, i32 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32 (%struct.TYPE_6__*, %struct.v4l2_event*)*, i32 (%struct.TYPE_6__*, %struct.v4l2_event*)** %77, align 8
  %79 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %8, align 8
  %80 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %79, i32 0, i32 1
  %81 = load %struct.v4l2_event*, %struct.v4l2_event** %5, align 8
  %82 = call i32 %78(%struct.TYPE_6__* %80, %struct.v4l2_event* %81)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %73, %66, %61
  br label %115

84:                                               ; preds = %34
  %85 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %85, i32 0, i32 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = icmp ne %struct.TYPE_5__* %87, null
  br i1 %88, label %89, label %114

89:                                               ; preds = %84
  %90 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %90, i32 0, i32 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_6__*, %struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*, %struct.TYPE_6__*)** %93, align 8
  %95 = icmp ne i32 (%struct.TYPE_6__*, %struct.TYPE_6__*)* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %89
  %97 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %97, i32 0, i32 3
  %99 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %98, align 8
  %100 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %101 = call i32 @sev_pos(%struct.v4l2_subscribed_event* %100, i32 0)
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %99, i64 %102
  store %struct.v4l2_kevent* %103, %struct.v4l2_kevent** %10, align 8
  %104 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %104, i32 0, i32 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32 (%struct.TYPE_6__*, %struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*, %struct.TYPE_6__*)** %107, align 8
  %109 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %8, align 8
  %110 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %109, i32 0, i32 1
  %111 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %10, align 8
  %112 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %111, i32 0, i32 1
  %113 = call i32 %108(%struct.TYPE_6__* %110, %struct.TYPE_6__* %112)
  br label %114

114:                                              ; preds = %96, %89, %84
  br label %115

115:                                              ; preds = %114, %83
  br label %116

116:                                              ; preds = %115, %22
  %117 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %117, i32 0, i32 3
  %119 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %118, align 8
  %120 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %121 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @sev_pos(%struct.v4l2_subscribed_event* %120, i32 %123)
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %119, i64 %125
  store %struct.v4l2_kevent* %126, %struct.v4l2_kevent** %8, align 8
  %127 = load %struct.v4l2_event*, %struct.v4l2_event** %5, align 8
  %128 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %8, align 8
  %131 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 8
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %116
  %136 = load %struct.v4l2_event*, %struct.v4l2_event** %5, align 8
  %137 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %8, align 8
  %140 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %135, %116
  %143 = load %struct.v4l2_event*, %struct.v4l2_event** %5, align 8
  %144 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %8, align 8
  %147 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %8, align 8
  %151 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %153 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %8, align 8
  %156 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i64 %154, i64* %157, align 8
  %158 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %159 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 8
  %162 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %8, align 8
  %163 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %162, i32 0, i32 0
  %164 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %165 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %164, i32 0, i32 2
  %166 = call i32 @list_add_tail(i32* %163, i32* %165)
  %167 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %168 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %172 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %171, i32 0, i32 0
  %173 = call i32 @wake_up_all(i32* %172)
  br label %174

174:                                              ; preds = %142, %21
  ret void
}

declare dso_local %struct.v4l2_subscribed_event* @v4l2_event_subscribed(%struct.v4l2_fh*, i32, i32) #1

declare dso_local i32 @sev_pos(%struct.v4l2_subscribed_event*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
