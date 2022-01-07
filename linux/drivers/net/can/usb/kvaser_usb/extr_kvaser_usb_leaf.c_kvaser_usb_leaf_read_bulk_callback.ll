; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_read_bulk_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_read_bulk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kvaser_cmd = type { i32 }

@CMD_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Format error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, i8*, i32)* @kvaser_usb_leaf_read_bulk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_read_bulk_callback(%struct.kvaser_usb* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.kvaser_usb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvaser_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %48, %25, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CMD_HEADER_LEN, align 4
  %13 = sub nsw i32 %11, %12
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %16, i64 %18
  %20 = bitcast i8* %19 to %struct.kvaser_cmd*
  store %struct.kvaser_cmd* %20, %struct.kvaser_cmd** %7, align 8
  %21 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %28 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = call i32 @round_up(i32 %26, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %9

34:                                               ; preds = %15
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %44 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @dev_err_ratelimited(i32* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %57

48:                                               ; preds = %34
  %49 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %50 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %51 = call i32 @kvaser_usb_leaf_handle_command(%struct.kvaser_usb* %49, %struct.kvaser_cmd* %50)
  %52 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %9

57:                                               ; preds = %42, %9
  ret void
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*) #1

declare dso_local i32 @kvaser_usb_leaf_handle_command(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
