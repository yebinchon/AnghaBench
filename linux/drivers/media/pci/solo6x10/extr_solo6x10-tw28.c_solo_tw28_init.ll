; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_solo_tw28_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_solo_tw28_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SOLO_I2C_TW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Could not initialize any techwell chips\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_tw28_init(%struct.solo_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  %6 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %7 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %67, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %11 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %8
  %16 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %17 = load i32, i32* @SOLO_I2C_TW, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @TW_CHIP_OFFSET_ADDR(i32 %18)
  %20 = call i32 @solo_i2c_readbyte(%struct.solo_dev* %16, i32 %17, i32 %19, i32 255)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 3
  switch i32 %22, label %45 [
    i32 24, label %23
    i32 12, label %34
    i32 13, label %34
  ]

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %27 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %31 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %66

34:                                               ; preds = %15, %15
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 1, %35
  %37 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %38 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %42 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %66

45:                                               ; preds = %15
  %46 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %47 = load i32, i32* @SOLO_I2C_TW, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @TW_CHIP_OFFSET_ADDR(i32 %48)
  %50 = call i32 @solo_i2c_readbyte(%struct.solo_dev* %46, i32 %47, i32 %49, i32 89)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 3
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %65

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 1, %55
  %57 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %58 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %62 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %54, %45
  br label %66

66:                                               ; preds = %65, %34, %23
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %8

70:                                               ; preds = %8
  %71 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %72 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %75 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 2
  %78 = icmp ne i32 %73, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %70
  %80 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %81 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %80, i32 0, i32 5
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %133

87:                                               ; preds = %70
  %88 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %89 = call i32 @saa712x_setup(%struct.solo_dev* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %129, %87
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %93 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %90
  %97 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %98 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @TW_CHIP_OFFSET_ADDR(i32 %106)
  %108 = call i32 @tw2865_setup(%struct.solo_dev* %105, i32 %107)
  br label %128

109:                                              ; preds = %96
  %110 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %111 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %4, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @TW_CHIP_OFFSET_ADDR(i32 %119)
  %121 = call i32 @tw2864_setup(%struct.solo_dev* %118, i32 %120)
  br label %127

122:                                              ; preds = %109
  %123 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @TW_CHIP_OFFSET_ADDR(i32 %124)
  %126 = call i32 @tw2815_setup(%struct.solo_dev* %123, i32 %125)
  br label %127

127:                                              ; preds = %122, %117
  br label %128

128:                                              ; preds = %127, %104
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %90

132:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %79
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @solo_i2c_readbyte(%struct.solo_dev*, i32, i32, i32) #1

declare dso_local i32 @TW_CHIP_OFFSET_ADDR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @saa712x_setup(%struct.solo_dev*) #1

declare dso_local i32 @tw2865_setup(%struct.solo_dev*, i32) #1

declare dso_local i32 @tw2864_setup(%struct.solo_dev*, i32) #1

declare dso_local i32 @tw2815_setup(%struct.solo_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
