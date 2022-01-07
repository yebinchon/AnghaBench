; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_set_tx_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_set_tx_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.ene_device* }
%struct.ene_device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"TX: attempt to set transmitter mask %02x\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"TX: invalid mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @ene_set_tx_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_set_tx_mask(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ene_device*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %8 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %7, i32 0, i32 0
  %9 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  store %struct.ene_device* %9, %struct.ene_device** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, -4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %2
  %19 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %26

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ene_device*, %struct.ene_device** %6, align 8
  %23 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ene_device*, %struct.ene_device** %6, align 8
  %25 = call i32 @ene_tx_set_transmitters(%struct.ene_device* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @ene_tx_set_transmitters(%struct.ene_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
