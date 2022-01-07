; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-audio-hook.c_winview_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-audio-hook.c_winview_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }

@PT2254_DBS_IN_2 = common dso_local global i32 0, align 4
@PT2254_DBS_IN_10 = common dso_local global i32 0, align 4
@PT2254_L_CHANNEL = common dso_local global i32 0, align 4
@PT2254_R_CHANNEL = common dso_local global i32 0, align 4
@WINVIEW_PT2254_CLK = common dso_local global i32 0, align 4
@WINVIEW_PT2254_DATA = common dso_local global i32 0, align 4
@WINVIEW_PT2254_STROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @winview_volume(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 11
  %11 = sub nsw i32 32, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @PT2254_DBS_IN_2, align 4
  %13 = load i32, i32* %7, align 4
  %14 = srem i32 %13, 5
  %15 = ashr i32 %12, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @PT2254_DBS_IN_10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 5
  %19 = ashr i32 %16, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @PT2254_L_CHANNEL, align 4
  %23 = load i32, i32* @PT2254_R_CHANNEL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = call i32 (...) @gpio_read()
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @WINVIEW_PT2254_CLK, align 4
  %29 = load i32, i32* @WINVIEW_PT2254_DATA, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @WINVIEW_PT2254_STROBE, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  store i32 17, i32* %6, align 4
  br label %36

36:                                               ; preds = %70, %2
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @WINVIEW_PT2254_DATA, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %54

49:                                               ; preds = %39
  %50 = load i32, i32* @WINVIEW_PT2254_DATA, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @gpio_write(i32 %55)
  %57 = call i32 @udelay(i32 5)
  %58 = load i32, i32* @WINVIEW_PT2254_CLK, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @gpio_write(i32 %61)
  %63 = call i32 @udelay(i32 5)
  %64 = load i32, i32* @WINVIEW_PT2254_CLK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @gpio_write(i32 %68)
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %6, align 4
  br label %36

73:                                               ; preds = %36
  %74 = load i32, i32* @WINVIEW_PT2254_STROBE, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @WINVIEW_PT2254_DATA, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @gpio_write(i32 %81)
  %83 = call i32 @udelay(i32 10)
  %84 = load i32, i32* @WINVIEW_PT2254_STROBE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @gpio_write(i32 %88)
  ret void
}

declare dso_local i32 @gpio_read(...) #1

declare dso_local i32 @gpio_write(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
