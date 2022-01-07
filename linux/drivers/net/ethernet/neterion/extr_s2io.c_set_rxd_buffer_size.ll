; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_set_rxd_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_set_rxd_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i64, %struct.net_device* }
%struct.net_device = type { i64 }
%struct.RxD_t = type { i32 }

@RXD_MODE_1 = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@RXD_MODE_3B = common dso_local global i64 0, align 8
@BUF0_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*, %struct.RxD_t*, i32)* @set_rxd_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rxd_buffer_size(%struct.s2io_nic* %0, %struct.RxD_t* %1, i32 %2) #0 {
  %4 = alloca %struct.s2io_nic*, align 8
  %5 = alloca %struct.RxD_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %4, align 8
  store %struct.RxD_t* %1, %struct.RxD_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %9 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %12 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RXD_MODE_1, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @NET_IP_ALIGN, align 8
  %20 = sub nsw i64 %18, %19
  %21 = call i32 @SET_BUFFER0_SIZE_1(i64 %20)
  %22 = load %struct.RxD_t*, %struct.RxD_t** %5, align 8
  %23 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %50

24:                                               ; preds = %3
  %25 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %26 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RXD_MODE_3B, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load i32, i32* @BUF0_LEN, align 4
  %32 = call i32 @SET_BUFFER0_SIZE_3(i32 %31)
  %33 = load %struct.RxD_t*, %struct.RxD_t** %5, align 8
  %34 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = call i32 @SET_BUFFER1_SIZE_3(i32 1)
  %36 = load %struct.RxD_t*, %struct.RxD_t** %5, align 8
  %37 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 4
  %44 = call i32 @SET_BUFFER2_SIZE_3(i64 %43)
  %45 = load %struct.RxD_t*, %struct.RxD_t** %5, align 8
  %46 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %30, %24
  br label %50

50:                                               ; preds = %49, %16
  ret void
}

declare dso_local i32 @SET_BUFFER0_SIZE_1(i64) #1

declare dso_local i32 @SET_BUFFER0_SIZE_3(i32) #1

declare dso_local i32 @SET_BUFFER1_SIZE_3(i32) #1

declare dso_local i32 @SET_BUFFER2_SIZE_3(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
