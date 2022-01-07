; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_tea575x_get_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_tea575x_get_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { %struct.bttv* }
%struct.bttv = type { i32, i32, i32, %struct.bttv_tea575x_gpio }
%struct.bttv_tea575x_gpio = type { i32, i32 }

@TEA575X_DATA = common dso_local global i32 0, align 4
@TEA575X_MOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tea575x*)* @bttv_tea575x_get_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_tea575x_get_pins(%struct.snd_tea575x* %0) #0 {
  %2 = alloca %struct.snd_tea575x*, align 8
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca %struct.bttv_tea575x_gpio, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %2, align 8
  %7 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %8 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %7, i32 0, i32 0
  %9 = load %struct.bttv*, %struct.bttv** %8, align 8
  store %struct.bttv* %9, %struct.bttv** %3, align 8
  %10 = load %struct.bttv*, %struct.bttv** %3, align 8
  %11 = getelementptr inbounds %struct.bttv, %struct.bttv* %10, i32 0, i32 3
  %12 = bitcast %struct.bttv_tea575x_gpio* %4 to i8*
  %13 = bitcast %struct.bttv_tea575x_gpio* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %14 = load %struct.bttv*, %struct.bttv** %3, align 8
  %15 = getelementptr inbounds %struct.bttv, %struct.bttv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.bttv*, %struct.bttv** %3, align 8
  %20 = getelementptr inbounds %struct.bttv, %struct.bttv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bttv*, %struct.bttv** %3, align 8
  %23 = getelementptr inbounds %struct.bttv, %struct.bttv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = call i32 @gpio_bits(i32 %25, i32 0)
  %27 = call i32 @udelay(i32 5)
  br label %28

28:                                               ; preds = %18, %1
  %29 = call i32 (...) @gpio_read()
  store i32 %29, i32* %6, align 4
  %30 = load %struct.bttv*, %struct.bttv** %3, align 8
  %31 = getelementptr inbounds %struct.bttv, %struct.bttv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load %struct.bttv*, %struct.bttv** %3, align 8
  %36 = getelementptr inbounds %struct.bttv, %struct.bttv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bttv*, %struct.bttv** %3, align 8
  %39 = getelementptr inbounds %struct.bttv, %struct.bttv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  %42 = load %struct.bttv*, %struct.bttv** %3, align 8
  %43 = getelementptr inbounds %struct.bttv, %struct.bttv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  %46 = load %struct.bttv*, %struct.bttv** %3, align 8
  %47 = getelementptr inbounds %struct.bttv, %struct.bttv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bttv*, %struct.bttv** %3, align 8
  %50 = getelementptr inbounds %struct.bttv, %struct.bttv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = load %struct.bttv*, %struct.bttv** %3, align 8
  %54 = getelementptr inbounds %struct.bttv, %struct.bttv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = call i32 @gpio_bits(i32 %45, i32 %56)
  br label %58

58:                                               ; preds = %34, %28
  %59 = load i32, i32* %6, align 4
  %60 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %4, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @TEA575X_DATA, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load i32, i32* %6, align 4
  %71 = getelementptr inbounds %struct.bttv_tea575x_gpio, %struct.bttv_tea575x_gpio* %4, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @TEA575X_MOST, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gpio_bits(i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @gpio_read(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
