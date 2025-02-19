; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_set_tx_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_set_tx_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.ene_device* }
%struct.ene_device = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"TX: attempt to set tx carrier to %d kHz\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENE_CIRMOD_PRD_MAX = common dso_local global i32 0, align 4
@ENE_CIRMOD_PRD_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"TX: out of range %d-%d kHz carrier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @ene_set_tx_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_set_tx_carrier(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ene_device*, align 8
  %7 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 0
  %10 = load %struct.ene_device*, %struct.ene_device** %9, align 8
  store %struct.ene_device* %10, %struct.ene_device** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 2000000, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ENE_CIRMOD_PRD_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ENE_CIRMOD_PRD_MIN, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @ENE_CIRMOD_PRD_MIN, align 4
  %33 = sdiv i32 2000, %32
  %34 = load i32, i32* @ENE_CIRMOD_PRD_MAX, align 4
  %35 = sdiv i32 2000, %34
  %36 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %27, %18
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ene_device*, %struct.ene_device** %6, align 8
  %42 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ene_device*, %struct.ene_device** %6, align 8
  %44 = call i32 @ene_tx_set_carrier(%struct.ene_device* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %31, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dbg(i8*, i32, ...) #1

declare dso_local i32 @ene_tx_set_carrier(%struct.ene_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
