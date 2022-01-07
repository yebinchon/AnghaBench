; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_rx_sense_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_rx_sense_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i32, i64 }
%struct.ir_raw_event = type { i32, i32, i32 }

@ENE_CIRCAR_PRD = common dso_local global i32 0, align 4
@ENE_CIRCAR_HPRD = common dso_local global i32 0, align 4
@ENE_CIRCAR_PRD_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RX: hardware carrier period = %02x\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"RX: hardware carrier pulse period = %02x\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"RX: sensed carrier = %d Hz, duty cycle %d%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_rx_sense_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_rx_sense_carrier(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ir_raw_event, align 4
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %8 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %9 = load i32, i32* @ENE_CIRCAR_PRD, align 4
  %10 = call i32 @ene_read_reg(%struct.ene_device* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %12 = load i32, i32* @ENE_CIRCAR_HPRD, align 4
  %13 = call i32 @ene_read_reg(%struct.ene_device* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ENE_CIRCAR_PRD_VALID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %55

19:                                               ; preds = %1
  %20 = load i32, i32* @ENE_CIRCAR_PRD_VALID, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %55

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 2000000, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 100
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %42 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %7, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %7, i32 0, i32 1
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %7, i32 0, i32 2
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %49, align 4
  %51 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %52 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ir_raw_event_store(i32 %53, %struct.ir_raw_event* %7)
  br label %55

55:                                               ; preds = %18, %26, %45, %27
  ret void
}

declare dso_local i32 @ene_read_reg(%struct.ene_device*, i32) #1

declare dso_local i32 @dbg(i8*, i32, ...) #1

declare dso_local i32 @ir_raw_event_store(i32, %struct.ir_raw_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
