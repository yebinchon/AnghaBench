; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_cpu_to_tun16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_cpu_to_tun16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*, i32)* @cpu_to_tun16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_to_tun16(%struct.tun_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tun_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %6 = call i32 @tun_is_little_endian(%struct.tun_struct* %5)
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @__cpu_to_virtio16(i32 %6, i32 %7)
  ret i32 %8
}

declare dso_local i32 @__cpu_to_virtio16(i32, i32) #1

declare dso_local i32 @tun_is_little_endian(%struct.tun_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
