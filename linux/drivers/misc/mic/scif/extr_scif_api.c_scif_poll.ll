; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c_scif_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c_scif_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_pollepd = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.poll_wqueues = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_poll(%struct.scif_pollepd* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.scif_pollepd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.poll_wqueues, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scif_pollepd* %0, %struct.scif_pollepd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @msecs_to_jiffies(i64 %22)
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  store i32 %25, i32* %13, align 4
  %26 = call i32 @poll_initwait(%struct.poll_wqueues* %7)
  %27 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %7, i32 0, i32 1
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %8, align 8
  br label %28

28:                                               ; preds = %24, %118
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %88, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %91

33:                                               ; preds = %29
  %34 = load %struct.scif_pollepd*, %struct.scif_pollepd** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.scif_pollepd, %struct.scif_pollepd* %34, i64 %36
  %38 = getelementptr inbounds %struct.scif_pollepd, %struct.scif_pollepd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EPOLLERR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @EPOLLHUP, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.scif_pollepd*, %struct.scif_pollepd** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.scif_pollepd, %struct.scif_pollepd* %46, i64 %48
  %50 = getelementptr inbounds %struct.scif_pollepd, %struct.scif_pollepd* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = load %struct.scif_pollepd*, %struct.scif_pollepd** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.scif_pollepd, %struct.scif_pollepd* %55, i64 %57
  %59 = getelementptr inbounds %struct.scif_pollepd, %struct.scif_pollepd* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @__scif_pollfd(i32 %53, %struct.TYPE_4__* %54, %struct.TYPE_5__* %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.scif_pollepd*, %struct.scif_pollepd** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.scif_pollepd, %struct.scif_pollepd* %62, i64 %64
  %66 = getelementptr inbounds %struct.scif_pollepd, %struct.scif_pollepd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @EPOLLERR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @EPOLLHUP, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %33
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %76, %33
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.scif_pollepd*, %struct.scif_pollepd** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.scif_pollepd, %struct.scif_pollepd* %83, i64 %85
  %87 = getelementptr inbounds %struct.scif_pollepd, %struct.scif_pollepd* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %29

91:                                               ; preds = %29
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %7, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* @current, align 4
  %100 = call i64 @signal_pending(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EINTR, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %102, %96
  br label %106

106:                                              ; preds = %105, %91
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %106
  br label %119

113:                                              ; preds = %109
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @schedule_timeout_interruptible(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  store i32 1, i32* %11, align 4
  br label %118

118:                                              ; preds = %117, %113
  br label %28

119:                                              ; preds = %112
  %120 = call i32 @poll_freewait(%struct.poll_wqueues* %7)
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @poll_initwait(%struct.poll_wqueues*) #1

declare dso_local i32 @__scif_pollfd(i32, %struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @poll_freewait(%struct.poll_wqueues*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
