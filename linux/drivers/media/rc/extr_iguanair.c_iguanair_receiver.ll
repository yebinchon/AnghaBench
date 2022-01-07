; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_receiver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iguanair = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@DIR_OUT = common dso_local global i32 0, align 4
@CMD_RECEIVER_ON = common dso_local global i32 0, align 4
@CMD_RECEIVER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iguanair*, i32)* @iguanair_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iguanair_receiver(%struct.iguanair* %0, i32 %1) #0 {
  %3 = alloca %struct.iguanair*, align 8
  %4 = alloca i32, align 4
  store %struct.iguanair* %0, %struct.iguanair** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %6 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @DIR_OUT, align 4
  %11 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %12 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %10, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @CMD_RECEIVER_ON, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @CMD_RECEIVER_OFF, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %25 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %33 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ir_raw_event_reset(i32 %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %38 = call i32 @iguanair_send(%struct.iguanair* %37, i32 16)
  ret i32 %38
}

declare dso_local i32 @ir_raw_event_reset(i32) #1

declare dso_local i32 @iguanair_send(%struct.iguanair*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
