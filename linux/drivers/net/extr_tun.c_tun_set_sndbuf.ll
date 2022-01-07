; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_set_sndbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_set_sndbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32, i32, i32* }
%struct.tun_file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_struct*)* @tun_set_sndbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_set_sndbuf(%struct.tun_struct* %0) #0 {
  %2 = alloca %struct.tun_struct*, align 8
  %3 = alloca %struct.tun_file*, align 8
  %4 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %13 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tun_file* @rtnl_dereference(i32 %18)
  store %struct.tun_file* %19, %struct.tun_file** %3, align 8
  %20 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %21 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %24 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 4
  br label %28

28:                                               ; preds = %11
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %5

31:                                               ; preds = %5
  ret void
}

declare dso_local %struct.tun_file* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
