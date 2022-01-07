; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.vsc73xx* }
%struct.vsc73xx = type { i32 }

@VSC73XX_BLOCK_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"reading reg %02x from phy%d failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"read reg %02x from phy%d = %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i32)* @vsc73xx_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_phy_read(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vsc73xx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.vsc73xx*, %struct.vsc73xx** %13, align 8
  store %struct.vsc73xx* %14, %struct.vsc73xx** %8, align 8
  %15 = call i32 @BIT(i32 26)
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 21
  %18 = or i32 %15, %17
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %18, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.vsc73xx*, %struct.vsc73xx** %8, align 8
  %23 = load i32, i32* @VSC73XX_BLOCK_MII, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @vsc73xx_write(%struct.vsc73xx* %22, i32 %23, i32 0, i32 1, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %64

30:                                               ; preds = %3
  %31 = call i32 @msleep(i32 2)
  %32 = load %struct.vsc73xx*, %struct.vsc73xx** %8, align 8
  %33 = load i32, i32* @VSC73XX_BLOCK_MII, align 4
  %34 = call i32 @vsc73xx_read(%struct.vsc73xx* %32, i32 %33, i32 0, i32 2, i32* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %64

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @BIT(i32 16)
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.vsc73xx*, %struct.vsc73xx** %8, align 8
  %46 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %39
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 65535
  store i32 %55, i32* %10, align 4
  %56 = load %struct.vsc73xx*, %struct.vsc73xx** %8, align 8
  %57 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %53, %44, %37, %28
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vsc73xx_write(%struct.vsc73xx*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vsc73xx_read(%struct.vsc73xx*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
