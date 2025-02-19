; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_activate_IRQ_part_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_activate_IRQ_part_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32 }

@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*, i8*, i64, i32)* @xpc_send_activate_IRQ_part_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_send_activate_IRQ_part_uv(%struct.xpc_partition* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.xpc_partition*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @xpc_send_activate_IRQ_uv(%struct.xpc_partition* %10, i8* %11, i64 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @xpSuccess, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %4
  ret void
}

declare dso_local i32 @xpc_send_activate_IRQ_uv(%struct.xpc_partition*, i8*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
