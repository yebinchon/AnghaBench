; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_napi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_napi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32 }
%struct.tun_file = type { i32, i32, i32 }

@tun_napi_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_struct*, %struct.tun_file*, i32, i32)* @tun_napi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_napi_init(%struct.tun_struct* %0, %struct.tun_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tun_struct*, align 8
  %6 = alloca %struct.tun_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %5, align 8
  store %struct.tun_file* %1, %struct.tun_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %11 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i1 [ false, %4 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %21 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.tun_struct*, %struct.tun_struct** %5, align 8
  %26 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %29 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %28, i32 0, i32 2
  %30 = load i32, i32* @tun_napi_poll, align 4
  %31 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %32 = call i32 @netif_napi_add(i32 %27, i32* %29, i32 %30, i32 %31)
  %33 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %34 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %33, i32 0, i32 2
  %35 = call i32 @napi_enable(i32* %34)
  br label %36

36:                                               ; preds = %24, %17
  ret void
}

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
