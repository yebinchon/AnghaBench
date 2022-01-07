; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c__free_receive_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c__free_receive_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.bpf_prog = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtnet_info*)* @_free_receive_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_free_receive_bufs(%struct.virtnet_info* %0) #0 {
  %2 = alloca %struct.virtnet_info*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %57, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %8 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %22, %11
  %13 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %14 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %12
  %23 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %24 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @get_a_page(%struct.TYPE_2__* %28, i32 %29)
  %31 = call i32 @__free_pages(i32 %30, i32 0)
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %34 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.bpf_prog* @rtnl_dereference(i32 %40)
  store %struct.bpf_prog* %41, %struct.bpf_prog** %3, align 8
  %42 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %43 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @RCU_INIT_POINTER(i32 %49, i32* null)
  %51 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %52 = icmp ne %struct.bpf_prog* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %55 = call i32 @bpf_prog_put(%struct.bpf_prog* %54)
  br label %56

56:                                               ; preds = %53, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %5

60:                                               ; preds = %5
  ret void
}

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @get_a_page(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.bpf_prog* @rtnl_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
