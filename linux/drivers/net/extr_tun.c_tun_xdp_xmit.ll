; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.tun_struct = type { %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tun_file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@XDP_XMIT_FLAGS_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@XDP_XMIT_FLUSH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.xdp_frame**, i64)* @tun_xdp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_xdp_xmit(%struct.net_device* %0, i32 %1, %struct.xdp_frame** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_frame**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tun_struct*, align 8
  %11 = alloca %struct.tun_file*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xdp_frame*, align 8
  %17 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_frame** %2, %struct.xdp_frame*** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.tun_struct* @netdev_priv(%struct.net_device* %18)
  store %struct.tun_struct* %19, %struct.tun_struct** %10, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @XDP_XMIT_FLAGS_MASK, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = trunc i64 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %115

31:                                               ; preds = %4
  %32 = call i32 (...) @rcu_read_lock()
  br label %33

33:                                               ; preds = %60, %31
  %34 = load %struct.tun_struct*, %struct.tun_struct** %10, align 8
  %35 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @READ_ONCE(i32 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %115

44:                                               ; preds = %33
  %45 = load %struct.tun_struct*, %struct.tun_struct** %10, align 8
  %46 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 (...) @smp_processor_id()
  %49 = load i64, i64* %12, align 8
  %50 = urem i64 %48, %49
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.tun_file* @rcu_dereference(i32 %52)
  store %struct.tun_file* %53, %struct.tun_file** %11, align 8
  %54 = load %struct.tun_file*, %struct.tun_file** %11, align 8
  %55 = icmp ne %struct.tun_file* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %33

61:                                               ; preds = %44
  %62 = load %struct.tun_file*, %struct.tun_file** %11, align 8
  %63 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %95, %61
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %66
  %71 = load %struct.xdp_frame**, %struct.xdp_frame*** %8, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %71, i64 %73
  %75 = load %struct.xdp_frame*, %struct.xdp_frame** %74, align 8
  store %struct.xdp_frame* %75, %struct.xdp_frame** %16, align 8
  %76 = load %struct.xdp_frame*, %struct.xdp_frame** %16, align 8
  %77 = call i8* @tun_xdp_to_ptr(%struct.xdp_frame* %76)
  store i8* %77, i8** %17, align 8
  %78 = load %struct.tun_file*, %struct.tun_file** %11, align 8
  %79 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %78, i32 0, i32 0
  %80 = load i8*, i8** %17, align 8
  %81 = call i64 @__ptr_ring_produce(%struct.TYPE_4__* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %70
  %84 = load %struct.tun_struct*, %struct.tun_struct** %10, align 8
  %85 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @this_cpu_inc(i32 %88)
  %90 = load %struct.xdp_frame*, %struct.xdp_frame** %16, align 8
  %91 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %90)
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %83, %70
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %66

98:                                               ; preds = %66
  %99 = load %struct.tun_file*, %struct.tun_file** %11, align 8
  %100 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @XDP_XMIT_FLUSH, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load %struct.tun_file*, %struct.tun_file** %11, align 8
  %109 = call i32 @__tun_xdp_flush_tfile(%struct.tun_file* %108)
  br label %110

110:                                              ; preds = %107, %98
  %111 = call i32 (...) @rcu_read_unlock()
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %110, %40, %28
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.tun_struct* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.tun_file* @rcu_dereference(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @tun_xdp_to_ptr(%struct.xdp_frame*) #1

declare dso_local i64 @__ptr_ring_produce(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__tun_xdp_flush_tfile(%struct.tun_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
