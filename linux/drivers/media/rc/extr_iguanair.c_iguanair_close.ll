; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.iguanair* }
%struct.iguanair = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to disable receiver: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*)* @iguanair_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iguanair_close(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.iguanair*, align 8
  %4 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %5 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %5, i32 0, i32 0
  %7 = load %struct.iguanair*, %struct.iguanair** %6, align 8
  store %struct.iguanair* %7, %struct.iguanair** %3, align 8
  %8 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %9 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %12 = call i32 @iguanair_receiver(%struct.iguanair* %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %14 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %24 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %17, %1
  %29 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %30 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iguanair_receiver(%struct.iguanair*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
