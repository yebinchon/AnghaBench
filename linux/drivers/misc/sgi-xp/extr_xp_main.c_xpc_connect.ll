; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp_main.c_xpc_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp_main.c_xpc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_registration = type { i32, i32*, i8*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 (i32)* }

@XPC_MAX_NCHANNELS = common dso_local global i32 0, align 4
@XPC_MSG_MAX_SIZE = common dso_local global i64 0, align 8
@xpPayloadTooBig = common dso_local global i32 0, align 4
@xpc_registrations = common dso_local global %struct.xpc_registration* null, align 8
@xpInterrupted = common dso_local global i32 0, align 4
@xpAlreadyRegistered = common dso_local global i32 0, align 4
@xpc_interface = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpSuccess = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_connect(i32 %0, i32* %1, i8* %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.xpc_registration*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @XPC_MAX_NCHANNELS, align 4
  %22 = icmp sge i32 %20, %21
  br label %23

23:                                               ; preds = %19, %7
  %24 = phi i1 [ true, %7 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @DBUG_ON(i32 %25)
  %27 = load i64, i64* %12, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %13, align 8
  %31 = icmp eq i64 %30, 0
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ true, %23 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @DBUG_ON(i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @DBUG_ON(i32 %38)
  %40 = load i64, i64* %14, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp sgt i64 %43, %44
  br label %46

46:                                               ; preds = %42, %32
  %47 = phi i1 [ true, %32 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @DBUG_ON(i32 %48)
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @XPC_MSG_SIZE(i64 %50)
  %52 = load i64, i64* @XPC_MSG_MAX_SIZE, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @xpPayloadTooBig, align 4
  store i32 %55, i32* %8, align 4
  br label %108

56:                                               ; preds = %46
  %57 = load %struct.xpc_registration*, %struct.xpc_registration** @xpc_registrations, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %57, i64 %59
  store %struct.xpc_registration* %60, %struct.xpc_registration** %16, align 8
  %61 = load %struct.xpc_registration*, %struct.xpc_registration** %16, align 8
  %62 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %61, i32 0, i32 0
  %63 = call i64 @mutex_lock_interruptible(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @xpInterrupted, align 4
  store i32 %66, i32* %8, align 4
  br label %108

67:                                               ; preds = %56
  %68 = load %struct.xpc_registration*, %struct.xpc_registration** %16, align 8
  %69 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.xpc_registration*, %struct.xpc_registration** %16, align 8
  %74 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* @xpAlreadyRegistered, align 4
  store i32 %76, i32* %8, align 4
  br label %108

77:                                               ; preds = %67
  %78 = load i64, i64* %12, align 8
  %79 = call i64 @XPC_MSG_SIZE(i64 %78)
  %80 = load %struct.xpc_registration*, %struct.xpc_registration** %16, align 8
  %81 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %80, i32 0, i32 6
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.xpc_registration*, %struct.xpc_registration** %16, align 8
  %84 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load %struct.xpc_registration*, %struct.xpc_registration** %16, align 8
  %87 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load %struct.xpc_registration*, %struct.xpc_registration** %16, align 8
  %90 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.xpc_registration*, %struct.xpc_registration** %16, align 8
  %93 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load %struct.xpc_registration*, %struct.xpc_registration** %16, align 8
  %96 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.xpc_registration*, %struct.xpc_registration** %16, align 8
  %98 = getelementptr inbounds %struct.xpc_registration, %struct.xpc_registration* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_interface, i32 0, i32 0), align 8
  %101 = icmp ne i32 (i32)* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %77
  %103 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_interface, i32 0, i32 0), align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 %103(i32 %104)
  br label %106

106:                                              ; preds = %102, %77
  %107 = load i32, i32* @xpSuccess, align 4
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %106, %72, %65, %54
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @XPC_MSG_SIZE(i64) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
