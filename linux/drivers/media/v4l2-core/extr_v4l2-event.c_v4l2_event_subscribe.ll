; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-event.c_v4l2_event_subscribe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-event.c_v4l2_event_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_event_subscription = type { i64, i32, i32 }
%struct.v4l2_subscribed_event_ops = type { i32 (%struct.v4l2_subscribed_event*, i32)* }
%struct.v4l2_subscribed_event = type opaque
%struct.v4l2_subscribed_event.0 = type { i64, i32, %struct.v4l2_subscribed_event_ops*, i32, %struct.v4l2_fh*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.v4l2_subscribed_event.0* }

@V4L2_EVENT_ALL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@events = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_event_subscribe(%struct.v4l2_fh* %0, %struct.v4l2_event_subscription* %1, i32 %2, %struct.v4l2_subscribed_event_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_fh*, align 8
  %7 = alloca %struct.v4l2_event_subscription*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subscribed_event_ops*, align 8
  %10 = alloca %struct.v4l2_subscribed_event.0*, align 8
  %11 = alloca %struct.v4l2_subscribed_event.0*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %6, align 8
  store %struct.v4l2_event_subscription* %1, %struct.v4l2_event_subscription** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_subscribed_event_ops* %3, %struct.v4l2_subscribed_event_ops** %9, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_EVENT_ALL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %166

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %29 = load i32, i32* @events, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @struct_size(%struct.v4l2_subscribed_event.0* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.v4l2_subscribed_event.0* @kvzalloc(i32 %31, i32 %32)
  store %struct.v4l2_subscribed_event.0* %33, %struct.v4l2_subscribed_event.0** %10, align 8
  %34 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %35 = icmp ne %struct.v4l2_subscribed_event.0* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %166

39:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %46 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %47 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %46, i32 0, i32 7
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store %struct.v4l2_subscribed_event.0* %45, %struct.v4l2_subscribed_event.0** %52, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %40

56:                                               ; preds = %40
  %57 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %61 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %66 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %71 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %73 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %73, i32 0, i32 4
  store %struct.v4l2_fh* %72, %struct.v4l2_fh** %74, align 8
  %75 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %9, align 8
  %76 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %77 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %76, i32 0, i32 2
  store %struct.v4l2_subscribed_event_ops* %75, %struct.v4l2_subscribed_event_ops** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %81, i32 0, i32 0
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %91 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.v4l2_subscribed_event.0* @v4l2_event_subscribed(%struct.v4l2_fh* %90, i64 %93, i32 %96)
  store %struct.v4l2_subscribed_event.0* %97, %struct.v4l2_subscribed_event.0** %11, align 8
  %98 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %11, align 8
  %99 = icmp ne %struct.v4l2_subscribed_event.0* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %56
  %101 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %102 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %101, i32 0, i32 3
  %103 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %104 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %103, i32 0, i32 2
  %105 = call i32 @list_add(i32* %102, i32* %104)
  br label %106

106:                                              ; preds = %100, %56
  %107 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %108 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %11, align 8
  %114 = icmp ne %struct.v4l2_subscribed_event.0* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %117 = call i32 @kvfree(%struct.v4l2_subscribed_event.0* %116)
  br label %161

118:                                              ; preds = %106
  %119 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %120 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %119, i32 0, i32 2
  %121 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %120, align 8
  %122 = icmp ne %struct.v4l2_subscribed_event_ops* %121, null
  br i1 %122, label %123, label %160

123:                                              ; preds = %118
  %124 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %125 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %124, i32 0, i32 2
  %126 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %125, align 8
  %127 = getelementptr inbounds %struct.v4l2_subscribed_event_ops, %struct.v4l2_subscribed_event_ops* %126, i32 0, i32 0
  %128 = load i32 (%struct.v4l2_subscribed_event*, i32)*, i32 (%struct.v4l2_subscribed_event*, i32)** %127, align 8
  %129 = icmp ne i32 (%struct.v4l2_subscribed_event*, i32)* %128, null
  br i1 %129, label %130, label %160

130:                                              ; preds = %123
  %131 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %132 = getelementptr inbounds %struct.v4l2_subscribed_event.0, %struct.v4l2_subscribed_event.0* %131, i32 0, i32 2
  %133 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %132, align 8
  %134 = getelementptr inbounds %struct.v4l2_subscribed_event_ops, %struct.v4l2_subscribed_event_ops* %133, i32 0, i32 0
  %135 = load i32 (%struct.v4l2_subscribed_event*, i32)*, i32 (%struct.v4l2_subscribed_event*, i32)** %134, align 8
  %136 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %137 = bitcast %struct.v4l2_subscribed_event.0* %136 to %struct.v4l2_subscribed_event*
  %138 = load i32, i32* %8, align 4
  %139 = call i32 %135(%struct.v4l2_subscribed_event* %137, i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %130
  %143 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %144 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %12, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  %149 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %150 = call i32 @__v4l2_event_unsubscribe(%struct.v4l2_subscribed_event.0* %149)
  %151 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %152 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i64, i64* %12, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  %157 = load %struct.v4l2_subscribed_event.0*, %struct.v4l2_subscribed_event.0** %10, align 8
  %158 = call i32 @kvfree(%struct.v4l2_subscribed_event.0* %157)
  br label %159

159:                                              ; preds = %142, %130
  br label %160

160:                                              ; preds = %159, %123, %118
  br label %161

161:                                              ; preds = %160, %115
  %162 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %163 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %161, %36, %20
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.v4l2_subscribed_event.0* @kvzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.v4l2_subscribed_event.0*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.v4l2_subscribed_event.0* @v4l2_event_subscribed(%struct.v4l2_fh*, i64, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kvfree(%struct.v4l2_subscribed_event.0*) #1

declare dso_local i32 @__v4l2_event_unsubscribe(%struct.v4l2_subscribed_event.0*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
