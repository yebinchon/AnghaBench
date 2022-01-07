; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_command_res_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_command_res_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64 }
%struct.vub300_mmc_host = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__*, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @command_res_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_res_completed(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.vub300_mmc_host*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.vub300_mmc_host*
  store %struct.vub300_mmc_host* %7, %struct.vub300_mmc_host** %3, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %14, i32 0, i32 6
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %72

21:                                               ; preds = %13
  %22 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %71

27:                                               ; preds = %21
  %28 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %70

35:                                               ; preds = %27
  %36 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @vub300_response_error(i32 %45)
  %47 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %48 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @usb_unlink_urb(i64 %53)
  br label %69

55:                                               ; preds = %35
  %56 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %57 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @vub300_response_error(i32 %60)
  %62 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %63 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  %66 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %67 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %66, i32 0, i32 1
  %68 = call i32 @usb_sg_cancel(i32* %67)
  br label %69

69:                                               ; preds = %55, %40
  br label %70

70:                                               ; preds = %69, %34
  br label %71

71:                                               ; preds = %70, %26
  br label %72

72:                                               ; preds = %71, %20
  br label %73

73:                                               ; preds = %72, %12
  %74 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %75 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %74, i32 0, i32 0
  %76 = call i32 @complete(i32* %75)
  ret void
}

declare dso_local i8* @vub300_response_error(i32) #1

declare dso_local i32 @usb_unlink_urb(i64) #1

declare dso_local i32 @usb_sg_cancel(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
