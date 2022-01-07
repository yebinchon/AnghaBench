; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_lockless_flash_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_lockless_flash_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLCNIC_FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Illegal addr = 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_DIRECT_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_lockless_flash_read32(%struct.qlcnic_adapter* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @QLCNIC_FLASH_SECTOR_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %125

36:                                               ; preds = %4
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %38 = load i32, i32* @QLC_83XX_FLASH_DIRECT_WINDOW, align 4
  %39 = load i32, i32* %13, align 4
  %40 = and i32 %39, -65536
  %41 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %37, i32 %38, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = add i64 %43, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @QLCNIC_FLASH_SECTOR_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %95

53:                                               ; preds = %36
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %91, %53
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @QLC_83XX_FLASH_DIRECT_DATA(i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @QLCRD32(%struct.qlcnic_adapter* %61, i32 %62, i32* %18)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %18, align 4
  store i32 %69, i32* %5, align 4
  br label %125

70:                                               ; preds = %58
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32* %75, i32** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 4
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @QLCNIC_FLASH_SECTOR_SIZE, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %70
  %85 = load i32, i32* @QLC_83XX_FLASH_DIRECT_WINDOW, align 4
  store i32 %85, i32* %16, align 4
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %86, i32 %87, i32 %88)
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %84, %70
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  br label %54

94:                                               ; preds = %54
  br label %124

95:                                               ; preds = %36
  store i32 0, i32* %17, align 4
  br label %96

96:                                               ; preds = %120, %95
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @QLC_83XX_FLASH_DIRECT_DATA(i32 %101)
  store i32 %102, i32* %15, align 4
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @QLCRD32(%struct.qlcnic_adapter* %103, i32 %104, i32* %18)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* %18, align 4
  store i32 %111, i32* %5, align 4
  br label %125

112:                                              ; preds = %100
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32*, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32* %117, i32** %8, align 8
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  br label %96

123:                                              ; preds = %96
  br label %124

124:                                              ; preds = %123, %94
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %110, %68, %27
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLC_83XX_FLASH_DIRECT_DATA(i32) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
