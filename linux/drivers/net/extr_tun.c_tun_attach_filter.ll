; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_attach_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_attach_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32, i32, i32, i32* }
%struct.tun_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*)* @tun_attach_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_attach_filter(%struct.tun_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tun_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tun_file*, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %47, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %7
  %14 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %15 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.tun_file* @rtnl_dereference(i32 %20)
  store %struct.tun_file* %21, %struct.tun_file** %6, align 8
  %22 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %23 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lock_sock(i32 %25)
  %27 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %27, i32 0, i32 2
  %29 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %30 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sk_attach_filter(i32* %28, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %35 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @release_sock(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %13
  %42 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @tun_detach_filter(%struct.tun_struct* %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %13
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %7

50:                                               ; preds = %7
  %51 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %52 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.tun_file* @rtnl_dereference(i32) #1

declare dso_local i32 @lock_sock(i32) #1

declare dso_local i32 @sk_attach_filter(i32*, i32) #1

declare dso_local i32 @release_sock(i32) #1

declare dso_local i32 @tun_detach_filter(%struct.tun_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
