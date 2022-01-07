; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_PXC200_muxsel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_PXC200_muxsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PX_I2C_PIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%d: PXC200_muxsel: pic cfg write failed:%d\0A\00", align 1
@PX_CFG_PXC200F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%d: PXC200_muxsel: not PXC200F rc:%d\0A\00", align 1
@PX_PXC200A_CARDID = common dso_local global i64 0, align 8
@BT848_GPIO_OUT_EN = common dso_local global i32 0, align 4
@BT848_GPIO_DATA = common dso_local global i32 0, align 4
@BT848_IFORM_MUXSEL = common dso_local global i32 0, align 4
@BT848_IFORM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%d: setting input channel to:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, i32)* @PXC200_muxsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PXC200_muxsel(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %10, align 1
  %11 = load %struct.bttv*, %struct.bttv** %3, align 8
  %12 = load i32, i32* @PX_I2C_PIC, align 4
  %13 = shl i32 %12, 1
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @bttv_I2CWrite(%struct.bttv* %11, i32 %13, i8 zeroext %15, i8 zeroext %17, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.bttv*, %struct.bttv** %3, align 8
  %23 = getelementptr inbounds %struct.bttv, %struct.bttv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %117

28:                                               ; preds = %2
  %29 = load %struct.bttv*, %struct.bttv** %3, align 8
  %30 = load i32, i32* @PX_I2C_PIC, align 4
  %31 = shl i32 %30, 1
  %32 = call i32 @bttv_I2CRead(%struct.bttv* %29, i32 %31, i32* null)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PX_CFG_PXC200F, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = load %struct.bttv*, %struct.bttv** %3, align 8
  %39 = getelementptr inbounds %struct.bttv, %struct.bttv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  br label %117

44:                                               ; preds = %28
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %6, align 8
  store i32 770, i32* %7, align 4
  %47 = load %struct.bttv*, %struct.bttv** %3, align 8
  %48 = getelementptr inbounds %struct.bttv, %struct.bttv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PX_PXC200A_CARDID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, 384
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 112
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %52, %44
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @BT848_GPIO_OUT_EN, align 4
  %60 = call i32 @btwrite(i32 %58, i32 %59)
  %61 = load i32, i32* @BT848_GPIO_DATA, align 4
  %62 = call i32 @btread(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.bttv*, %struct.bttv** %3, align 8
  %64 = getelementptr inbounds %struct.bttv, %struct.bttv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PX_PXC200A_CARDID, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %57
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, -641
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %6, align 8
  %73 = and i64 %72, 2
  %74 = shl i64 %73, 8
  %75 = or i64 %71, %74
  %76 = load i64, i64* %6, align 8
  %77 = and i64 %76, 1
  %78 = shl i64 %77, 7
  %79 = or i64 %75, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %7, align 4
  br label %90

81:                                               ; preds = %57
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, -769
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %6, align 8
  %86 = and i64 %85, 3
  %87 = shl i64 %86, 8
  %88 = or i64 %84, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %81, %68
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @BT848_GPIO_DATA, align 4
  %93 = call i32 @btwrite(i32 %91, i32 %92)
  %94 = load %struct.bttv*, %struct.bttv** %3, align 8
  %95 = getelementptr inbounds %struct.bttv, %struct.bttv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PX_PXC200A_CARDID, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load i32, i32* @BT848_IFORM_MUXSEL, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* @BT848_IFORM, align 4
  %103 = call i32 @btaor(i32 64, i32 %101, i32 %102)
  br label %109

104:                                              ; preds = %90
  %105 = load i32, i32* @BT848_IFORM_MUXSEL, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* @BT848_IFORM, align 4
  %108 = call i32 @btand(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.bttv*, %struct.bttv** %3, align 8
  %111 = getelementptr inbounds %struct.bttv, %struct.bttv* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %115)
  br label %117

117:                                              ; preds = %109, %37, %21
  ret void
}

declare dso_local i32 @bttv_I2CWrite(%struct.bttv*, i32, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @bttv_I2CRead(%struct.bttv*, i32, i32*) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @btaor(i32, i32, i32) #1

declare dso_local i32 @btand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
