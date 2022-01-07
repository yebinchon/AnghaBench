; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_tea575x_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_tea575x_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { %struct.bttv* }
%struct.bttv = type { %struct.bttv_tea575x_gpio }
%struct.bttv_tea575x_gpio = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_tea575x*, i32)* @bttv_tea575x_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_tea575x_set_direction(%struct.snd_tea575x* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_tea575x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.bttv_tea575x_gpio, align 4
  %7 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %9 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %8, i32 0, i32 0
  %10 = load %struct.bttv*, %struct.bttv** %9, align 8
  store %struct.bttv* %10, %struct.bttv** %5, align 8
  %11 = load %struct.bttv*, %struct.bttv** %5, align 8
  %12 = getelementptr inbounds %struct.bttv, %struct.bttv* %11, i32 0, i32 0
  %13 = bitcast %struct.bttv_tea575x_gpio* %6 to i8*
  %14 = bitcast %struct.bttv_tea575x_gpio* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = or i32 %17, %20
  %22 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %21, %24
  %26 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %36, %39
  %41 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %40, %43
  %45 = call i32 @gpio_inout(i32 %33, i32 %44)
  br label %56

46:                                               ; preds = %2
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 1, %52
  %54 = or i32 %50, %53
  %55 = call i32 @gpio_inout(i32 %47, i32 %54)
  br label %56

56:                                               ; preds = %46, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gpio_inout(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
