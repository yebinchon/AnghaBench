; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_get_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_get_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i32 }
%struct.file = type { %struct.tun_file*, i32* }
%struct.tun_file = type { %struct.ptr_ring }

@tun_fops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ptr_ring* @tun_get_tx_ring(%struct.file* %0) #0 {
  %2 = alloca %struct.ptr_ring*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.tun_file*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, @tun_fops
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.ptr_ring* @ERR_PTR(i32 %11)
  store %struct.ptr_ring* %12, %struct.ptr_ring** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.tun_file*, %struct.tun_file** %15, align 8
  store %struct.tun_file* %16, %struct.tun_file** %4, align 8
  %17 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %18 = icmp ne %struct.tun_file* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @EBADFD, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ptr_ring* @ERR_PTR(i32 %21)
  store %struct.ptr_ring* %22, %struct.ptr_ring** %2, align 8
  br label %26

23:                                               ; preds = %13
  %24 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %25 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %24, i32 0, i32 0
  store %struct.ptr_ring* %25, %struct.ptr_ring** %2, align 8
  br label %26

26:                                               ; preds = %23, %19, %9
  %27 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  ret %struct.ptr_ring* %27
}

declare dso_local %struct.ptr_ring* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
