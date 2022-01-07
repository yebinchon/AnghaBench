; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_set_model.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_set_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.em28xx = type { i64, %struct.TYPE_2__, i32, i32, i32 }

@em28xx_boards = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*)* @em28xx_set_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_set_model(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %3 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %4 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @em28xx_boards, align 8
  %6 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %7 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %8
  %10 = bitcast %struct.TYPE_2__* %4 to i8*
  %11 = bitcast %struct.TYPE_2__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 4 %11, i64 12, i1 false)
  %12 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %17 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %25 = call i32 @em28xx_set_xclk_i2c_speed(%struct.em28xx* %24)
  %26 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %31 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @em28xx_set_xclk_i2c_speed(%struct.em28xx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
