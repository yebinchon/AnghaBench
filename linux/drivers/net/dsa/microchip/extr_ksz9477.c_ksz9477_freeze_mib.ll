; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_freeze_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_freeze_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { %struct.ksz_port* }
%struct.ksz_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MIB_COUNTER_FLUSH_FREEZE = common dso_local global i32 0, align 4
@REG_PORT_MIB_CTRL_STAT__4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, i32)* @ksz9477_freeze_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_freeze_mib(%struct.ksz_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ksz_port*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @MIB_COUNTER_FLUSH_FREEZE, align 4
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %17 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %16, i32 0, i32 0
  %18 = load %struct.ksz_port*, %struct.ksz_port** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %18, i64 %20
  store %struct.ksz_port* %21, %struct.ksz_port** %8, align 8
  %22 = load %struct.ksz_port*, %struct.ksz_port** %8, align 8
  %23 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @REG_PORT_MIB_CTRL_STAT__4, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ksz_pwrite32(%struct.ksz_device* %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ksz_port*, %struct.ksz_port** %8, align 8
  %33 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ksz_port*, %struct.ksz_port** %8, align 8
  %35 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ksz_pwrite32(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
