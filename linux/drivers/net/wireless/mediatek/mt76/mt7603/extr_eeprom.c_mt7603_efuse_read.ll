; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_eeprom.c_mt7603_efuse_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_eeprom.c_mt7603_efuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_EFUSE_CTRL = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_AIN = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_MODE = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_KICK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_AOUT = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*, i32, i32, i32*)* @mt7603_efuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_efuse_read(%struct.mt7603_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7603_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %15 = add nsw i32 %13, %14
  %16 = call i32 @mt76_rr(%struct.mt7603_dev* %12, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @MT_EFUSE_CTRL_AIN, align 4
  %18 = load i32, i32* @MT_EFUSE_CTRL_MODE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @MT_EFUSE_CTRL_AIN, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, -16
  %26 = call i32 @FIELD_PREP(i32 %23, i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @MT_EFUSE_CTRL_KICK, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @mt76_wr(%struct.mt7603_dev* %32, i32 %35, i32 %36)
  %38 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* @MT_EFUSE_CTRL_KICK, align 4
  %43 = call i32 @mt76_poll(%struct.mt7603_dev* %38, i32 %41, i32 %42, i32 0, i32 1000)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %94

48:                                               ; preds = %4
  %49 = call i32 @udelay(i32 2)
  %50 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @mt76_rr(%struct.mt7603_dev* %50, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @MT_EFUSE_CTRL_AOUT, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @MT_EFUSE_CTRL_AOUT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @MT_EFUSE_CTRL_VALID, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @WARN_ON_ONCE(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60, %48
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @memset(i32* %70, i32 255, i32 16)
  store i32 0, i32* %5, align 4
  br label %94

72:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %90, %72
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @MT_EFUSE_RDATA(i32 %79)
  %81 = add nsw i32 %78, %80
  %82 = call i32 @mt76_rr(%struct.mt7603_dev* %77, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 4, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = call i32 @put_unaligned_le32(i32 %83, i32* %88)
  br label %90

90:                                               ; preds = %76
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %73

93:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %69, %45
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_poll(%struct.mt7603_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MT_EFUSE_RDATA(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
