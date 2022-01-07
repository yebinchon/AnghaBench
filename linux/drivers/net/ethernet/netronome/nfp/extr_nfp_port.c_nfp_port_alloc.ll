; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_port = type { i32, i32, %struct.nfp_app*, %struct.net_device* }
%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_port* @nfp_port_alloc(%struct.nfp_app* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.nfp_port*, align 8
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nfp_port*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nfp_port* @kzalloc(i32 24, i32 %9)
  store %struct.nfp_port* %10, %struct.nfp_port** %8, align 8
  %11 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  %12 = icmp ne %struct.nfp_port* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.nfp_port* @ERR_PTR(i32 %15)
  store %struct.nfp_port* %16, %struct.nfp_port** %4, align 8
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  %20 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %19, i32 0, i32 3
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  %23 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %25 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  %26 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %25, i32 0, i32 2
  store %struct.nfp_app* %24, %struct.nfp_app** %26, align 8
  %27 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  %28 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %27, i32 0, i32 1
  %29 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %30 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @list_add_tail(i32* %28, i32* %32)
  %34 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  store %struct.nfp_port* %34, %struct.nfp_port** %4, align 8
  br label %35

35:                                               ; preds = %17, %13
  %36 = load %struct.nfp_port*, %struct.nfp_port** %4, align 8
  ret %struct.nfp_port* %36
}

declare dso_local %struct.nfp_port* @kzalloc(i32, i32) #1

declare dso_local %struct.nfp_port* @ERR_PTR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
