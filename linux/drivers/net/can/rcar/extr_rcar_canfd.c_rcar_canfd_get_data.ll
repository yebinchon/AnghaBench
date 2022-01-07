; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_canfd_channel = type { i32 }
%struct.canfd_frame = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_canfd_channel*, %struct.canfd_frame*, i32)* @rcar_canfd_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_get_data(%struct.rcar_canfd_channel* %0, %struct.canfd_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.rcar_canfd_channel*, align 8
  %5 = alloca %struct.canfd_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rcar_canfd_channel* %0, %struct.rcar_canfd_channel** %4, align 8
  store %struct.canfd_frame* %1, %struct.canfd_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %10 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @DIV_ROUND_UP(i32 %11, i32 4)
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %36, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %19 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = add i64 %22, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @rcar_canfd_read(i32 %20, i32 %27)
  %29 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %30 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %28, i32* %35, align 4
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %13

39:                                               ; preds = %13
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @rcar_canfd_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
