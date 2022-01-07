; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_c2port-duramar2150.c_duramar2150_c2port_c2d_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_c2port-duramar2150.c_duramar2150_c2port_c2d_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { i32 }

@update_lock = common dso_local global i32 0, align 4
@DIR_PORT = common dso_local global i32 0, align 4
@C2D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2port_device*, i32)* @duramar2150_c2port_c2d_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @duramar2150_c2port_c2d_dir(%struct.c2port_device* %0, i32 %1) #0 {
  %3 = alloca %struct.c2port_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.c2port_device* %0, %struct.c2port_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @update_lock)
  %7 = load i32, i32* @DIR_PORT, align 4
  %8 = call i32 @inb(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @C2D, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load i32, i32* @DIR_PORT, align 4
  %17 = call i32 @outb(i32 %15, i32 %16)
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @C2D, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @DIR_PORT, align 4
  %23 = call i32 @outb(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %11
  %25 = call i32 @mutex_unlock(i32* @update_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
