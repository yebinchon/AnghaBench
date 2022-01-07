; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_detach_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_detach_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32, i32* }
%struct.tun_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_struct*, i32)* @tun_detach_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_detach_filter(%struct.tun_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tun_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tun_file*, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  %12 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %13 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tun_file* @rtnl_dereference(i32 %18)
  store %struct.tun_file* %19, %struct.tun_file** %6, align 8
  %20 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %21 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @lock_sock(i32 %23)
  %25 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %26 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sk_detach_filter(i32 %28)
  %30 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %31 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @release_sock(i32 %33)
  br label %35

35:                                               ; preds = %11
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %7

38:                                               ; preds = %7
  %39 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %40 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  ret void
}

declare dso_local %struct.tun_file* @rtnl_dereference(i32) #1

declare dso_local i32 @lock_sock(i32) #1

declare dso_local i32 @sk_detach_filter(i32) #1

declare dso_local i32 @release_sock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
