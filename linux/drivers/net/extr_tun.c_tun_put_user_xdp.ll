; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_put_user_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_put_user_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32, i32, i32 }
%struct.tun_file = type { i32 }
%struct.xdp_frame = type { i64, %struct.virtio_net_hdr* }
%struct.virtio_net_hdr = type { i32 }
%struct.iov_iter = type { i32 }
%struct.tun_pcpu_stats = type { i64, i32, i32 }

@IFF_VNET_HDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tun_struct*, %struct.tun_file*, %struct.xdp_frame*, %struct.iov_iter*)* @tun_put_user_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tun_put_user_xdp(%struct.tun_struct* %0, %struct.tun_file* %1, %struct.xdp_frame* %2, %struct.iov_iter* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tun_struct*, align 8
  %7 = alloca %struct.tun_file*, align 8
  %8 = alloca %struct.xdp_frame*, align 8
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tun_pcpu_stats*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.virtio_net_hdr, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %6, align 8
  store %struct.tun_file* %1, %struct.tun_file** %7, align 8
  store %struct.xdp_frame* %2, %struct.xdp_frame** %8, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %16 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %19 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_VNET_HDR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %4
  %25 = bitcast %struct.virtio_net_hdr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %27 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @READ_ONCE(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %31 = call i32 @iov_iter_count(%struct.iov_iter* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %92

40:                                               ; preds = %24
  %41 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %42 = call i32 @copy_to_iter(%struct.virtio_net_hdr* %14, i64 4, %struct.iov_iter* %41)
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 4
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* @EFAULT, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %92

51:                                               ; preds = %40
  %52 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @iov_iter_advance(%struct.iov_iter* %52, i32 %56)
  br label %58

58:                                               ; preds = %51, %4
  %59 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %60 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %59, i32 0, i32 1
  %61 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %64 = call i32 @copy_to_iter(%struct.virtio_net_hdr* %61, i64 %62, %struct.iov_iter* %63)
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %13, align 8
  %68 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %69 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.tun_pcpu_stats* @get_cpu_ptr(i32 %70)
  store %struct.tun_pcpu_stats* %71, %struct.tun_pcpu_stats** %12, align 8
  %72 = load %struct.tun_pcpu_stats*, %struct.tun_pcpu_stats** %12, align 8
  %73 = getelementptr inbounds %struct.tun_pcpu_stats, %struct.tun_pcpu_stats* %72, i32 0, i32 1
  %74 = call i32 @u64_stats_update_begin(i32* %73)
  %75 = load %struct.tun_pcpu_stats*, %struct.tun_pcpu_stats** %12, align 8
  %76 = getelementptr inbounds %struct.tun_pcpu_stats, %struct.tun_pcpu_stats* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.tun_pcpu_stats*, %struct.tun_pcpu_stats** %12, align 8
  %81 = getelementptr inbounds %struct.tun_pcpu_stats, %struct.tun_pcpu_stats* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.tun_pcpu_stats*, %struct.tun_pcpu_stats** %12, align 8
  %85 = getelementptr inbounds %struct.tun_pcpu_stats, %struct.tun_pcpu_stats* %84, i32 0, i32 1
  %86 = call i32 @u64_stats_update_end(i32* %85)
  %87 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %88 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @put_cpu_ptr(i32 %89)
  %91 = load i64, i64* %13, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %58, %48, %37
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @READ_ONCE(i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #2

declare dso_local i32 @copy_to_iter(%struct.virtio_net_hdr*, i64, %struct.iov_iter*) #2

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i32) #2

declare dso_local %struct.tun_pcpu_stats* @get_cpu_ptr(i32) #2

declare dso_local i32 @u64_stats_update_begin(i32*) #2

declare dso_local i32 @u64_stats_update_end(i32*) #2

declare dso_local i32 @put_cpu_ptr(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
