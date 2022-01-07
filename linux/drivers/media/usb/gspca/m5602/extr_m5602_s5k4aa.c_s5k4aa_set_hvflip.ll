; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_set_hvflip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_set_hvflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@S5K4AA_PAGE_MAP_2 = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Set hvflip %d %d\0A\00", align 1
@S5K4AA_PAGE_MAP = common dso_local global i32 0, align 4
@S5K4AA_READ_MODE = common dso_local global i32 0, align 4
@s5k4aa_vflip_dmi_table = common dso_local global i32 0, align 4
@S5K4AA_COLSTART_LO = common dso_local global i32 0, align 4
@S5K4AA_ROWSTART_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @s5k4aa_set_hvflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4aa_set_hvflip(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %4, align 8
  %11 = load i32, i32* @S5K4AA_PAGE_MAP_2, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sd*, %struct.sd** %4, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sd*, %struct.sd** %4, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = load i32, i32* @D_CONF, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @gspca_dbg(%struct.gspca_dev* %22, i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.sd*, %struct.sd** %4, align 8
  %28 = load i32, i32* @S5K4AA_PAGE_MAP, align 4
  %29 = call i32 @m5602_write_sensor(%struct.sd* %27, i32 %28, i32* %5, i32 1)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %122

34:                                               ; preds = %1
  %35 = load %struct.sd*, %struct.sd** %4, align 8
  %36 = load i32, i32* @S5K4AA_READ_MODE, align 4
  %37 = call i32 @m5602_read_sensor(%struct.sd* %35, i32 %36, i32* %5, i32 1)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %122

42:                                               ; preds = %34
  %43 = load i32, i32* @s5k4aa_vflip_dmi_table, align 4
  %44 = call i64 @dmi_check_system(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %46, %42
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 127
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %58, 7
  %60 = or i32 %57, %59
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 %61, 6
  %63 = or i32 %60, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.sd*, %struct.sd** %4, align 8
  %65 = load i32, i32* @S5K4AA_READ_MODE, align 4
  %66 = call i32 @m5602_write_sensor(%struct.sd* %64, i32 %65, i32* %5, i32 1)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %122

71:                                               ; preds = %55
  %72 = load %struct.sd*, %struct.sd** %4, align 8
  %73 = load i32, i32* @S5K4AA_COLSTART_LO, align 4
  %74 = call i32 @m5602_read_sensor(%struct.sd* %72, i32 %73, i32* %5, i32 1)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %122

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 254
  store i32 %84, i32* %5, align 4
  br label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.sd*, %struct.sd** %4, align 8
  %90 = load i32, i32* @S5K4AA_COLSTART_LO, align 4
  %91 = call i32 @m5602_write_sensor(%struct.sd* %89, i32 %90, i32* %5, i32 1)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %122

96:                                               ; preds = %88
  %97 = load %struct.sd*, %struct.sd** %4, align 8
  %98 = load i32, i32* @S5K4AA_ROWSTART_LO, align 4
  %99 = call i32 @m5602_read_sensor(%struct.sd* %97, i32 %98, i32* %5, i32 1)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %122

104:                                              ; preds = %96
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, 254
  store i32 %109, i32* %5, align 4
  br label %113

110:                                              ; preds = %104
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.sd*, %struct.sd** %4, align 8
  %115 = load i32, i32* @S5K4AA_ROWSTART_LO, align 4
  %116 = call i32 @m5602_write_sensor(%struct.sd* %114, i32 %115, i32* %5, i32 1)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %122

121:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %119, %102, %94, %77, %69, %40, %32
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i64 @dmi_check_system(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
