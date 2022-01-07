; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp_main.c_xpc_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp_main.c_xpc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_registration = type { i32, i64, i64, i64, i64, i32*, i32* }
%struct.TYPE_2__ = type { i32 (i32)* }

@XPC_MAX_NCHANNELS = common dso_local global i32 0, align 4
@xpc_registrations = common dso_local global %struct.xpc_registration* null, align 8
@xpc_interface = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_registration*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @XPC_MAX_NCHANNELS, align 4
  %9 = icmp sge i32 %7, %8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ true, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @DBUG_ON(i32 %12)
  %14 = load %struct.xpc_registration*, %struct.xpc_registration** @xpc_registrations, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %14, i64 %16
  store %struct.xpc_registration* %17, %struct.xpc_registration** %3, align 8
  %18 = load %struct.xpc_registration*, %struct.xpc_registration** %3, align 8
  %19 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.xpc_registration*, %struct.xpc_registration** %3, align 8
  %22 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %10
  %26 = load %struct.xpc_registration*, %struct.xpc_registration** %3, align 8
  %27 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %52

29:                                               ; preds = %10
  %30 = load %struct.xpc_registration*, %struct.xpc_registration** %3, align 8
  %31 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %30, i32 0, i32 6
  store i32* null, i32** %31, align 8
  %32 = load %struct.xpc_registration*, %struct.xpc_registration** %3, align 8
  %33 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %32, i32 0, i32 5
  store i32* null, i32** %33, align 8
  %34 = load %struct.xpc_registration*, %struct.xpc_registration** %3, align 8
  %35 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.xpc_registration*, %struct.xpc_registration** %3, align 8
  %37 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.xpc_registration*, %struct.xpc_registration** %3, align 8
  %39 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.xpc_registration*, %struct.xpc_registration** %3, align 8
  %41 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_interface, i32 0, i32 0), align 8
  %43 = icmp ne i32 (i32)* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_interface, i32 0, i32 0), align 8
  %46 = load i32, i32* %2, align 4
  %47 = call i32 %45(i32 %46)
  br label %48

48:                                               ; preds = %44, %29
  %49 = load %struct.xpc_registration*, %struct.xpc_registration** %3, align 8
  %50 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %25
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
