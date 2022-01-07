; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2060.c_mt2060_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2060.c_mt2060_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.mt2060_priv* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.mt2060_priv = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@REG_VGAG = common dso_local global i32 0, align 4
@REG_MISC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mt2060_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2060_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.mt2060_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  %7 = load %struct.mt2060_priv*, %struct.mt2060_priv** %6, align 8
  store %struct.mt2060_priv* %7, %struct.mt2060_priv** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %16, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %19 = bitcast %struct.dvb_frontend* %18 to %struct.dvb_frontend.0*
  %20 = call i32 %17(%struct.dvb_frontend.0* %19, i32 1)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.mt2060_priv*, %struct.mt2060_priv** %3, align 8
  %23 = load i32, i32* @REG_VGAG, align 4
  %24 = load %struct.mt2060_priv*, %struct.mt2060_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 6
  %30 = or i32 %29, 48
  %31 = call i32 @mt2060_writereg(%struct.mt2060_priv* %22, i32 %23, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %45

35:                                               ; preds = %21
  %36 = load %struct.mt2060_priv*, %struct.mt2060_priv** %3, align 8
  %37 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.mt2060_priv*, %struct.mt2060_priv** %3, align 8
  %42 = load i32, i32* @REG_MISC_CTRL, align 4
  %43 = call i32 @mt2060_writereg(%struct.mt2060_priv* %41, i32 %42, i32 232)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %34
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %54, align 8
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %57 = bitcast %struct.dvb_frontend* %56 to %struct.dvb_frontend.0*
  %58 = call i32 %55(%struct.dvb_frontend.0* %57, i32 0)
  br label %59

59:                                               ; preds = %51, %45
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mt2060_writereg(%struct.mt2060_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
