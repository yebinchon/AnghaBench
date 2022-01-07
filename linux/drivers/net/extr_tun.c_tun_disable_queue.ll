; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_disable_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_disable_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32, i32 }
%struct.tun_file = type { i32, %struct.tun_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_struct*, %struct.tun_file*)* @tun_disable_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_disable_queue(%struct.tun_struct* %0, %struct.tun_file* %1) #0 {
  %3 = alloca %struct.tun_struct*, align 8
  %4 = alloca %struct.tun_file*, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %3, align 8
  store %struct.tun_file* %1, %struct.tun_file** %4, align 8
  %5 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %6 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %7 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %6, i32 0, i32 1
  store %struct.tun_struct* %5, %struct.tun_struct** %7, align 8
  %8 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %9 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %8, i32 0, i32 0
  %10 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %10, i32 0, i32 1
  %12 = call i32 @list_add_tail(i32* %9, i32* %11)
  %13 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
