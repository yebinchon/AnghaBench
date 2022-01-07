; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_tea575x_set_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_tea575x_set_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { %struct.bttv* }
%struct.bttv = type { i32, i32, i32, %struct.bttv_tea575x_gpio }
%struct.bttv_tea575x_gpio = type { i32, i32, i32 }

@TEA575X_DATA = common dso_local global i32 0, align 4
@TEA575X_CLK = common dso_local global i32 0, align 4
@TEA575X_WREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_tea575x*, i32)* @bttv_tea575x_set_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_tea575x_set_pins(%struct.snd_tea575x* %0, i32 %1) #0 {
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
  %12 = getelementptr inbounds %struct.bttv, %struct.bttv* %11, i32 0, i32 3
  %13 = bitcast %struct.bttv_tea575x_gpio* %6 to i8*
  %14 = bitcast %struct.bttv_tea575x_gpio* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TEA575X_DATA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TEA575X_CLK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  br label %37

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @TEA575X_WREN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  br label %50

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ 0, %49 ]
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 1, %55
  %57 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 1, %58
  %60 = or i32 %56, %59
  %61 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %6, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %60, %63
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @gpio_bits(i32 %64, i32 %65)
  %67 = load %struct.bttv*, %struct.bttv** %5, align 8
  %68 = getelementptr inbounds %struct.bttv, %struct.bttv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %50
  %72 = load %struct.bttv*, %struct.bttv** %5, align 8
  %73 = getelementptr inbounds %struct.bttv, %struct.bttv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bttv*, %struct.bttv** %5, align 8
  %76 = getelementptr inbounds %struct.bttv, %struct.bttv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %74, %77
  %79 = call i32 @gpio_bits(i32 %78, i32 0)
  %80 = call i32 @udelay(i32 5)
  %81 = load %struct.bttv*, %struct.bttv** %5, align 8
  %82 = getelementptr inbounds %struct.bttv, %struct.bttv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bttv*, %struct.bttv** %5, align 8
  %85 = getelementptr inbounds %struct.bttv, %struct.bttv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  %88 = load %struct.bttv*, %struct.bttv** %5, align 8
  %89 = getelementptr inbounds %struct.bttv, %struct.bttv* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %87, %90
  %92 = load %struct.bttv*, %struct.bttv** %5, align 8
  %93 = getelementptr inbounds %struct.bttv, %struct.bttv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bttv*, %struct.bttv** %5, align 8
  %96 = getelementptr inbounds %struct.bttv, %struct.bttv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %94, %97
  %99 = load %struct.bttv*, %struct.bttv** %5, align 8
  %100 = getelementptr inbounds %struct.bttv, %struct.bttv* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %98, %101
  %103 = call i32 @gpio_bits(i32 %91, i32 %102)
  br label %104

104:                                              ; preds = %71, %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gpio_bits(i32, i32) #2

declare dso_local i32 @udelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
