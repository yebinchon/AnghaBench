; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.vsc73xx* }
%struct.vsc73xx = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"reset PHY - disallowed\0A\00", align 1
@VSC73XX_BLOCK_MII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"write %04x to reg %02x in phy%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i32, i32)* @vsc73xx_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_phy_write(%struct.dsa_switch* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vsc73xx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 0
  %15 = load %struct.vsc73xx*, %struct.vsc73xx** %14, align 8
  store %struct.vsc73xx* %15, %struct.vsc73xx** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @BIT(i32 15)
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.vsc73xx*, %struct.vsc73xx** %10, align 8
  %25 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_info(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %50

28:                                               ; preds = %18, %4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 21
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.vsc73xx*, %struct.vsc73xx** %10, align 8
  %35 = load i32, i32* @VSC73XX_BLOCK_MII, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @vsc73xx_write(%struct.vsc73xx* %34, i32 %35, i32 0, i32 1, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %50

42:                                               ; preds = %28
  %43 = load %struct.vsc73xx*, %struct.vsc73xx** %10, align 8
  %44 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %42, %40, %23
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @vsc73xx_write(%struct.vsc73xx*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
