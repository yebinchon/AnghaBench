; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc73xx = type { i32, i32 }

@VSC73XX_BLOCK_SYSTEM = common dso_local global i32 0, align 4
@VSC73XX_ICPU_MBOX_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to read mailbox (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"chip seems dead.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@VSC73XX_CHIPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to read chip id (%d)\0A\00", align 1
@VSC73XX_CHIPID_ID_SHIFT = common dso_local global i32 0, align 4
@VSC73XX_CHIPID_ID_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"unsupported chip, id=%04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VSC73XX_CHIPID_REV_SHIFT = common dso_local global i32 0, align 4
@VSC73XX_CHIPID_REV_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"VSC%04X (rev: %d) switch found\0A\00", align 1
@VSC73XX_ICPU_CTRL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"unable to read iCPU control\0A\00", align 1
@VSC73XX_ICPU_CTRL_ICPU_PI_EN = common dso_local global i32 0, align 4
@VSC73XX_ICPU_CTRL_BOOT_EN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"iCPU enabled boots from SI, has external memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"no idea how to deal with this\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"iCPU enabled boots from PI/SI, no external memory\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"iCPU enabled, boots from PI external memory\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"iCPU disabled, no external memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsc73xx*)* @vsc73xx_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_detect(%struct.vsc73xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsc73xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vsc73xx* %0, %struct.vsc73xx** %3, align 8
  %10 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %11 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %12 = load i32, i32* @VSC73XX_ICPU_MBOX_VAL, align 4
  %13 = call i32 @vsc73xx_read(%struct.vsc73xx* %10, i32 %11, i32 0, i32 %12, i32* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %18 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %156

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %28 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_info(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %156

33:                                               ; preds = %23
  %34 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %35 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %36 = load i32, i32* @VSC73XX_CHIPID, align 4
  %37 = call i32 @vsc73xx_read(%struct.vsc73xx* %34, i32 %35, i32 0, i32 %36, i32* %6)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %42 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %156

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @VSC73XX_CHIPID_ID_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* @VSC73XX_CHIPID_ID_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %55 [
    i32 131, label %54
    i32 130, label %54
    i32 129, label %54
    i32 128, label %54
  ]

54:                                               ; preds = %47, %47, %47, %47
  br label %63

55:                                               ; preds = %47
  %56 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %57 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %156

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %66 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @VSC73XX_CHIPID_REV_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = load i32, i32* @VSC73XX_CHIPID_REV_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %73 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (i32, i8*, ...) @dev_info(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %79 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %80 = load i32, i32* @VSC73XX_ICPU_CTRL, align 4
  %81 = call i32 @vsc73xx_read(%struct.vsc73xx* %78, i32 %79, i32 0, i32 %80, i32* %6)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %63
  %85 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %86 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %156

90:                                               ; preds = %63
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @VSC73XX_ICPU_CTRL_ICPU_PI_EN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @VSC73XX_ICPU_CTRL_BOOT_EN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %90
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %112 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %115 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %116 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %156

121:                                              ; preds = %107, %90
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %124
  %128 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %129 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %130, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %132 = load i32, i32* @EAGAIN, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %156

134:                                              ; preds = %124, %121
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %142 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i8*, ...) @dev_err(i32 %143, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %145 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %146 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32, i8*, ...) @dev_err(i32 %147, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i32, i32* @ENODEV, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %156

151:                                              ; preds = %137, %134
  %152 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %153 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, ...) @dev_info(i32 %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %151, %140, %127, %110, %84, %55, %40, %26, %16
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @vsc73xx_read(%struct.vsc73xx*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
