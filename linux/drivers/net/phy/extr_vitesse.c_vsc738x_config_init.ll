; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_vitesse.c_vsc738x_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_vitesse.c_vsc738x_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_PHYSID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc738x_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc738x_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = call i32 @phy_write(%struct.phy_device* %4, i32 31, i32 10800)
  %6 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %7 = call i32 @phy_modify(%struct.phy_device* %6, i32 8, i32 512, i32 512)
  %8 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %9 = call i32 @phy_write(%struct.phy_device* %8, i32 31, i32 21173)
  %10 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %11 = call i32 @phy_write(%struct.phy_device* %10, i32 16, i32 46730)
  %12 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %13 = call i32 @phy_modify(%struct.phy_device* %12, i32 18, i32 65287, i32 3)
  %14 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %15 = call i32 @phy_modify(%struct.phy_device* %14, i32 17, i32 255, i32 162)
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = call i32 @phy_write(%struct.phy_device* %16, i32 16, i32 38538)
  %18 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %19 = call i32 @phy_write(%struct.phy_device* %18, i32 31, i32 10800)
  %20 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %21 = call i32 @phy_modify(%struct.phy_device* %20, i32 8, i32 512, i32 0)
  %22 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %23 = call i32 @phy_write(%struct.phy_device* %22, i32 31, i32 0)
  %24 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %25 = load i32, i32* @MII_PHYSID2, align 4
  %26 = call i32 @phy_read(%struct.phy_device* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 15
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %1
  %32 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %33 = call i32 @phy_write(%struct.phy_device* %32, i32 31, i32 10800)
  %34 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %35 = call i32 @phy_modify(%struct.phy_device* %34, i32 8, i32 512, i32 512)
  %36 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %37 = call i32 @phy_write(%struct.phy_device* %36, i32 31, i32 21173)
  %38 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %39 = call i32 @phy_write(%struct.phy_device* %38, i32 18, i32 0)
  %40 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %41 = call i32 @phy_write(%struct.phy_device* %40, i32 17, i32 1673)
  %42 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %43 = call i32 @phy_write(%struct.phy_device* %42, i32 16, i32 36754)
  %44 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %45 = call i32 @phy_write(%struct.phy_device* %44, i32 31, i32 21173)
  %46 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %47 = call i32 @phy_write(%struct.phy_device* %46, i32 18, i32 0)
  %48 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %49 = call i32 @phy_write(%struct.phy_device* %48, i32 17, i32 3637)
  %50 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %51 = call i32 @phy_write(%struct.phy_device* %50, i32 16, i32 38790)
  %52 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %53 = call i32 @phy_write(%struct.phy_device* %52, i32 31, i32 10800)
  %54 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %55 = call i32 @phy_modify(%struct.phy_device* %54, i32 8, i32 512, i32 0)
  %56 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %57 = call i32 @phy_write(%struct.phy_device* %56, i32 23, i32 65408)
  %58 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %59 = call i32 @phy_write(%struct.phy_device* %58, i32 23, i32 0)
  br label %60

60:                                               ; preds = %31, %1
  %61 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %62 = call i32 @phy_write(%struct.phy_device* %61, i32 31, i32 0)
  %63 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %64 = call i32 @phy_write(%struct.phy_device* %63, i32 18, i32 72)
  %65 = load i32, i32* %3, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %69 = call i32 @phy_write(%struct.phy_device* %68, i32 31, i32 10800)
  %70 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %71 = call i32 @phy_write(%struct.phy_device* %70, i32 20, i32 26112)
  %72 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %73 = call i32 @phy_write(%struct.phy_device* %72, i32 31, i32 0)
  %74 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %75 = call i32 @phy_write(%struct.phy_device* %74, i32 24, i32 41550)
  br label %89

76:                                               ; preds = %60
  %77 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %78 = call i32 @phy_write(%struct.phy_device* %77, i32 31, i32 10800)
  %79 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %80 = call i32 @phy_modify(%struct.phy_device* %79, i32 22, i32 4032, i32 576)
  %81 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %82 = call i32 @phy_modify(%struct.phy_device* %81, i32 20, i32 24576, i32 16384)
  %83 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %84 = call i32 @phy_write(%struct.phy_device* %83, i32 31, i32 1)
  %85 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %86 = call i32 @phy_modify(%struct.phy_device* %85, i32 20, i32 57344, i32 24576)
  %87 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %88 = call i32 @phy_write(%struct.phy_device* %87, i32 31, i32 0)
  br label %89

89:                                               ; preds = %76, %67
  %90 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %91 = call i32 @vsc73xx_config_init(%struct.phy_device* %90)
  ret i32 0
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @vsc73xx_config_init(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
