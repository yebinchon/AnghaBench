; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_xbox_remote.c_xbox_remote_input_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_xbox_remote.c_xbox_remote_input_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.TYPE_2__*, %struct.xbox_remote* }
%struct.TYPE_2__ = type { i32 }
%struct.xbox_remote = type { i8*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Weird data, len=%d: %*ph\0A\00", align 1
@RC_PROTO_XBOX_DVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @xbox_remote_input_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbox_remote_input_report(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.xbox_remote*, align 8
  %4 = alloca i8*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 2
  %7 = load %struct.xbox_remote*, %struct.xbox_remote** %6, align 8
  store %struct.xbox_remote* %7, %struct.xbox_remote** %3, align 8
  %8 = load %struct.xbox_remote*, %struct.xbox_remote** %3, align 8
  %9 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.urb*, %struct.urb** %2, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 6
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %18, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %15, %1
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = trunc i32 %31 to i8
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 zeroext %32, i8 zeroext %36, i8* %37)
  br label %49

39:                                               ; preds = %15
  %40 = load %struct.xbox_remote*, %struct.xbox_remote** %3, align 8
  %41 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @RC_PROTO_XBOX_DVD, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = bitcast i8* %45 to i32*
  %47 = call i32 @le16_to_cpup(i32* %46)
  %48 = call i32 @rc_keydown(i32 %42, i32 %43, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %39, %24
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
