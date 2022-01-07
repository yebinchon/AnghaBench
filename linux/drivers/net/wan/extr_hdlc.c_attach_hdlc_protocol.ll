; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc.c_attach_hdlc_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc.c_attach_hdlc_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hdlc_proto = type { i32 }
%struct.TYPE_2__ = type { %struct.hdlc_proto*, i32* }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attach_hdlc_protocol(%struct.net_device* %0, %struct.hdlc_proto* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hdlc_proto*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.hdlc_proto* %1, %struct.hdlc_proto** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call i32 @detach_hdlc_protocol(%struct.net_device* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = load %struct.hdlc_proto*, %struct.hdlc_proto** %6, align 8
  %17 = getelementptr inbounds %struct.hdlc_proto, %struct.hdlc_proto* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @try_module_get(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %52

24:                                               ; preds = %15
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmalloc(i64 %28, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call %struct.TYPE_2__* @dev_to_hdlc(%struct.net_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* %30, i32** %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call %struct.TYPE_2__* @dev_to_hdlc(%struct.net_device* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load %struct.hdlc_proto*, %struct.hdlc_proto** %6, align 8
  %41 = getelementptr inbounds %struct.hdlc_proto, %struct.hdlc_proto* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @module_put(i32 %42)
  %44 = load i32, i32* @ENOBUFS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46, %24
  %48 = load %struct.hdlc_proto*, %struct.hdlc_proto** %6, align 8
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call %struct.TYPE_2__* @dev_to_hdlc(%struct.net_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.hdlc_proto* %48, %struct.hdlc_proto** %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %39, %21, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @detach_hdlc_protocol(%struct.net_device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local %struct.TYPE_2__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
