; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_is_tnl_info_zero.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_is_tnl_info_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_tunnel_info*)* @is_tnl_info_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_tnl_info_zero(%struct.ip_tunnel_info* %0) #0 {
  %2 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.ip_tunnel_info* %0, %struct.ip_tunnel_info** %2, align 8
  %3 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %2, align 8
  %4 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %1
  %9 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %2, align 8
  %10 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %8
  %15 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %2, align 8
  %16 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %14
  %21 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %2, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %20
  %27 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %2, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %2, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %2, align 8
  %40 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i64 @memchr_inv(i32* %41, i32 0, i32 4)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %38, %32, %26, %20, %14, %8, %1
  %45 = phi i1 [ true, %32 ], [ true, %26 ], [ true, %20 ], [ true, %14 ], [ true, %8 ], [ true, %1 ], [ %43, %38 ]
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i64 @memchr_inv(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
