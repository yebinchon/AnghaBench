; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_eeprom.c_mt76x02_efuse_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_eeprom.c_mt76x02_efuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_EFUSE_CTRL = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_AIN = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_MODE = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_KICK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_AOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, i32, i32*, i32)* @mt76x02_efuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x02_efuse_read(%struct.mt76x02_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76x02_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %13 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %14 = call i32 @mt76_rr(%struct.mt76x02_dev* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @MT_EFUSE_CTRL_AIN, align 4
  %16 = load i32, i32* @MT_EFUSE_CTRL_MODE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @MT_EFUSE_CTRL_AIN, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, -16
  %24 = call i32 @FIELD_PREP(i32 %21, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @MT_EFUSE_CTRL_MODE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @FIELD_PREP(i32 %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @MT_EFUSE_CTRL_KICK, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %36 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @mt76_wr(%struct.mt76x02_dev* %35, i32 %36, i32 %37)
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %40 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %41 = load i32, i32* @MT_EFUSE_CTRL_KICK, align 4
  %42 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %39, i32 %40, i32 %41, i32 0, i32 1000)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %80

47:                                               ; preds = %4
  %48 = call i32 @udelay(i32 2)
  %49 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %50 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %51 = call i32 @mt76_rr(%struct.mt76x02_dev* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @MT_EFUSE_CTRL_AOUT, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @MT_EFUSE_CTRL_AOUT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @memset(i32* %58, i32 255, i32 16)
  store i32 0, i32* %5, align 4
  br label %80

60:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @MT_EFUSE_DATA(i32 %66)
  %68 = call i32 @mt76_rr(%struct.mt76x02_dev* %65, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 4, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = call i32 @put_unaligned_le32(i32 %69, i32* %74)
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %61

79:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %57, %44
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MT_EFUSE_DATA(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
